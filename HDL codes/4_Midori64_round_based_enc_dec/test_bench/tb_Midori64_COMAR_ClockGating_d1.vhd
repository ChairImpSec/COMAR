--
-- -----------------------------------------------------------------
-- COMPANY : Ruhr University Bochum
-- AUTHOR  : AUTHOR  : David Knichel david.knichel@rub.de and Amir Moradi amir.moradi@rub.de 
-- DOCUMENT: [Composable Gadgets with Reused Fresh Masks] https://doi.org/10.46586/tches.v2022.i3.114-140
-- -----------------------------------------------------------------
--
-- Copyright (c) 2022, David Knichel and  Amir Moradi
--
-- All rights reserved.
--
-- THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
-- ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
-- WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
-- DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTERS BE LIABLE FOR ANY
-- DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
-- (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
-- LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
-- ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
-- (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
-- SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
--
-- Please see LICENSE and README for license and further instructions.
--

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
USE ieee.math_real.ALL;

ENTITY tb_Midori64_COMAR_ClockGating_d1 IS
END tb_Midori64_COMAR_ClockGating_d1;
 
ARCHITECTURE behavior OF tb_Midori64_COMAR_ClockGating_d1 IS 
 
	constant fresh_size   : integer := 6;
	constant AddedLatency : integer := 16;


   --Inputs
	constant fresh_byte_size : integer := integer(ceil(real(fresh_size)/real(8)));

   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal enc_dec : std_logic := '0';
   signal DataIn_s0 : std_logic_vector(63 downto 0) := (others => '0');
   signal DataIn_s1 : std_logic_vector(63 downto 0) := (others => '0');
   signal key_s0 : std_logic_vector(127 downto 0) := (others => '0');
   signal key_s1 : std_logic_vector(127 downto 0) := (others => '0');
	
   signal DataIn : std_logic_vector(63 downto 0) := (others => '0');
   signal key : std_logic_vector(127 downto 0) := (others => '0');

 	--Outputs
   signal DataOut_s0 : std_logic_vector(63 downto 0);
   signal DataOut_s1 : std_logic_vector(63 downto 0);
   signal Fresh     		: std_logic_vector(8*fresh_byte_size-1 downto 0) := (others => '0');
	signal Synch         : std_logic;

   signal Mask_P : std_logic_vector(63 downto 0) := (others => '0');
   signal Mask_K : std_logic_vector(127 downto 0) := (others => '0');


   signal DataOut : std_logic_vector(63 downto 0);
   signal done : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;

    constant mask_byte_size : integer := fresh_byte_size+8+16;
 
    type INT_ARRAY  is array (integer range <>) of integer;
    type REAL_ARRAY is array (integer range <>) of real;
    type BYTE_ARRAY is array (integer range <>) of std_logic_vector(7 downto 0);
    
    signal rr: INT_ARRAY (mask_byte_size-1 downto 0);
    signal mm: BYTE_ARRAY(mask_byte_size-1 downto 0);
    
BEGIN
 
    maskgen: process
         variable seed1, seed2: positive;        -- seed values for random generator
         variable rand: REAL_ARRAY(mask_byte_size-1 downto 0); -- random real-number value in range 0 to 1.0  
         variable range_of_rand : real := 256.0; -- the range of random values created will be 0 to +1600.
    begin
        
        FOR i in 0 to mask_byte_size-1 loop
            uniform(seed1, seed2, rand(i));   -- generate random number
            rr(i) <= integer(trunc(rand(i)*range_of_rand));  -- rescale to 0..1000, convert integer part 
            mm(i) <= std_logic_vector(to_unsigned(rr(i), mm(i)'length));
        end loop;
		  
		  wait for clk_period;
		  
    end process;

    ---------

	 gen_1:
    FOR i in 0 to fresh_byte_size-1 GENERATE
        Fresh(8*(i+1)-1 downto 8*i) <= mm(i);
    end GENERATE;
    
	 gen_2:
    for i in 0 to 7 GENERATE
        Mask_P(8*(i+1)-1 downto 8*i) <= mm(fresh_byte_size+i);
    end GENERATE;

	 gen_3:
    for i in 0 to 15 GENERATE
        Mask_K(8*(i+1)-1 downto 8*i) <= mm(fresh_byte_size+8+i);
    end GENERATE;
 
   uut: entity work.Midori64_COMAR_ClockGating_d1 PORT MAP (
          clk => clk,
          reset => reset,
          enc_dec => enc_dec,
          DataIn_s0 => DataIn_s0,
          DataIn_s1 => DataIn_s1,
          key_s0 => key_s0,
          key_s1 => key_s1,
			 Fresh  => Fresh(fresh_size-1 downto 0),
			 Synch  => Synch,
          DataOut_s0 => DataOut_s0,
          DataOut_s1 => DataOut_s1,
          done => done
        );

	DataIn_s0 <= DataIn XOR Mask_P;
	DataIn_s1 <= Mask_P;
	
	key_s0 <= key XOR Mask_K;
	key_s1 <= Mask_K;

   DataOut <= DataOut_s0 XOR DataOut_s1;

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for clk_period;	
		enc_dec <= '0';
		reset	<= '1';
		DataIn 	<= x"42c20fd3b586879e";
		key 	<= x"687ded3b3c85b3f35b1009863e2a8cbf";
      
		wait for clk_period*(AddedLatency + 1);
	
		DataIn 	<= (others => '0');
		reset	<= '0';
		wait for clk_period*(AddedLatency + 1);

		wait until rising_edge(clk) and (done = '1'); 
		wait for clk_period*(AddedLatency);
		
		if (DataOut = x"66bcdc6270d901cd") then
			report "---------- Passed ----------";
		else
			report "---------- Failed ----------";
		end if;	

      wait for clk_period*20.5;	
		enc_dec <= '1';
		reset	<= '1';
		DataIn 	<= x"66bcdc6270d901cd";
		key 	<= x"687ded3b3c85b3f35b1009863e2a8cbf";
      
		wait for clk_period*(AddedLatency + 1);
	
		DataIn 	<= (others => '0');
		reset	<= '0';
		wait for clk_period*(AddedLatency + 1);

		wait until rising_edge(clk) and (done = '1'); 
		wait for clk_period*(AddedLatency);
		
		if (DataOut = x"42c20fd3b586879e") then
			report "---------- Passed ----------";
		else
			report "---------- Failed ----------";
		end if;	


      wait;
   end process;

END;
