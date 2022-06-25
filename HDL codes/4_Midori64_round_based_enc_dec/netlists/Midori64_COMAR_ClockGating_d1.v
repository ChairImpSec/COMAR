//
// -----------------------------------------------------------------
// COMPANY : Ruhr University Bochum
// AUTHOR  : AUTHOR  : David Knichel david.knichel@rub.de and Amir Moradi amir.moradi@rub.de 
// DOCUMENT: [Composable Gadgets with Reused Fresh Masks] https://doi.org/10.46586/tches.v2022.i3.114-140
// -----------------------------------------------------------------
//
// Copyright (c) 2022, David Knichel and  Amir Moradi
//
// All rights reserved.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
// ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
// WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
// DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTERS BE LIABLE FOR ANY
// DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
// (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
// LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
// ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
// SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//
// Please see LICENSE and README for license and further instructions.
//

/* modified netlist. Source: module Midori64 in file ..\4_Midori64_round_based_enc_dec\netlists\Midori64.v */
/* clock gating is added to the circuit, the latency increased 16 time(s)  */

module Midori64_COMAR_ClockGating_d1 (DataIn_s0, key_s0, clk, reset, enc_dec, key_s1, DataIn_s1, Fresh, DataOut_s0, done, DataOut_s1, Synch);
    input [63:0] DataIn_s0 ;
    input [127:0] key_s0 ;
    input clk ;
    input reset ;
    input enc_dec ;
    input [127:0] key_s1 ;
    input [63:0] DataIn_s1 ;
    input [5:0] Fresh ;
    output [63:0] DataOut_s0 ;
    output done ;
    output [63:0] DataOut_s1 ;
    output Synch ;
    
    wire [63:0]  correct_DataIn_s0 ;
    wire [63:0]  correct_DataIn_s1 ;
    wire [127:0] correct_key_s0 ;
    wire [127:0] correct_key_s1 ;

    wire temp_reset;
    wire correct_reset;    
    
    
    
    wire controller_n2 ;
    wire controller_n1 ;
    wire controller_roundCounter_n13 ;
    wire controller_roundCounter_n12 ;
    wire controller_roundCounter_n11 ;
    wire controller_roundCounter_n10 ;
    wire controller_roundCounter_n9 ;
    wire controller_roundCounter_n8 ;
    wire controller_roundCounter_n7 ;
    wire controller_roundCounter_n5 ;
    wire controller_roundCounter_n4 ;
    wire controller_roundCounter_n3 ;
    wire controller_roundCounter_n2 ;
    wire controller_roundCounter_n1 ;
    wire controller_roundCounter_N10 ;
    wire controller_roundCounter_n6 ;
    wire controller_roundCounter_N8 ;
    wire controller_roundCounter_N7 ;
    wire Midori_rounds_n16 ;
    wire Midori_rounds_n15 ;
    wire Midori_rounds_n14 ;
    wire Midori_rounds_n13 ;
    wire Midori_rounds_n12 ;
    wire Midori_rounds_n11 ;
    wire Midori_rounds_n10 ;
    wire Midori_rounds_n9 ;
    wire Midori_rounds_n8 ;
    wire Midori_rounds_n7 ;
    wire Midori_rounds_n6 ;
    wire Midori_rounds_n5 ;
    wire Midori_rounds_n4 ;
    wire Midori_rounds_n3 ;
    wire Midori_rounds_n2 ;
    wire Midori_rounds_n1 ;
    wire Midori_rounds_SelectedKey_0_ ;
    wire Midori_rounds_SelectedKey_1_ ;
    wire Midori_rounds_SelectedKey_2_ ;
    wire Midori_rounds_SelectedKey_3_ ;
    wire Midori_rounds_SelectedKey_4_ ;
    wire Midori_rounds_SelectedKey_5_ ;
    wire Midori_rounds_SelectedKey_6_ ;
    wire Midori_rounds_SelectedKey_7_ ;
    wire Midori_rounds_SelectedKey_8_ ;
    wire Midori_rounds_SelectedKey_9_ ;
    wire Midori_rounds_SelectedKey_10_ ;
    wire Midori_rounds_SelectedKey_11_ ;
    wire Midori_rounds_SelectedKey_12_ ;
    wire Midori_rounds_SelectedKey_13_ ;
    wire Midori_rounds_SelectedKey_14_ ;
    wire Midori_rounds_SelectedKey_15_ ;
    wire Midori_rounds_SelectedKey_16_ ;
    wire Midori_rounds_SelectedKey_17_ ;
    wire Midori_rounds_SelectedKey_18_ ;
    wire Midori_rounds_SelectedKey_19_ ;
    wire Midori_rounds_SelectedKey_20_ ;
    wire Midori_rounds_SelectedKey_21_ ;
    wire Midori_rounds_SelectedKey_22_ ;
    wire Midori_rounds_SelectedKey_23_ ;
    wire Midori_rounds_SelectedKey_24_ ;
    wire Midori_rounds_SelectedKey_25_ ;
    wire Midori_rounds_SelectedKey_26_ ;
    wire Midori_rounds_SelectedKey_27_ ;
    wire Midori_rounds_SelectedKey_28_ ;
    wire Midori_rounds_SelectedKey_29_ ;
    wire Midori_rounds_SelectedKey_30_ ;
    wire Midori_rounds_SelectedKey_31_ ;
    wire Midori_rounds_SelectedKey_32_ ;
    wire Midori_rounds_SelectedKey_33_ ;
    wire Midori_rounds_SelectedKey_34_ ;
    wire Midori_rounds_SelectedKey_35_ ;
    wire Midori_rounds_SelectedKey_36_ ;
    wire Midori_rounds_SelectedKey_37_ ;
    wire Midori_rounds_SelectedKey_38_ ;
    wire Midori_rounds_SelectedKey_39_ ;
    wire Midori_rounds_SelectedKey_40_ ;
    wire Midori_rounds_SelectedKey_41_ ;
    wire Midori_rounds_SelectedKey_42_ ;
    wire Midori_rounds_SelectedKey_43_ ;
    wire Midori_rounds_SelectedKey_44_ ;
    wire Midori_rounds_SelectedKey_45_ ;
    wire Midori_rounds_SelectedKey_46_ ;
    wire Midori_rounds_SelectedKey_47_ ;
    wire Midori_rounds_SelectedKey_48_ ;
    wire Midori_rounds_SelectedKey_49_ ;
    wire Midori_rounds_SelectedKey_50_ ;
    wire Midori_rounds_SelectedKey_51_ ;
    wire Midori_rounds_SelectedKey_52_ ;
    wire Midori_rounds_SelectedKey_53_ ;
    wire Midori_rounds_SelectedKey_54_ ;
    wire Midori_rounds_SelectedKey_55_ ;
    wire Midori_rounds_SelectedKey_56_ ;
    wire Midori_rounds_SelectedKey_57_ ;
    wire Midori_rounds_SelectedKey_58_ ;
    wire Midori_rounds_SelectedKey_59_ ;
    wire Midori_rounds_SelectedKey_60_ ;
    wire Midori_rounds_SelectedKey_61_ ;
    wire Midori_rounds_SelectedKey_62_ ;
    wire Midori_rounds_SelectedKey_63_ ;
    wire Midori_rounds_constant_MUX_n217 ;
    wire Midori_rounds_constant_MUX_n216 ;
    wire Midori_rounds_constant_MUX_n215 ;
    wire Midori_rounds_constant_MUX_n214 ;
    wire Midori_rounds_constant_MUX_n213 ;
    wire Midori_rounds_constant_MUX_n212 ;
    wire Midori_rounds_constant_MUX_n211 ;
    wire Midori_rounds_constant_MUX_n210 ;
    wire Midori_rounds_constant_MUX_n209 ;
    wire Midori_rounds_constant_MUX_n208 ;
    wire Midori_rounds_constant_MUX_n207 ;
    wire Midori_rounds_constant_MUX_n206 ;
    wire Midori_rounds_constant_MUX_n205 ;
    wire Midori_rounds_constant_MUX_n204 ;
    wire Midori_rounds_constant_MUX_n203 ;
    wire Midori_rounds_constant_MUX_n202 ;
    wire Midori_rounds_constant_MUX_n201 ;
    wire Midori_rounds_constant_MUX_n200 ;
    wire Midori_rounds_constant_MUX_n199 ;
    wire Midori_rounds_constant_MUX_n198 ;
    wire Midori_rounds_constant_MUX_n197 ;
    wire Midori_rounds_constant_MUX_n196 ;
    wire Midori_rounds_constant_MUX_n195 ;
    wire Midori_rounds_constant_MUX_n194 ;
    wire Midori_rounds_constant_MUX_n193 ;
    wire Midori_rounds_constant_MUX_n192 ;
    wire Midori_rounds_constant_MUX_n191 ;
    wire Midori_rounds_constant_MUX_n190 ;
    wire Midori_rounds_constant_MUX_n189 ;
    wire Midori_rounds_constant_MUX_n188 ;
    wire Midori_rounds_constant_MUX_n187 ;
    wire Midori_rounds_constant_MUX_n186 ;
    wire Midori_rounds_constant_MUX_n185 ;
    wire Midori_rounds_constant_MUX_n184 ;
    wire Midori_rounds_constant_MUX_n183 ;
    wire Midori_rounds_constant_MUX_n182 ;
    wire Midori_rounds_constant_MUX_n181 ;
    wire Midori_rounds_constant_MUX_n180 ;
    wire Midori_rounds_constant_MUX_n179 ;
    wire Midori_rounds_constant_MUX_n178 ;
    wire Midori_rounds_constant_MUX_n177 ;
    wire Midori_rounds_constant_MUX_n176 ;
    wire Midori_rounds_constant_MUX_n175 ;
    wire Midori_rounds_constant_MUX_n174 ;
    wire Midori_rounds_constant_MUX_n173 ;
    wire Midori_rounds_constant_MUX_n172 ;
    wire Midori_rounds_constant_MUX_n171 ;
    wire Midori_rounds_constant_MUX_n170 ;
    wire Midori_rounds_constant_MUX_n169 ;
    wire Midori_rounds_constant_MUX_n168 ;
    wire Midori_rounds_constant_MUX_n167 ;
    wire Midori_rounds_constant_MUX_n166 ;
    wire Midori_rounds_constant_MUX_n165 ;
    wire Midori_rounds_constant_MUX_n164 ;
    wire Midori_rounds_constant_MUX_n163 ;
    wire Midori_rounds_constant_MUX_n162 ;
    wire Midori_rounds_constant_MUX_n161 ;
    wire Midori_rounds_constant_MUX_n160 ;
    wire Midori_rounds_constant_MUX_n159 ;
    wire Midori_rounds_constant_MUX_n158 ;
    wire Midori_rounds_constant_MUX_n157 ;
    wire Midori_rounds_constant_MUX_n156 ;
    wire Midori_rounds_constant_MUX_n155 ;
    wire Midori_rounds_constant_MUX_n154 ;
    wire Midori_rounds_constant_MUX_n153 ;
    wire Midori_rounds_constant_MUX_n152 ;
    wire Midori_rounds_constant_MUX_n151 ;
    wire Midori_rounds_constant_MUX_n150 ;
    wire Midori_rounds_constant_MUX_n149 ;
    wire Midori_rounds_constant_MUX_n148 ;
    wire Midori_rounds_constant_MUX_n147 ;
    wire Midori_rounds_constant_MUX_n146 ;
    wire Midori_rounds_constant_MUX_n145 ;
    wire Midori_rounds_constant_MUX_n144 ;
    wire Midori_rounds_constant_MUX_n143 ;
    wire Midori_rounds_constant_MUX_n142 ;
    wire Midori_rounds_constant_MUX_n141 ;
    wire Midori_rounds_constant_MUX_n140 ;
    wire Midori_rounds_constant_MUX_n139 ;
    wire Midori_rounds_constant_MUX_n138 ;
    wire Midori_rounds_constant_MUX_n137 ;
    wire Midori_rounds_constant_MUX_n136 ;
    wire Midori_rounds_constant_MUX_n135 ;
    wire Midori_rounds_constant_MUX_n134 ;
    wire Midori_rounds_constant_MUX_n133 ;
    wire Midori_rounds_constant_MUX_n132 ;
    wire Midori_rounds_constant_MUX_n131 ;
    wire Midori_rounds_constant_MUX_n130 ;
    wire Midori_rounds_constant_MUX_n129 ;
    wire Midori_rounds_constant_MUX_n128 ;
    wire Midori_rounds_MUXInst_n11 ;
    wire Midori_rounds_MUXInst_n10 ;
    wire Midori_rounds_MUXInst_n9 ;
    wire Midori_rounds_MUXInst_n8 ;
    wire Midori_rounds_roundResult_Reg_SFF_0_DQ ;
    wire Midori_rounds_roundResult_Reg_SFF_1_DQ ;
    wire Midori_rounds_roundResult_Reg_SFF_2_DQ ;
    wire Midori_rounds_roundResult_Reg_SFF_3_DQ ;
    wire Midori_rounds_roundResult_Reg_SFF_4_DQ ;
    wire Midori_rounds_roundResult_Reg_SFF_5_DQ ;
    wire Midori_rounds_roundResult_Reg_SFF_6_DQ ;
    wire Midori_rounds_roundResult_Reg_SFF_7_DQ ;
    wire Midori_rounds_roundResult_Reg_SFF_8_DQ ;
    wire Midori_rounds_roundResult_Reg_SFF_9_DQ ;
    wire Midori_rounds_roundResult_Reg_SFF_10_DQ ;
    wire Midori_rounds_roundResult_Reg_SFF_11_DQ ;
    wire Midori_rounds_roundResult_Reg_SFF_12_DQ ;
    wire Midori_rounds_roundResult_Reg_SFF_13_DQ ;
    wire Midori_rounds_roundResult_Reg_SFF_14_DQ ;
    wire Midori_rounds_roundResult_Reg_SFF_15_DQ ;
    wire Midori_rounds_roundResult_Reg_SFF_16_DQ ;
    wire Midori_rounds_roundResult_Reg_SFF_17_DQ ;
    wire Midori_rounds_roundResult_Reg_SFF_18_DQ ;
    wire Midori_rounds_roundResult_Reg_SFF_19_DQ ;
    wire Midori_rounds_roundResult_Reg_SFF_20_DQ ;
    wire Midori_rounds_roundResult_Reg_SFF_21_DQ ;
    wire Midori_rounds_roundResult_Reg_SFF_22_DQ ;
    wire Midori_rounds_roundResult_Reg_SFF_23_DQ ;
    wire Midori_rounds_roundResult_Reg_SFF_24_DQ ;
    wire Midori_rounds_roundResult_Reg_SFF_25_DQ ;
    wire Midori_rounds_roundResult_Reg_SFF_26_DQ ;
    wire Midori_rounds_roundResult_Reg_SFF_27_DQ ;
    wire Midori_rounds_roundResult_Reg_SFF_28_DQ ;
    wire Midori_rounds_roundResult_Reg_SFF_29_DQ ;
    wire Midori_rounds_roundResult_Reg_SFF_30_DQ ;
    wire Midori_rounds_roundResult_Reg_SFF_31_DQ ;
    wire Midori_rounds_roundResult_Reg_SFF_32_DQ ;
    wire Midori_rounds_roundResult_Reg_SFF_33_DQ ;
    wire Midori_rounds_roundResult_Reg_SFF_34_DQ ;
    wire Midori_rounds_roundResult_Reg_SFF_35_DQ ;
    wire Midori_rounds_roundResult_Reg_SFF_36_DQ ;
    wire Midori_rounds_roundResult_Reg_SFF_37_DQ ;
    wire Midori_rounds_roundResult_Reg_SFF_38_DQ ;
    wire Midori_rounds_roundResult_Reg_SFF_39_DQ ;
    wire Midori_rounds_roundResult_Reg_SFF_40_DQ ;
    wire Midori_rounds_roundResult_Reg_SFF_41_DQ ;
    wire Midori_rounds_roundResult_Reg_SFF_42_DQ ;
    wire Midori_rounds_roundResult_Reg_SFF_43_DQ ;
    wire Midori_rounds_roundResult_Reg_SFF_44_DQ ;
    wire Midori_rounds_roundResult_Reg_SFF_45_DQ ;
    wire Midori_rounds_roundResult_Reg_SFF_46_DQ ;
    wire Midori_rounds_roundResult_Reg_SFF_47_DQ ;
    wire Midori_rounds_roundResult_Reg_SFF_48_DQ ;
    wire Midori_rounds_roundResult_Reg_SFF_49_DQ ;
    wire Midori_rounds_roundResult_Reg_SFF_50_DQ ;
    wire Midori_rounds_roundResult_Reg_SFF_51_DQ ;
    wire Midori_rounds_roundResult_Reg_SFF_52_DQ ;
    wire Midori_rounds_roundResult_Reg_SFF_53_DQ ;
    wire Midori_rounds_roundResult_Reg_SFF_54_DQ ;
    wire Midori_rounds_roundResult_Reg_SFF_55_DQ ;
    wire Midori_rounds_roundResult_Reg_SFF_56_DQ ;
    wire Midori_rounds_roundResult_Reg_SFF_57_DQ ;
    wire Midori_rounds_roundResult_Reg_SFF_58_DQ ;
    wire Midori_rounds_roundResult_Reg_SFF_59_DQ ;
    wire Midori_rounds_roundResult_Reg_SFF_60_DQ ;
    wire Midori_rounds_roundResult_Reg_SFF_61_DQ ;
    wire Midori_rounds_roundResult_Reg_SFF_62_DQ ;
    wire Midori_rounds_roundResult_Reg_SFF_63_DQ ;
    wire Midori_rounds_sub_sBox_PRINCE_0_n15 ;
    wire Midori_rounds_sub_sBox_PRINCE_0_n14 ;
    wire Midori_rounds_sub_sBox_PRINCE_0_n13 ;
    wire Midori_rounds_sub_sBox_PRINCE_0_n12 ;
    wire Midori_rounds_sub_sBox_PRINCE_0_n11 ;
    wire Midori_rounds_sub_sBox_PRINCE_0_n10 ;
    wire Midori_rounds_sub_sBox_PRINCE_0_n9 ;
    wire Midori_rounds_sub_sBox_PRINCE_0_n8 ;
    wire Midori_rounds_sub_sBox_PRINCE_0_n7 ;
    wire Midori_rounds_sub_sBox_PRINCE_0_n6 ;
    wire Midori_rounds_sub_sBox_PRINCE_0_n5 ;
    wire Midori_rounds_sub_sBox_PRINCE_0_n4 ;
    wire Midori_rounds_sub_sBox_PRINCE_0_n3 ;
    wire Midori_rounds_sub_sBox_PRINCE_0_n2 ;
    wire Midori_rounds_sub_sBox_PRINCE_0_n1 ;
    wire Midori_rounds_sub_sBox_PRINCE_1_n15 ;
    wire Midori_rounds_sub_sBox_PRINCE_1_n14 ;
    wire Midori_rounds_sub_sBox_PRINCE_1_n13 ;
    wire Midori_rounds_sub_sBox_PRINCE_1_n12 ;
    wire Midori_rounds_sub_sBox_PRINCE_1_n11 ;
    wire Midori_rounds_sub_sBox_PRINCE_1_n10 ;
    wire Midori_rounds_sub_sBox_PRINCE_1_n9 ;
    wire Midori_rounds_sub_sBox_PRINCE_1_n8 ;
    wire Midori_rounds_sub_sBox_PRINCE_1_n7 ;
    wire Midori_rounds_sub_sBox_PRINCE_1_n6 ;
    wire Midori_rounds_sub_sBox_PRINCE_1_n5 ;
    wire Midori_rounds_sub_sBox_PRINCE_1_n4 ;
    wire Midori_rounds_sub_sBox_PRINCE_1_n3 ;
    wire Midori_rounds_sub_sBox_PRINCE_1_n2 ;
    wire Midori_rounds_sub_sBox_PRINCE_1_n1 ;
    wire Midori_rounds_sub_sBox_PRINCE_2_n15 ;
    wire Midori_rounds_sub_sBox_PRINCE_2_n14 ;
    wire Midori_rounds_sub_sBox_PRINCE_2_n13 ;
    wire Midori_rounds_sub_sBox_PRINCE_2_n12 ;
    wire Midori_rounds_sub_sBox_PRINCE_2_n11 ;
    wire Midori_rounds_sub_sBox_PRINCE_2_n10 ;
    wire Midori_rounds_sub_sBox_PRINCE_2_n9 ;
    wire Midori_rounds_sub_sBox_PRINCE_2_n8 ;
    wire Midori_rounds_sub_sBox_PRINCE_2_n7 ;
    wire Midori_rounds_sub_sBox_PRINCE_2_n6 ;
    wire Midori_rounds_sub_sBox_PRINCE_2_n5 ;
    wire Midori_rounds_sub_sBox_PRINCE_2_n4 ;
    wire Midori_rounds_sub_sBox_PRINCE_2_n3 ;
    wire Midori_rounds_sub_sBox_PRINCE_2_n2 ;
    wire Midori_rounds_sub_sBox_PRINCE_2_n1 ;
    wire Midori_rounds_sub_sBox_PRINCE_3_n15 ;
    wire Midori_rounds_sub_sBox_PRINCE_3_n14 ;
    wire Midori_rounds_sub_sBox_PRINCE_3_n13 ;
    wire Midori_rounds_sub_sBox_PRINCE_3_n12 ;
    wire Midori_rounds_sub_sBox_PRINCE_3_n11 ;
    wire Midori_rounds_sub_sBox_PRINCE_3_n10 ;
    wire Midori_rounds_sub_sBox_PRINCE_3_n9 ;
    wire Midori_rounds_sub_sBox_PRINCE_3_n8 ;
    wire Midori_rounds_sub_sBox_PRINCE_3_n7 ;
    wire Midori_rounds_sub_sBox_PRINCE_3_n6 ;
    wire Midori_rounds_sub_sBox_PRINCE_3_n5 ;
    wire Midori_rounds_sub_sBox_PRINCE_3_n4 ;
    wire Midori_rounds_sub_sBox_PRINCE_3_n3 ;
    wire Midori_rounds_sub_sBox_PRINCE_3_n2 ;
    wire Midori_rounds_sub_sBox_PRINCE_3_n1 ;
    wire Midori_rounds_sub_sBox_PRINCE_4_n15 ;
    wire Midori_rounds_sub_sBox_PRINCE_4_n14 ;
    wire Midori_rounds_sub_sBox_PRINCE_4_n13 ;
    wire Midori_rounds_sub_sBox_PRINCE_4_n12 ;
    wire Midori_rounds_sub_sBox_PRINCE_4_n11 ;
    wire Midori_rounds_sub_sBox_PRINCE_4_n10 ;
    wire Midori_rounds_sub_sBox_PRINCE_4_n9 ;
    wire Midori_rounds_sub_sBox_PRINCE_4_n8 ;
    wire Midori_rounds_sub_sBox_PRINCE_4_n7 ;
    wire Midori_rounds_sub_sBox_PRINCE_4_n6 ;
    wire Midori_rounds_sub_sBox_PRINCE_4_n5 ;
    wire Midori_rounds_sub_sBox_PRINCE_4_n4 ;
    wire Midori_rounds_sub_sBox_PRINCE_4_n3 ;
    wire Midori_rounds_sub_sBox_PRINCE_4_n2 ;
    wire Midori_rounds_sub_sBox_PRINCE_4_n1 ;
    wire Midori_rounds_sub_sBox_PRINCE_5_n15 ;
    wire Midori_rounds_sub_sBox_PRINCE_5_n14 ;
    wire Midori_rounds_sub_sBox_PRINCE_5_n13 ;
    wire Midori_rounds_sub_sBox_PRINCE_5_n12 ;
    wire Midori_rounds_sub_sBox_PRINCE_5_n11 ;
    wire Midori_rounds_sub_sBox_PRINCE_5_n10 ;
    wire Midori_rounds_sub_sBox_PRINCE_5_n9 ;
    wire Midori_rounds_sub_sBox_PRINCE_5_n8 ;
    wire Midori_rounds_sub_sBox_PRINCE_5_n7 ;
    wire Midori_rounds_sub_sBox_PRINCE_5_n6 ;
    wire Midori_rounds_sub_sBox_PRINCE_5_n5 ;
    wire Midori_rounds_sub_sBox_PRINCE_5_n4 ;
    wire Midori_rounds_sub_sBox_PRINCE_5_n3 ;
    wire Midori_rounds_sub_sBox_PRINCE_5_n2 ;
    wire Midori_rounds_sub_sBox_PRINCE_5_n1 ;
    wire Midori_rounds_sub_sBox_PRINCE_6_n15 ;
    wire Midori_rounds_sub_sBox_PRINCE_6_n14 ;
    wire Midori_rounds_sub_sBox_PRINCE_6_n13 ;
    wire Midori_rounds_sub_sBox_PRINCE_6_n12 ;
    wire Midori_rounds_sub_sBox_PRINCE_6_n11 ;
    wire Midori_rounds_sub_sBox_PRINCE_6_n10 ;
    wire Midori_rounds_sub_sBox_PRINCE_6_n9 ;
    wire Midori_rounds_sub_sBox_PRINCE_6_n8 ;
    wire Midori_rounds_sub_sBox_PRINCE_6_n7 ;
    wire Midori_rounds_sub_sBox_PRINCE_6_n6 ;
    wire Midori_rounds_sub_sBox_PRINCE_6_n5 ;
    wire Midori_rounds_sub_sBox_PRINCE_6_n4 ;
    wire Midori_rounds_sub_sBox_PRINCE_6_n3 ;
    wire Midori_rounds_sub_sBox_PRINCE_6_n2 ;
    wire Midori_rounds_sub_sBox_PRINCE_6_n1 ;
    wire Midori_rounds_sub_sBox_PRINCE_7_n15 ;
    wire Midori_rounds_sub_sBox_PRINCE_7_n14 ;
    wire Midori_rounds_sub_sBox_PRINCE_7_n13 ;
    wire Midori_rounds_sub_sBox_PRINCE_7_n12 ;
    wire Midori_rounds_sub_sBox_PRINCE_7_n11 ;
    wire Midori_rounds_sub_sBox_PRINCE_7_n10 ;
    wire Midori_rounds_sub_sBox_PRINCE_7_n9 ;
    wire Midori_rounds_sub_sBox_PRINCE_7_n8 ;
    wire Midori_rounds_sub_sBox_PRINCE_7_n7 ;
    wire Midori_rounds_sub_sBox_PRINCE_7_n6 ;
    wire Midori_rounds_sub_sBox_PRINCE_7_n5 ;
    wire Midori_rounds_sub_sBox_PRINCE_7_n4 ;
    wire Midori_rounds_sub_sBox_PRINCE_7_n3 ;
    wire Midori_rounds_sub_sBox_PRINCE_7_n2 ;
    wire Midori_rounds_sub_sBox_PRINCE_7_n1 ;
    wire Midori_rounds_sub_sBox_PRINCE_8_n15 ;
    wire Midori_rounds_sub_sBox_PRINCE_8_n14 ;
    wire Midori_rounds_sub_sBox_PRINCE_8_n13 ;
    wire Midori_rounds_sub_sBox_PRINCE_8_n12 ;
    wire Midori_rounds_sub_sBox_PRINCE_8_n11 ;
    wire Midori_rounds_sub_sBox_PRINCE_8_n10 ;
    wire Midori_rounds_sub_sBox_PRINCE_8_n9 ;
    wire Midori_rounds_sub_sBox_PRINCE_8_n8 ;
    wire Midori_rounds_sub_sBox_PRINCE_8_n7 ;
    wire Midori_rounds_sub_sBox_PRINCE_8_n6 ;
    wire Midori_rounds_sub_sBox_PRINCE_8_n5 ;
    wire Midori_rounds_sub_sBox_PRINCE_8_n4 ;
    wire Midori_rounds_sub_sBox_PRINCE_8_n3 ;
    wire Midori_rounds_sub_sBox_PRINCE_8_n2 ;
    wire Midori_rounds_sub_sBox_PRINCE_8_n1 ;
    wire Midori_rounds_sub_sBox_PRINCE_9_n15 ;
    wire Midori_rounds_sub_sBox_PRINCE_9_n14 ;
    wire Midori_rounds_sub_sBox_PRINCE_9_n13 ;
    wire Midori_rounds_sub_sBox_PRINCE_9_n12 ;
    wire Midori_rounds_sub_sBox_PRINCE_9_n11 ;
    wire Midori_rounds_sub_sBox_PRINCE_9_n10 ;
    wire Midori_rounds_sub_sBox_PRINCE_9_n9 ;
    wire Midori_rounds_sub_sBox_PRINCE_9_n8 ;
    wire Midori_rounds_sub_sBox_PRINCE_9_n7 ;
    wire Midori_rounds_sub_sBox_PRINCE_9_n6 ;
    wire Midori_rounds_sub_sBox_PRINCE_9_n5 ;
    wire Midori_rounds_sub_sBox_PRINCE_9_n4 ;
    wire Midori_rounds_sub_sBox_PRINCE_9_n3 ;
    wire Midori_rounds_sub_sBox_PRINCE_9_n2 ;
    wire Midori_rounds_sub_sBox_PRINCE_9_n1 ;
    wire Midori_rounds_sub_sBox_PRINCE_10_n15 ;
    wire Midori_rounds_sub_sBox_PRINCE_10_n14 ;
    wire Midori_rounds_sub_sBox_PRINCE_10_n13 ;
    wire Midori_rounds_sub_sBox_PRINCE_10_n12 ;
    wire Midori_rounds_sub_sBox_PRINCE_10_n11 ;
    wire Midori_rounds_sub_sBox_PRINCE_10_n10 ;
    wire Midori_rounds_sub_sBox_PRINCE_10_n9 ;
    wire Midori_rounds_sub_sBox_PRINCE_10_n8 ;
    wire Midori_rounds_sub_sBox_PRINCE_10_n7 ;
    wire Midori_rounds_sub_sBox_PRINCE_10_n6 ;
    wire Midori_rounds_sub_sBox_PRINCE_10_n5 ;
    wire Midori_rounds_sub_sBox_PRINCE_10_n4 ;
    wire Midori_rounds_sub_sBox_PRINCE_10_n3 ;
    wire Midori_rounds_sub_sBox_PRINCE_10_n2 ;
    wire Midori_rounds_sub_sBox_PRINCE_10_n1 ;
    wire Midori_rounds_sub_sBox_PRINCE_11_n15 ;
    wire Midori_rounds_sub_sBox_PRINCE_11_n14 ;
    wire Midori_rounds_sub_sBox_PRINCE_11_n13 ;
    wire Midori_rounds_sub_sBox_PRINCE_11_n12 ;
    wire Midori_rounds_sub_sBox_PRINCE_11_n11 ;
    wire Midori_rounds_sub_sBox_PRINCE_11_n10 ;
    wire Midori_rounds_sub_sBox_PRINCE_11_n9 ;
    wire Midori_rounds_sub_sBox_PRINCE_11_n8 ;
    wire Midori_rounds_sub_sBox_PRINCE_11_n7 ;
    wire Midori_rounds_sub_sBox_PRINCE_11_n6 ;
    wire Midori_rounds_sub_sBox_PRINCE_11_n5 ;
    wire Midori_rounds_sub_sBox_PRINCE_11_n4 ;
    wire Midori_rounds_sub_sBox_PRINCE_11_n3 ;
    wire Midori_rounds_sub_sBox_PRINCE_11_n2 ;
    wire Midori_rounds_sub_sBox_PRINCE_11_n1 ;
    wire Midori_rounds_sub_sBox_PRINCE_12_n15 ;
    wire Midori_rounds_sub_sBox_PRINCE_12_n14 ;
    wire Midori_rounds_sub_sBox_PRINCE_12_n13 ;
    wire Midori_rounds_sub_sBox_PRINCE_12_n12 ;
    wire Midori_rounds_sub_sBox_PRINCE_12_n11 ;
    wire Midori_rounds_sub_sBox_PRINCE_12_n10 ;
    wire Midori_rounds_sub_sBox_PRINCE_12_n9 ;
    wire Midori_rounds_sub_sBox_PRINCE_12_n8 ;
    wire Midori_rounds_sub_sBox_PRINCE_12_n7 ;
    wire Midori_rounds_sub_sBox_PRINCE_12_n6 ;
    wire Midori_rounds_sub_sBox_PRINCE_12_n5 ;
    wire Midori_rounds_sub_sBox_PRINCE_12_n4 ;
    wire Midori_rounds_sub_sBox_PRINCE_12_n3 ;
    wire Midori_rounds_sub_sBox_PRINCE_12_n2 ;
    wire Midori_rounds_sub_sBox_PRINCE_12_n1 ;
    wire Midori_rounds_sub_sBox_PRINCE_13_n15 ;
    wire Midori_rounds_sub_sBox_PRINCE_13_n14 ;
    wire Midori_rounds_sub_sBox_PRINCE_13_n13 ;
    wire Midori_rounds_sub_sBox_PRINCE_13_n12 ;
    wire Midori_rounds_sub_sBox_PRINCE_13_n11 ;
    wire Midori_rounds_sub_sBox_PRINCE_13_n10 ;
    wire Midori_rounds_sub_sBox_PRINCE_13_n9 ;
    wire Midori_rounds_sub_sBox_PRINCE_13_n8 ;
    wire Midori_rounds_sub_sBox_PRINCE_13_n7 ;
    wire Midori_rounds_sub_sBox_PRINCE_13_n6 ;
    wire Midori_rounds_sub_sBox_PRINCE_13_n5 ;
    wire Midori_rounds_sub_sBox_PRINCE_13_n4 ;
    wire Midori_rounds_sub_sBox_PRINCE_13_n3 ;
    wire Midori_rounds_sub_sBox_PRINCE_13_n2 ;
    wire Midori_rounds_sub_sBox_PRINCE_13_n1 ;
    wire Midori_rounds_sub_sBox_PRINCE_14_n15 ;
    wire Midori_rounds_sub_sBox_PRINCE_14_n14 ;
    wire Midori_rounds_sub_sBox_PRINCE_14_n13 ;
    wire Midori_rounds_sub_sBox_PRINCE_14_n12 ;
    wire Midori_rounds_sub_sBox_PRINCE_14_n11 ;
    wire Midori_rounds_sub_sBox_PRINCE_14_n10 ;
    wire Midori_rounds_sub_sBox_PRINCE_14_n9 ;
    wire Midori_rounds_sub_sBox_PRINCE_14_n8 ;
    wire Midori_rounds_sub_sBox_PRINCE_14_n7 ;
    wire Midori_rounds_sub_sBox_PRINCE_14_n6 ;
    wire Midori_rounds_sub_sBox_PRINCE_14_n5 ;
    wire Midori_rounds_sub_sBox_PRINCE_14_n4 ;
    wire Midori_rounds_sub_sBox_PRINCE_14_n3 ;
    wire Midori_rounds_sub_sBox_PRINCE_14_n2 ;
    wire Midori_rounds_sub_sBox_PRINCE_14_n1 ;
    wire Midori_rounds_sub_sBox_PRINCE_15_n15 ;
    wire Midori_rounds_sub_sBox_PRINCE_15_n14 ;
    wire Midori_rounds_sub_sBox_PRINCE_15_n13 ;
    wire Midori_rounds_sub_sBox_PRINCE_15_n12 ;
    wire Midori_rounds_sub_sBox_PRINCE_15_n11 ;
    wire Midori_rounds_sub_sBox_PRINCE_15_n10 ;
    wire Midori_rounds_sub_sBox_PRINCE_15_n9 ;
    wire Midori_rounds_sub_sBox_PRINCE_15_n8 ;
    wire Midori_rounds_sub_sBox_PRINCE_15_n7 ;
    wire Midori_rounds_sub_sBox_PRINCE_15_n6 ;
    wire Midori_rounds_sub_sBox_PRINCE_15_n5 ;
    wire Midori_rounds_sub_sBox_PRINCE_15_n4 ;
    wire Midori_rounds_sub_sBox_PRINCE_15_n3 ;
    wire Midori_rounds_sub_sBox_PRINCE_15_n2 ;
    wire Midori_rounds_sub_sBox_PRINCE_15_n1 ;
    wire Midori_rounds_mul_MC1_n8 ;
    wire Midori_rounds_mul_MC1_n7 ;
    wire Midori_rounds_mul_MC1_n6 ;
    wire Midori_rounds_mul_MC1_n5 ;
    wire Midori_rounds_mul_MC1_n4 ;
    wire Midori_rounds_mul_MC1_n3 ;
    wire Midori_rounds_mul_MC1_n2 ;
    wire Midori_rounds_mul_MC1_n1 ;
    wire Midori_rounds_mul_MC2_n8 ;
    wire Midori_rounds_mul_MC2_n7 ;
    wire Midori_rounds_mul_MC2_n6 ;
    wire Midori_rounds_mul_MC2_n5 ;
    wire Midori_rounds_mul_MC2_n4 ;
    wire Midori_rounds_mul_MC2_n3 ;
    wire Midori_rounds_mul_MC2_n2 ;
    wire Midori_rounds_mul_MC2_n1 ;
    wire Midori_rounds_mul_MC3_n8 ;
    wire Midori_rounds_mul_MC3_n7 ;
    wire Midori_rounds_mul_MC3_n6 ;
    wire Midori_rounds_mul_MC3_n5 ;
    wire Midori_rounds_mul_MC3_n4 ;
    wire Midori_rounds_mul_MC3_n3 ;
    wire Midori_rounds_mul_MC3_n2 ;
    wire Midori_rounds_mul_MC3_n1 ;
    wire Midori_rounds_mul_MC4_n8 ;
    wire Midori_rounds_mul_MC4_n7 ;
    wire Midori_rounds_mul_MC4_n6 ;
    wire Midori_rounds_mul_MC4_n5 ;
    wire Midori_rounds_mul_MC4_n4 ;
    wire Midori_rounds_mul_MC4_n3 ;
    wire Midori_rounds_mul_MC4_n2 ;
    wire Midori_rounds_mul_MC4_n1 ;
    wire [63:0] wk ;
    wire [3:0] round_Signal ;
    wire [63:0] Midori_add_Result_Start ;
    wire [63:0] Midori_rounds_mul_ResultXORkey ;
    wire [63:0] Midori_rounds_SR_Inv_Result ;
    wire [63:0] Midori_rounds_mul_input ;
    wire [63:0] Midori_rounds_sub_ResultXORkey ;
    wire [63:0] Midori_rounds_SR_Result ;
    wire [63:0] Midori_rounds_roundReg_out ;
    wire [63:0] Midori_rounds_round_Result ;
    wire [15:0] Midori_rounds_round_Constant ;
    wire new_AGEMA_signal_1458 ;
    wire new_AGEMA_signal_1461 ;
    wire new_AGEMA_signal_1464 ;
    wire new_AGEMA_signal_1467 ;
    wire new_AGEMA_signal_1470 ;
    wire new_AGEMA_signal_1473 ;
    wire new_AGEMA_signal_1476 ;
    wire new_AGEMA_signal_1479 ;
    wire new_AGEMA_signal_1482 ;
    wire new_AGEMA_signal_1485 ;
    wire new_AGEMA_signal_1488 ;
    wire new_AGEMA_signal_1491 ;
    wire new_AGEMA_signal_1494 ;
    wire new_AGEMA_signal_1497 ;
    wire new_AGEMA_signal_1500 ;
    wire new_AGEMA_signal_1503 ;
    wire new_AGEMA_signal_1506 ;
    wire new_AGEMA_signal_1509 ;
    wire new_AGEMA_signal_1512 ;
    wire new_AGEMA_signal_1515 ;
    wire new_AGEMA_signal_1518 ;
    wire new_AGEMA_signal_1521 ;
    wire new_AGEMA_signal_1524 ;
    wire new_AGEMA_signal_1527 ;
    wire new_AGEMA_signal_1530 ;
    wire new_AGEMA_signal_1533 ;
    wire new_AGEMA_signal_1536 ;
    wire new_AGEMA_signal_1539 ;
    wire new_AGEMA_signal_1542 ;
    wire new_AGEMA_signal_1545 ;
    wire new_AGEMA_signal_1548 ;
    wire new_AGEMA_signal_1551 ;
    wire new_AGEMA_signal_1554 ;
    wire new_AGEMA_signal_1557 ;
    wire new_AGEMA_signal_1560 ;
    wire new_AGEMA_signal_1563 ;
    wire new_AGEMA_signal_1566 ;
    wire new_AGEMA_signal_1569 ;
    wire new_AGEMA_signal_1572 ;
    wire new_AGEMA_signal_1575 ;
    wire new_AGEMA_signal_1578 ;
    wire new_AGEMA_signal_1581 ;
    wire new_AGEMA_signal_1584 ;
    wire new_AGEMA_signal_1587 ;
    wire new_AGEMA_signal_1590 ;
    wire new_AGEMA_signal_1593 ;
    wire new_AGEMA_signal_1596 ;
    wire new_AGEMA_signal_1599 ;
    wire new_AGEMA_signal_1602 ;
    wire new_AGEMA_signal_1605 ;
    wire new_AGEMA_signal_1608 ;
    wire new_AGEMA_signal_1611 ;
    wire new_AGEMA_signal_1614 ;
    wire new_AGEMA_signal_1617 ;
    wire new_AGEMA_signal_1620 ;
    wire new_AGEMA_signal_1623 ;
    wire new_AGEMA_signal_1626 ;
    wire new_AGEMA_signal_1629 ;
    wire new_AGEMA_signal_1632 ;
    wire new_AGEMA_signal_1635 ;
    wire new_AGEMA_signal_1638 ;
    wire new_AGEMA_signal_1641 ;
    wire new_AGEMA_signal_1644 ;
    wire new_AGEMA_signal_1647 ;
    wire new_AGEMA_signal_1648 ;
    wire new_AGEMA_signal_1649 ;
    wire new_AGEMA_signal_1650 ;
    wire new_AGEMA_signal_1651 ;
    wire new_AGEMA_signal_1652 ;
    wire new_AGEMA_signal_1653 ;
    wire new_AGEMA_signal_1654 ;
    wire new_AGEMA_signal_1655 ;
    wire new_AGEMA_signal_1656 ;
    wire new_AGEMA_signal_1657 ;
    wire new_AGEMA_signal_1658 ;
    wire new_AGEMA_signal_1659 ;
    wire new_AGEMA_signal_1660 ;
    wire new_AGEMA_signal_1661 ;
    wire new_AGEMA_signal_1662 ;
    wire new_AGEMA_signal_1663 ;
    wire new_AGEMA_signal_1664 ;
    wire new_AGEMA_signal_1665 ;
    wire new_AGEMA_signal_1666 ;
    wire new_AGEMA_signal_1667 ;
    wire new_AGEMA_signal_1668 ;
    wire new_AGEMA_signal_1669 ;
    wire new_AGEMA_signal_1670 ;
    wire new_AGEMA_signal_1671 ;
    wire new_AGEMA_signal_1672 ;
    wire new_AGEMA_signal_1673 ;
    wire new_AGEMA_signal_1674 ;
    wire new_AGEMA_signal_1675 ;
    wire new_AGEMA_signal_1676 ;
    wire new_AGEMA_signal_1677 ;
    wire new_AGEMA_signal_1678 ;
    wire new_AGEMA_signal_1679 ;
    wire new_AGEMA_signal_1680 ;
    wire new_AGEMA_signal_1681 ;
    wire new_AGEMA_signal_1682 ;
    wire new_AGEMA_signal_1683 ;
    wire new_AGEMA_signal_1684 ;
    wire new_AGEMA_signal_1685 ;
    wire new_AGEMA_signal_1686 ;
    wire new_AGEMA_signal_1687 ;
    wire new_AGEMA_signal_1688 ;
    wire new_AGEMA_signal_1689 ;
    wire new_AGEMA_signal_1690 ;
    wire new_AGEMA_signal_1691 ;
    wire new_AGEMA_signal_1692 ;
    wire new_AGEMA_signal_1693 ;
    wire new_AGEMA_signal_1694 ;
    wire new_AGEMA_signal_1695 ;
    wire new_AGEMA_signal_1696 ;
    wire new_AGEMA_signal_1697 ;
    wire new_AGEMA_signal_1698 ;
    wire new_AGEMA_signal_1699 ;
    wire new_AGEMA_signal_1700 ;
    wire new_AGEMA_signal_1701 ;
    wire new_AGEMA_signal_1702 ;
    wire new_AGEMA_signal_1703 ;
    wire new_AGEMA_signal_1704 ;
    wire new_AGEMA_signal_1705 ;
    wire new_AGEMA_signal_1706 ;
    wire new_AGEMA_signal_1707 ;
    wire new_AGEMA_signal_1708 ;
    wire new_AGEMA_signal_1709 ;
    wire new_AGEMA_signal_1710 ;
    wire new_AGEMA_signal_1711 ;
    wire new_AGEMA_signal_1712 ;
    wire new_AGEMA_signal_1713 ;
    wire new_AGEMA_signal_1714 ;
    wire new_AGEMA_signal_1715 ;
    wire new_AGEMA_signal_1716 ;
    wire new_AGEMA_signal_1717 ;
    wire new_AGEMA_signal_1718 ;
    wire new_AGEMA_signal_1719 ;
    wire new_AGEMA_signal_1720 ;
    wire new_AGEMA_signal_1721 ;
    wire new_AGEMA_signal_1722 ;
    wire new_AGEMA_signal_1723 ;
    wire new_AGEMA_signal_1724 ;
    wire new_AGEMA_signal_1725 ;
    wire new_AGEMA_signal_1726 ;
    wire new_AGEMA_signal_1727 ;
    wire new_AGEMA_signal_1728 ;
    wire new_AGEMA_signal_1729 ;
    wire new_AGEMA_signal_1730 ;
    wire new_AGEMA_signal_1731 ;
    wire new_AGEMA_signal_1732 ;
    wire new_AGEMA_signal_1733 ;
    wire new_AGEMA_signal_1734 ;
    wire new_AGEMA_signal_1735 ;
    wire new_AGEMA_signal_1736 ;
    wire new_AGEMA_signal_1737 ;
    wire new_AGEMA_signal_1738 ;
    wire new_AGEMA_signal_1739 ;
    wire new_AGEMA_signal_1740 ;
    wire new_AGEMA_signal_1741 ;
    wire new_AGEMA_signal_1742 ;
    wire new_AGEMA_signal_1743 ;
    wire new_AGEMA_signal_1744 ;
    wire new_AGEMA_signal_1745 ;
    wire new_AGEMA_signal_1746 ;
    wire new_AGEMA_signal_1747 ;
    wire new_AGEMA_signal_1748 ;
    wire new_AGEMA_signal_1749 ;
    wire new_AGEMA_signal_1750 ;
    wire new_AGEMA_signal_1751 ;
    wire new_AGEMA_signal_1752 ;
    wire new_AGEMA_signal_1753 ;
    wire new_AGEMA_signal_1754 ;
    wire new_AGEMA_signal_1755 ;
    wire new_AGEMA_signal_1756 ;
    wire new_AGEMA_signal_1757 ;
    wire new_AGEMA_signal_1758 ;
    wire new_AGEMA_signal_1759 ;
    wire new_AGEMA_signal_1760 ;
    wire new_AGEMA_signal_1761 ;
    wire new_AGEMA_signal_1762 ;
    wire new_AGEMA_signal_1763 ;
    wire new_AGEMA_signal_1764 ;
    wire new_AGEMA_signal_1765 ;
    wire new_AGEMA_signal_1766 ;
    wire new_AGEMA_signal_1767 ;
    wire new_AGEMA_signal_1768 ;
    wire new_AGEMA_signal_1769 ;
    wire new_AGEMA_signal_1770 ;
    wire new_AGEMA_signal_1771 ;
    wire new_AGEMA_signal_1772 ;
    wire new_AGEMA_signal_1773 ;
    wire new_AGEMA_signal_1774 ;
    wire new_AGEMA_signal_1775 ;
    wire new_AGEMA_signal_1776 ;
    wire new_AGEMA_signal_1777 ;
    wire new_AGEMA_signal_1778 ;
    wire new_AGEMA_signal_1779 ;
    wire new_AGEMA_signal_1780 ;
    wire new_AGEMA_signal_1781 ;
    wire new_AGEMA_signal_1782 ;
    wire new_AGEMA_signal_1783 ;
    wire new_AGEMA_signal_1784 ;
    wire new_AGEMA_signal_1785 ;
    wire new_AGEMA_signal_1786 ;
    wire new_AGEMA_signal_1787 ;
    wire new_AGEMA_signal_1788 ;
    wire new_AGEMA_signal_1790 ;
    wire new_AGEMA_signal_1792 ;
    wire new_AGEMA_signal_1794 ;
    wire new_AGEMA_signal_1796 ;
    wire new_AGEMA_signal_1798 ;
    wire new_AGEMA_signal_1800 ;
    wire new_AGEMA_signal_1802 ;
    wire new_AGEMA_signal_1804 ;
    wire new_AGEMA_signal_1806 ;
    wire new_AGEMA_signal_1808 ;
    wire new_AGEMA_signal_1810 ;
    wire new_AGEMA_signal_1812 ;
    wire new_AGEMA_signal_1814 ;
    wire new_AGEMA_signal_1816 ;
    wire new_AGEMA_signal_1818 ;
    wire new_AGEMA_signal_1820 ;
    wire new_AGEMA_signal_1822 ;
    wire new_AGEMA_signal_1824 ;
    wire new_AGEMA_signal_1826 ;
    wire new_AGEMA_signal_1828 ;
    wire new_AGEMA_signal_1830 ;
    wire new_AGEMA_signal_1832 ;
    wire new_AGEMA_signal_1834 ;
    wire new_AGEMA_signal_1836 ;
    wire new_AGEMA_signal_1838 ;
    wire new_AGEMA_signal_1840 ;
    wire new_AGEMA_signal_1842 ;
    wire new_AGEMA_signal_1844 ;
    wire new_AGEMA_signal_1846 ;
    wire new_AGEMA_signal_1848 ;
    wire new_AGEMA_signal_1850 ;
    wire new_AGEMA_signal_1852 ;
    wire new_AGEMA_signal_1854 ;
    wire new_AGEMA_signal_1856 ;
    wire new_AGEMA_signal_1858 ;
    wire new_AGEMA_signal_1860 ;
    wire new_AGEMA_signal_1862 ;
    wire new_AGEMA_signal_1864 ;
    wire new_AGEMA_signal_1866 ;
    wire new_AGEMA_signal_1868 ;
    wire new_AGEMA_signal_1870 ;
    wire new_AGEMA_signal_1872 ;
    wire new_AGEMA_signal_1874 ;
    wire new_AGEMA_signal_1876 ;
    wire new_AGEMA_signal_1878 ;
    wire new_AGEMA_signal_1880 ;
    wire new_AGEMA_signal_1882 ;
    wire new_AGEMA_signal_1884 ;
    wire new_AGEMA_signal_1886 ;
    wire new_AGEMA_signal_1888 ;
    wire new_AGEMA_signal_1890 ;
    wire new_AGEMA_signal_1892 ;
    wire new_AGEMA_signal_1894 ;
    wire new_AGEMA_signal_1896 ;
    wire new_AGEMA_signal_1898 ;
    wire new_AGEMA_signal_1900 ;
    wire new_AGEMA_signal_1902 ;
    wire new_AGEMA_signal_1904 ;
    wire new_AGEMA_signal_1906 ;
    wire new_AGEMA_signal_1908 ;
    wire new_AGEMA_signal_1910 ;
    wire new_AGEMA_signal_1912 ;
    wire new_AGEMA_signal_1914 ;
    wire new_AGEMA_signal_1916 ;
    wire new_AGEMA_signal_1917 ;
    wire new_AGEMA_signal_1918 ;
    wire new_AGEMA_signal_1919 ;
    wire new_AGEMA_signal_1920 ;
    wire new_AGEMA_signal_1921 ;
    wire new_AGEMA_signal_1922 ;
    wire new_AGEMA_signal_1923 ;
    wire new_AGEMA_signal_1924 ;
    wire new_AGEMA_signal_1925 ;
    wire new_AGEMA_signal_1926 ;
    wire new_AGEMA_signal_1927 ;
    wire new_AGEMA_signal_1928 ;
    wire new_AGEMA_signal_1929 ;
    wire new_AGEMA_signal_1930 ;
    wire new_AGEMA_signal_1931 ;
    wire new_AGEMA_signal_1932 ;
    wire new_AGEMA_signal_1933 ;
    wire new_AGEMA_signal_1934 ;
    wire new_AGEMA_signal_1935 ;
    wire new_AGEMA_signal_1936 ;
    wire new_AGEMA_signal_1937 ;
    wire new_AGEMA_signal_1938 ;
    wire new_AGEMA_signal_1939 ;
    wire new_AGEMA_signal_1940 ;
    wire new_AGEMA_signal_1941 ;
    wire new_AGEMA_signal_1942 ;
    wire new_AGEMA_signal_1943 ;
    wire new_AGEMA_signal_1944 ;
    wire new_AGEMA_signal_1945 ;
    wire new_AGEMA_signal_1946 ;
    wire new_AGEMA_signal_1947 ;
    wire new_AGEMA_signal_1948 ;
    wire new_AGEMA_signal_1949 ;
    wire new_AGEMA_signal_1950 ;
    wire new_AGEMA_signal_1951 ;
    wire new_AGEMA_signal_1952 ;
    wire new_AGEMA_signal_1953 ;
    wire new_AGEMA_signal_1954 ;
    wire new_AGEMA_signal_1955 ;
    wire new_AGEMA_signal_1956 ;
    wire new_AGEMA_signal_1957 ;
    wire new_AGEMA_signal_1958 ;
    wire new_AGEMA_signal_1959 ;
    wire new_AGEMA_signal_1960 ;
    wire new_AGEMA_signal_1961 ;
    wire new_AGEMA_signal_1962 ;
    wire new_AGEMA_signal_1963 ;
    wire new_AGEMA_signal_1964 ;
    wire new_AGEMA_signal_1965 ;
    wire new_AGEMA_signal_1966 ;
    wire new_AGEMA_signal_1967 ;
    wire new_AGEMA_signal_1968 ;
    wire new_AGEMA_signal_1969 ;
    wire new_AGEMA_signal_1970 ;
    wire new_AGEMA_signal_1971 ;
    wire new_AGEMA_signal_1972 ;
    wire new_AGEMA_signal_1973 ;
    wire new_AGEMA_signal_1974 ;
    wire new_AGEMA_signal_1975 ;
    wire new_AGEMA_signal_1976 ;
    wire new_AGEMA_signal_1977 ;
    wire new_AGEMA_signal_1978 ;
    wire new_AGEMA_signal_1979 ;
    wire new_AGEMA_signal_1980 ;
    wire new_AGEMA_signal_1981 ;
    wire new_AGEMA_signal_1982 ;
    wire new_AGEMA_signal_1983 ;
    wire new_AGEMA_signal_1984 ;
    wire new_AGEMA_signal_1985 ;
    wire new_AGEMA_signal_1986 ;
    wire new_AGEMA_signal_1987 ;
    wire new_AGEMA_signal_1988 ;
    wire new_AGEMA_signal_1989 ;
    wire new_AGEMA_signal_1990 ;
    wire new_AGEMA_signal_1991 ;
    wire new_AGEMA_signal_1992 ;
    wire new_AGEMA_signal_1993 ;
    wire new_AGEMA_signal_1994 ;
    wire new_AGEMA_signal_1995 ;
    wire new_AGEMA_signal_1996 ;
    wire new_AGEMA_signal_1997 ;
    wire new_AGEMA_signal_1998 ;
    wire new_AGEMA_signal_1999 ;
    wire new_AGEMA_signal_2000 ;
    wire new_AGEMA_signal_2001 ;
    wire new_AGEMA_signal_2002 ;
    wire new_AGEMA_signal_2003 ;
    wire new_AGEMA_signal_2004 ;
    wire new_AGEMA_signal_2005 ;
    wire new_AGEMA_signal_2006 ;
    wire new_AGEMA_signal_2007 ;
    wire new_AGEMA_signal_2008 ;
    wire new_AGEMA_signal_2009 ;
    wire new_AGEMA_signal_2010 ;
    wire new_AGEMA_signal_2011 ;
    wire new_AGEMA_signal_2012 ;
    wire new_AGEMA_signal_2013 ;
    wire new_AGEMA_signal_2014 ;
    wire new_AGEMA_signal_2015 ;
    wire new_AGEMA_signal_2016 ;
    wire new_AGEMA_signal_2017 ;
    wire new_AGEMA_signal_2018 ;
    wire new_AGEMA_signal_2019 ;
    wire new_AGEMA_signal_2020 ;
    wire new_AGEMA_signal_2021 ;
    wire new_AGEMA_signal_2022 ;
    wire new_AGEMA_signal_2023 ;
    wire new_AGEMA_signal_2024 ;
    wire new_AGEMA_signal_2025 ;
    wire new_AGEMA_signal_2026 ;
    wire new_AGEMA_signal_2027 ;
    wire new_AGEMA_signal_2028 ;
    wire new_AGEMA_signal_2029 ;
    wire new_AGEMA_signal_2030 ;
    wire new_AGEMA_signal_2031 ;
    wire new_AGEMA_signal_2032 ;
    wire new_AGEMA_signal_2033 ;
    wire new_AGEMA_signal_2034 ;
    wire new_AGEMA_signal_2035 ;
    wire new_AGEMA_signal_2036 ;
    wire new_AGEMA_signal_2037 ;
    wire new_AGEMA_signal_2038 ;
    wire new_AGEMA_signal_2039 ;
    wire new_AGEMA_signal_2040 ;
    wire new_AGEMA_signal_2041 ;
    wire new_AGEMA_signal_2042 ;
    wire new_AGEMA_signal_2043 ;
    wire new_AGEMA_signal_2044 ;
    wire new_AGEMA_signal_2045 ;
    wire new_AGEMA_signal_2046 ;
    wire new_AGEMA_signal_2047 ;
    wire new_AGEMA_signal_2048 ;
    wire new_AGEMA_signal_2049 ;
    wire new_AGEMA_signal_2050 ;
    wire new_AGEMA_signal_2051 ;
    wire new_AGEMA_signal_2052 ;
    wire new_AGEMA_signal_2053 ;
    wire new_AGEMA_signal_2054 ;
    wire new_AGEMA_signal_2055 ;
    wire new_AGEMA_signal_2056 ;
    wire new_AGEMA_signal_2057 ;
    wire new_AGEMA_signal_2058 ;
    wire new_AGEMA_signal_2059 ;
    wire new_AGEMA_signal_2060 ;
    wire new_AGEMA_signal_2061 ;
    wire new_AGEMA_signal_2062 ;
    wire new_AGEMA_signal_2063 ;
    wire new_AGEMA_signal_2064 ;
    wire new_AGEMA_signal_2065 ;
    wire new_AGEMA_signal_2066 ;
    wire new_AGEMA_signal_2067 ;
    wire new_AGEMA_signal_2068 ;
    wire new_AGEMA_signal_2069 ;
    wire new_AGEMA_signal_2070 ;
    wire new_AGEMA_signal_2071 ;
    wire new_AGEMA_signal_2072 ;
    wire new_AGEMA_signal_2073 ;
    wire new_AGEMA_signal_2074 ;
    wire new_AGEMA_signal_2075 ;
    wire new_AGEMA_signal_2076 ;
    wire new_AGEMA_signal_2077 ;
    wire new_AGEMA_signal_2078 ;
    wire new_AGEMA_signal_2079 ;
    wire new_AGEMA_signal_2080 ;
    wire new_AGEMA_signal_2081 ;
    wire new_AGEMA_signal_2082 ;
    wire new_AGEMA_signal_2083 ;
    wire new_AGEMA_signal_2084 ;
    wire new_AGEMA_signal_2085 ;
    wire new_AGEMA_signal_2086 ;
    wire new_AGEMA_signal_2087 ;
    wire new_AGEMA_signal_2088 ;
    wire new_AGEMA_signal_2089 ;
    wire new_AGEMA_signal_2090 ;
    wire new_AGEMA_signal_2091 ;
    wire new_AGEMA_signal_2092 ;
    wire new_AGEMA_signal_2093 ;
    wire new_AGEMA_signal_2094 ;
    wire new_AGEMA_signal_2095 ;
    wire new_AGEMA_signal_2096 ;
    wire new_AGEMA_signal_2097 ;
    wire new_AGEMA_signal_2098 ;
    wire new_AGEMA_signal_2099 ;
    wire new_AGEMA_signal_2100 ;
    wire new_AGEMA_signal_2101 ;
    wire new_AGEMA_signal_2102 ;
    wire new_AGEMA_signal_2103 ;
    wire new_AGEMA_signal_2104 ;
    wire new_AGEMA_signal_2105 ;
    wire new_AGEMA_signal_2106 ;
    wire new_AGEMA_signal_2107 ;
    wire new_AGEMA_signal_2108 ;
    wire new_AGEMA_signal_2109 ;
    wire new_AGEMA_signal_2110 ;
    wire new_AGEMA_signal_2111 ;
    wire new_AGEMA_signal_2112 ;
    wire new_AGEMA_signal_2113 ;
    wire new_AGEMA_signal_2114 ;
    wire new_AGEMA_signal_2115 ;
    wire new_AGEMA_signal_2116 ;
    wire new_AGEMA_signal_2117 ;
    wire new_AGEMA_signal_2118 ;
    wire new_AGEMA_signal_2119 ;
    wire new_AGEMA_signal_2120 ;
    wire new_AGEMA_signal_2121 ;
    wire new_AGEMA_signal_2122 ;
    wire new_AGEMA_signal_2123 ;
    wire new_AGEMA_signal_2124 ;
    wire new_AGEMA_signal_2125 ;
    wire new_AGEMA_signal_2126 ;
    wire new_AGEMA_signal_2127 ;
    wire new_AGEMA_signal_2128 ;
    wire new_AGEMA_signal_2129 ;
    wire new_AGEMA_signal_2130 ;
    wire new_AGEMA_signal_2131 ;
    wire new_AGEMA_signal_2132 ;
    wire new_AGEMA_signal_2133 ;
    wire new_AGEMA_signal_2134 ;
    wire new_AGEMA_signal_2135 ;
    wire new_AGEMA_signal_2136 ;
    wire new_AGEMA_signal_2137 ;
    wire new_AGEMA_signal_2138 ;
    wire new_AGEMA_signal_2139 ;
    wire new_AGEMA_signal_2140 ;
    wire new_AGEMA_signal_2141 ;
    wire new_AGEMA_signal_2142 ;
    wire new_AGEMA_signal_2143 ;
    wire new_AGEMA_signal_2144 ;
    wire new_AGEMA_signal_2145 ;
    wire new_AGEMA_signal_2146 ;
    wire new_AGEMA_signal_2147 ;
    wire new_AGEMA_signal_2148 ;
    wire new_AGEMA_signal_2149 ;
    wire new_AGEMA_signal_2150 ;
    wire new_AGEMA_signal_2151 ;
    wire new_AGEMA_signal_2152 ;
    wire new_AGEMA_signal_2153 ;
    wire new_AGEMA_signal_2154 ;
    wire new_AGEMA_signal_2155 ;
    wire new_AGEMA_signal_2156 ;
    wire new_AGEMA_signal_2157 ;
    wire new_AGEMA_signal_2158 ;
    wire new_AGEMA_signal_2159 ;
    wire new_AGEMA_signal_2160 ;
    wire new_AGEMA_signal_2161 ;
    wire new_AGEMA_signal_2162 ;
    wire new_AGEMA_signal_2163 ;
    wire new_AGEMA_signal_2164 ;
    wire new_AGEMA_signal_2165 ;
    wire new_AGEMA_signal_2166 ;
    wire new_AGEMA_signal_2167 ;
    wire new_AGEMA_signal_2168 ;
    wire new_AGEMA_signal_2169 ;
    wire new_AGEMA_signal_2170 ;
    wire new_AGEMA_signal_2171 ;
    wire new_AGEMA_signal_2172 ;
    wire new_AGEMA_signal_2173 ;
    wire new_AGEMA_signal_2174 ;
    wire new_AGEMA_signal_2175 ;
    wire new_AGEMA_signal_2176 ;
    wire new_AGEMA_signal_2177 ;
    wire new_AGEMA_signal_2178 ;
    wire new_AGEMA_signal_2179 ;
    wire new_AGEMA_signal_2180 ;
    wire new_AGEMA_signal_2181 ;
    wire new_AGEMA_signal_2182 ;
    wire new_AGEMA_signal_2183 ;
    wire new_AGEMA_signal_2184 ;
    wire new_AGEMA_signal_2185 ;
    wire new_AGEMA_signal_2186 ;
    wire new_AGEMA_signal_2187 ;
    wire new_AGEMA_signal_2188 ;
    wire new_AGEMA_signal_2189 ;
    wire new_AGEMA_signal_2190 ;
    wire new_AGEMA_signal_2191 ;
    wire new_AGEMA_signal_2192 ;
    wire new_AGEMA_signal_2193 ;
    wire new_AGEMA_signal_2194 ;
    wire new_AGEMA_signal_2195 ;
    wire new_AGEMA_signal_2196 ;
    wire new_AGEMA_signal_2197 ;
    wire new_AGEMA_signal_2198 ;
    wire new_AGEMA_signal_2199 ;
    wire new_AGEMA_signal_2200 ;
    wire new_AGEMA_signal_2201 ;
    wire new_AGEMA_signal_2202 ;
    wire new_AGEMA_signal_2203 ;
    wire new_AGEMA_signal_2204 ;
    wire new_AGEMA_signal_2205 ;
    wire new_AGEMA_signal_2206 ;
    wire new_AGEMA_signal_2207 ;
    wire new_AGEMA_signal_2272 ;
    wire new_AGEMA_signal_2273 ;
    wire new_AGEMA_signal_2274 ;
    wire new_AGEMA_signal_2275 ;
    wire new_AGEMA_signal_2276 ;
    wire new_AGEMA_signal_2277 ;
    wire new_AGEMA_signal_2278 ;
    wire new_AGEMA_signal_2279 ;
    wire new_AGEMA_signal_2280 ;
    wire new_AGEMA_signal_2281 ;
    wire new_AGEMA_signal_2282 ;
    wire new_AGEMA_signal_2283 ;
    wire new_AGEMA_signal_2284 ;
    wire new_AGEMA_signal_2285 ;
    wire new_AGEMA_signal_2286 ;
    wire new_AGEMA_signal_2287 ;
    wire new_AGEMA_signal_2288 ;
    wire new_AGEMA_signal_2289 ;
    wire new_AGEMA_signal_2290 ;
    wire new_AGEMA_signal_2291 ;
    wire new_AGEMA_signal_2292 ;
    wire new_AGEMA_signal_2293 ;
    wire new_AGEMA_signal_2294 ;
    wire new_AGEMA_signal_2295 ;
    wire new_AGEMA_signal_2296 ;
    wire new_AGEMA_signal_2297 ;
    wire new_AGEMA_signal_2298 ;
    wire new_AGEMA_signal_2299 ;
    wire new_AGEMA_signal_2300 ;
    wire new_AGEMA_signal_2301 ;
    wire new_AGEMA_signal_2302 ;
    wire new_AGEMA_signal_2303 ;
    wire new_AGEMA_signal_2304 ;
    wire new_AGEMA_signal_2305 ;
    wire new_AGEMA_signal_2306 ;
    wire new_AGEMA_signal_2307 ;
    wire new_AGEMA_signal_2308 ;
    wire new_AGEMA_signal_2309 ;
    wire new_AGEMA_signal_2310 ;
    wire new_AGEMA_signal_2311 ;
    wire new_AGEMA_signal_2312 ;
    wire new_AGEMA_signal_2313 ;
    wire new_AGEMA_signal_2314 ;
    wire new_AGEMA_signal_2315 ;
    wire new_AGEMA_signal_2316 ;
    wire new_AGEMA_signal_2317 ;
    wire new_AGEMA_signal_2318 ;
    wire new_AGEMA_signal_2319 ;
    wire new_AGEMA_signal_2320 ;
    wire new_AGEMA_signal_2321 ;
    wire new_AGEMA_signal_2322 ;
    wire new_AGEMA_signal_2323 ;
    wire new_AGEMA_signal_2324 ;
    wire new_AGEMA_signal_2325 ;
    wire new_AGEMA_signal_2326 ;
    wire new_AGEMA_signal_2327 ;
    wire new_AGEMA_signal_2328 ;
    wire new_AGEMA_signal_2329 ;
    wire new_AGEMA_signal_2330 ;
    wire new_AGEMA_signal_2331 ;
    wire new_AGEMA_signal_2332 ;
    wire new_AGEMA_signal_2333 ;
    wire new_AGEMA_signal_2334 ;
    wire new_AGEMA_signal_2335 ;
    wire new_AGEMA_signal_2336 ;
    wire new_AGEMA_signal_2337 ;
    wire new_AGEMA_signal_2338 ;
    wire new_AGEMA_signal_2339 ;
    wire new_AGEMA_signal_2340 ;
    wire new_AGEMA_signal_2341 ;
    wire new_AGEMA_signal_2342 ;
    wire new_AGEMA_signal_2343 ;
    wire new_AGEMA_signal_2344 ;
    wire new_AGEMA_signal_2345 ;
    wire new_AGEMA_signal_2346 ;
    wire new_AGEMA_signal_2347 ;
    wire new_AGEMA_signal_2348 ;
    wire new_AGEMA_signal_2349 ;
    wire new_AGEMA_signal_2350 ;
    wire new_AGEMA_signal_2351 ;
    wire new_AGEMA_signal_2352 ;
    wire new_AGEMA_signal_2353 ;
    wire new_AGEMA_signal_2354 ;
    wire new_AGEMA_signal_2355 ;
    wire new_AGEMA_signal_2356 ;
    wire new_AGEMA_signal_2357 ;
    wire new_AGEMA_signal_2358 ;
    wire new_AGEMA_signal_2359 ;
    wire new_AGEMA_signal_2360 ;
    wire new_AGEMA_signal_2361 ;
    wire new_AGEMA_signal_2362 ;
    wire new_AGEMA_signal_2363 ;
    wire new_AGEMA_signal_2364 ;
    wire new_AGEMA_signal_2365 ;
    wire new_AGEMA_signal_2366 ;
    wire new_AGEMA_signal_2367 ;
    wire new_AGEMA_signal_2368 ;
    wire new_AGEMA_signal_2369 ;
    wire new_AGEMA_signal_2370 ;
    wire new_AGEMA_signal_2371 ;
    wire new_AGEMA_signal_2372 ;
    wire new_AGEMA_signal_2373 ;
    wire new_AGEMA_signal_2374 ;
    wire new_AGEMA_signal_2375 ;
    wire new_AGEMA_signal_2376 ;
    wire new_AGEMA_signal_2377 ;
    wire new_AGEMA_signal_2378 ;
    wire new_AGEMA_signal_2379 ;
    wire new_AGEMA_signal_2380 ;
    wire new_AGEMA_signal_2381 ;
    wire new_AGEMA_signal_2382 ;
    wire new_AGEMA_signal_2383 ;
    wire new_AGEMA_signal_2384 ;
    wire new_AGEMA_signal_2385 ;
    wire new_AGEMA_signal_2386 ;
    wire new_AGEMA_signal_2387 ;
    wire new_AGEMA_signal_2388 ;
    wire new_AGEMA_signal_2389 ;
    wire new_AGEMA_signal_2390 ;
    wire new_AGEMA_signal_2391 ;
    wire new_AGEMA_signal_2392 ;
    wire new_AGEMA_signal_2393 ;
    wire new_AGEMA_signal_2394 ;
    wire new_AGEMA_signal_2395 ;
    wire new_AGEMA_signal_2396 ;
    wire new_AGEMA_signal_2397 ;
    wire new_AGEMA_signal_2398 ;
    wire new_AGEMA_signal_2399 ;
    wire new_AGEMA_signal_2400 ;
    wire new_AGEMA_signal_2401 ;
    wire new_AGEMA_signal_2402 ;
    wire new_AGEMA_signal_2403 ;
    wire new_AGEMA_signal_2404 ;
    wire new_AGEMA_signal_2405 ;
    wire new_AGEMA_signal_2406 ;
    wire new_AGEMA_signal_2407 ;
    wire new_AGEMA_signal_2408 ;
    wire new_AGEMA_signal_2409 ;
    wire new_AGEMA_signal_2410 ;
    wire new_AGEMA_signal_2411 ;
    wire new_AGEMA_signal_2412 ;
    wire new_AGEMA_signal_2413 ;
    wire new_AGEMA_signal_2414 ;
    wire new_AGEMA_signal_2415 ;
    wire new_AGEMA_signal_2416 ;
    wire new_AGEMA_signal_2417 ;
    wire new_AGEMA_signal_2418 ;
    wire new_AGEMA_signal_2419 ;
    wire new_AGEMA_signal_2420 ;
    wire new_AGEMA_signal_2421 ;
    wire new_AGEMA_signal_2422 ;
    wire new_AGEMA_signal_2423 ;
    wire new_AGEMA_signal_2424 ;
    wire new_AGEMA_signal_2425 ;
    wire new_AGEMA_signal_2426 ;
    wire new_AGEMA_signal_2427 ;
    wire new_AGEMA_signal_2428 ;
    wire new_AGEMA_signal_2429 ;
    wire new_AGEMA_signal_2430 ;
    wire new_AGEMA_signal_2431 ;
    wire new_AGEMA_signal_2432 ;
    wire new_AGEMA_signal_2433 ;
    wire new_AGEMA_signal_2434 ;
    wire new_AGEMA_signal_2435 ;
    wire new_AGEMA_signal_2436 ;
    wire new_AGEMA_signal_2437 ;
    wire new_AGEMA_signal_2438 ;
    wire new_AGEMA_signal_2439 ;
    wire new_AGEMA_signal_2440 ;
    wire new_AGEMA_signal_2441 ;
    wire new_AGEMA_signal_2442 ;
    wire new_AGEMA_signal_2443 ;
    wire new_AGEMA_signal_2444 ;
    wire new_AGEMA_signal_2445 ;
    wire new_AGEMA_signal_2446 ;
    wire new_AGEMA_signal_2447 ;
    wire new_AGEMA_signal_2448 ;
    wire new_AGEMA_signal_2449 ;
    wire new_AGEMA_signal_2450 ;
    wire new_AGEMA_signal_2451 ;
    wire new_AGEMA_signal_2452 ;
    wire new_AGEMA_signal_2453 ;
    wire new_AGEMA_signal_2454 ;
    wire new_AGEMA_signal_2455 ;
    wire new_AGEMA_signal_2456 ;
    wire new_AGEMA_signal_2457 ;
    wire new_AGEMA_signal_2458 ;
    wire new_AGEMA_signal_2459 ;
    wire new_AGEMA_signal_2460 ;
    wire new_AGEMA_signal_2461 ;
    wire new_AGEMA_signal_2462 ;
    wire new_AGEMA_signal_2463 ;
    wire new_AGEMA_signal_2464 ;
    wire new_AGEMA_signal_2465 ;
    wire new_AGEMA_signal_2466 ;
    wire new_AGEMA_signal_2467 ;
    wire new_AGEMA_signal_2468 ;
    wire new_AGEMA_signal_2469 ;
    wire new_AGEMA_signal_2470 ;
    wire new_AGEMA_signal_2471 ;
    wire new_AGEMA_signal_2472 ;
    wire new_AGEMA_signal_2473 ;
    wire new_AGEMA_signal_2474 ;
    wire new_AGEMA_signal_2475 ;
    wire new_AGEMA_signal_2476 ;
    wire new_AGEMA_signal_2477 ;
    wire new_AGEMA_signal_2478 ;
    wire new_AGEMA_signal_2479 ;
    wire new_AGEMA_signal_2480 ;
    wire new_AGEMA_signal_2481 ;
    wire new_AGEMA_signal_2482 ;
    wire new_AGEMA_signal_2483 ;
    wire new_AGEMA_signal_2484 ;
    wire new_AGEMA_signal_2485 ;
    wire new_AGEMA_signal_2486 ;
    wire new_AGEMA_signal_2487 ;
    wire new_AGEMA_signal_2488 ;
    wire new_AGEMA_signal_2489 ;
    wire new_AGEMA_signal_2490 ;
    wire new_AGEMA_signal_2491 ;
    wire new_AGEMA_signal_2492 ;
    wire new_AGEMA_signal_2493 ;
    wire new_AGEMA_signal_2494 ;
    wire new_AGEMA_signal_2495 ;
    wire new_AGEMA_signal_2496 ;
    wire new_AGEMA_signal_2497 ;
    wire new_AGEMA_signal_2498 ;
    wire new_AGEMA_signal_2499 ;
    wire new_AGEMA_signal_2500 ;
    wire new_AGEMA_signal_2501 ;
    wire new_AGEMA_signal_2502 ;
    wire new_AGEMA_signal_2503 ;
    wire new_AGEMA_signal_2504 ;
    wire new_AGEMA_signal_2505 ;
    wire new_AGEMA_signal_2506 ;
    wire new_AGEMA_signal_2507 ;
    wire new_AGEMA_signal_2508 ;
    wire new_AGEMA_signal_2509 ;
    wire new_AGEMA_signal_2510 ;
    wire new_AGEMA_signal_2511 ;
    wire new_AGEMA_signal_2512 ;
    wire new_AGEMA_signal_2513 ;
    wire new_AGEMA_signal_2514 ;
    wire new_AGEMA_signal_2515 ;
    wire new_AGEMA_signal_2516 ;
    wire new_AGEMA_signal_2517 ;
    wire new_AGEMA_signal_2518 ;
    wire new_AGEMA_signal_2519 ;
    wire new_AGEMA_signal_2520 ;
    wire new_AGEMA_signal_2521 ;
    wire new_AGEMA_signal_2522 ;
    wire new_AGEMA_signal_2523 ;
    wire new_AGEMA_signal_2524 ;
    wire new_AGEMA_signal_2525 ;
    wire new_AGEMA_signal_2526 ;
    wire new_AGEMA_signal_2527 ;
    wire new_AGEMA_signal_2528 ;
    wire new_AGEMA_signal_2529 ;
    wire new_AGEMA_signal_2530 ;
    wire new_AGEMA_signal_2531 ;
    wire new_AGEMA_signal_2532 ;
    wire new_AGEMA_signal_2533 ;
    wire new_AGEMA_signal_2534 ;
    wire new_AGEMA_signal_2535 ;
    wire new_AGEMA_signal_2536 ;
    wire new_AGEMA_signal_2537 ;
    wire new_AGEMA_signal_2538 ;
    wire new_AGEMA_signal_2539 ;
    wire new_AGEMA_signal_2540 ;
    wire new_AGEMA_signal_2541 ;
    wire new_AGEMA_signal_2542 ;
    wire new_AGEMA_signal_2543 ;
    wire new_AGEMA_signal_2544 ;
    wire new_AGEMA_signal_2545 ;
    wire new_AGEMA_signal_2546 ;
    wire new_AGEMA_signal_2547 ;
    wire new_AGEMA_signal_2548 ;
    wire new_AGEMA_signal_2549 ;
    wire new_AGEMA_signal_2550 ;
    wire new_AGEMA_signal_2551 ;
    wire new_AGEMA_signal_2552 ;
    wire new_AGEMA_signal_2553 ;
    wire new_AGEMA_signal_2554 ;
    wire new_AGEMA_signal_2555 ;
    wire new_AGEMA_signal_2556 ;
    wire new_AGEMA_signal_2557 ;
    wire new_AGEMA_signal_2558 ;
    wire new_AGEMA_signal_2559 ;
    wire new_AGEMA_signal_2560 ;
    wire new_AGEMA_signal_2561 ;
    wire new_AGEMA_signal_2562 ;
    wire new_AGEMA_signal_2563 ;
    wire new_AGEMA_signal_2564 ;
    wire new_AGEMA_signal_2565 ;
    wire new_AGEMA_signal_2566 ;
    wire new_AGEMA_signal_2567 ;
    wire new_AGEMA_signal_2568 ;
    wire new_AGEMA_signal_2569 ;
    wire new_AGEMA_signal_2570 ;
    wire new_AGEMA_signal_2571 ;
    wire new_AGEMA_signal_2572 ;
    wire new_AGEMA_signal_2573 ;
    wire new_AGEMA_signal_2574 ;
    wire new_AGEMA_signal_2575 ;
    wire new_AGEMA_signal_2576 ;
    wire new_AGEMA_signal_2577 ;
    wire new_AGEMA_signal_2578 ;
    wire new_AGEMA_signal_2579 ;
    wire new_AGEMA_signal_2580 ;
    wire new_AGEMA_signal_2581 ;
    wire new_AGEMA_signal_2582 ;
    wire new_AGEMA_signal_2583 ;
    wire new_AGEMA_signal_2584 ;
    wire new_AGEMA_signal_2585 ;
    wire new_AGEMA_signal_2586 ;
    wire new_AGEMA_signal_2587 ;
    wire new_AGEMA_signal_2588 ;
    wire new_AGEMA_signal_2589 ;
    wire new_AGEMA_signal_2590 ;
    wire new_AGEMA_signal_2591 ;
    wire new_AGEMA_signal_2592 ;
    wire new_AGEMA_signal_2593 ;
    wire new_AGEMA_signal_2594 ;
    wire new_AGEMA_signal_2595 ;
    wire new_AGEMA_signal_2596 ;
    wire new_AGEMA_signal_2597 ;
    wire new_AGEMA_signal_2598 ;
    wire new_AGEMA_signal_2599 ;
    wire new_AGEMA_signal_2600 ;
    wire new_AGEMA_signal_2601 ;
    wire new_AGEMA_signal_2602 ;
    wire new_AGEMA_signal_2603 ;
    wire new_AGEMA_signal_2604 ;
    wire new_AGEMA_signal_2605 ;
    wire new_AGEMA_signal_2606 ;
    wire new_AGEMA_signal_2607 ;
    wire new_AGEMA_signal_2608 ;
    wire new_AGEMA_signal_2609 ;
    wire new_AGEMA_signal_2610 ;
    wire new_AGEMA_signal_2611 ;
    wire new_AGEMA_signal_2612 ;
    wire new_AGEMA_signal_2613 ;
    wire new_AGEMA_signal_2614 ;
    wire new_AGEMA_signal_2615 ;
    wire new_AGEMA_signal_2616 ;
    wire new_AGEMA_signal_2617 ;
    wire new_AGEMA_signal_2618 ;
    wire new_AGEMA_signal_2619 ;
    wire new_AGEMA_signal_2620 ;
    wire new_AGEMA_signal_2621 ;
    wire new_AGEMA_signal_2622 ;
    wire new_AGEMA_signal_2623 ;
    wire new_AGEMA_signal_2624 ;
    wire new_AGEMA_signal_2625 ;
    wire new_AGEMA_signal_2626 ;
    wire new_AGEMA_signal_2627 ;
    wire new_AGEMA_signal_2628 ;
    wire new_AGEMA_signal_2629 ;
    wire new_AGEMA_signal_2630 ;
    wire new_AGEMA_signal_2631 ;
    wire new_AGEMA_signal_2632 ;
    wire new_AGEMA_signal_2633 ;
    wire new_AGEMA_signal_2634 ;
    wire new_AGEMA_signal_2635 ;
    wire new_AGEMA_signal_2636 ;
    wire new_AGEMA_signal_2637 ;
    wire new_AGEMA_signal_2638 ;
    wire new_AGEMA_signal_2639 ;
    wire new_AGEMA_signal_2640 ;
    wire new_AGEMA_signal_2641 ;
    wire new_AGEMA_signal_2642 ;
    wire new_AGEMA_signal_2643 ;
    wire new_AGEMA_signal_2644 ;
    wire new_AGEMA_signal_2645 ;
    wire new_AGEMA_signal_2646 ;
    wire new_AGEMA_signal_2647 ;
    wire new_AGEMA_signal_2648 ;
    wire new_AGEMA_signal_2649 ;
    wire new_AGEMA_signal_2650 ;
    wire new_AGEMA_signal_2651 ;
    wire new_AGEMA_signal_2652 ;
    wire new_AGEMA_signal_2653 ;
    wire new_AGEMA_signal_2654 ;
    wire new_AGEMA_signal_2655 ;
    wire new_AGEMA_signal_2656 ;
    wire new_AGEMA_signal_2657 ;
    wire new_AGEMA_signal_2658 ;
    wire new_AGEMA_signal_2659 ;
    wire new_AGEMA_signal_2660 ;
    wire new_AGEMA_signal_2661 ;
    wire new_AGEMA_signal_2662 ;
    wire new_AGEMA_signal_2663 ;
    wire new_AGEMA_signal_2664 ;
    wire new_AGEMA_signal_2665 ;
    wire new_AGEMA_signal_2666 ;
    wire new_AGEMA_signal_2667 ;
    wire new_AGEMA_signal_2668 ;
    wire new_AGEMA_signal_2669 ;
    wire new_AGEMA_signal_2670 ;
    wire new_AGEMA_signal_2671 ;
    wire new_AGEMA_signal_2672 ;
    wire new_AGEMA_signal_2673 ;
    wire new_AGEMA_signal_2674 ;
    wire new_AGEMA_signal_2675 ;
    wire new_AGEMA_signal_2676 ;
    wire new_AGEMA_signal_2677 ;
    wire new_AGEMA_signal_2678 ;
    wire new_AGEMA_signal_2679 ;
    wire new_AGEMA_signal_2680 ;
    wire new_AGEMA_signal_2681 ;
    wire new_AGEMA_signal_2682 ;
    wire new_AGEMA_signal_2683 ;
    wire new_AGEMA_signal_2684 ;
    wire new_AGEMA_signal_2685 ;
    wire new_AGEMA_signal_2686 ;
    wire new_AGEMA_signal_2687 ;
    wire new_AGEMA_signal_2688 ;
    wire new_AGEMA_signal_2689 ;
    wire new_AGEMA_signal_2690 ;
    wire new_AGEMA_signal_2691 ;
    wire new_AGEMA_signal_2692 ;
    wire new_AGEMA_signal_2693 ;
    wire new_AGEMA_signal_2694 ;
    wire new_AGEMA_signal_2695 ;
    wire new_AGEMA_signal_2696 ;
    wire new_AGEMA_signal_2697 ;
    wire new_AGEMA_signal_2698 ;
    wire new_AGEMA_signal_2699 ;
    wire new_AGEMA_signal_2700 ;
    wire new_AGEMA_signal_2701 ;
    wire new_AGEMA_signal_2702 ;
    wire new_AGEMA_signal_2703 ;
    wire clk_gated ;



    /* cells added manually */

    /* ---------------------------------------------------------------- */
    
    wire sum_r;
    wire common_out;
    
    assign sum_r = Fresh[2] ^ Fresh[3] ^ Fresh[4] ^ Fresh[5];
    reg1 reg_sum_r  (.clk(clk), .d(sum_r),      .q(common_out));
        
    wire in0_masked, in1_masked;
    wire [1:0] common_and;
    
    assign in0_masked = common_out ^ Fresh[0];
    assign in1_masked = common_out ^ Fresh[1];

    reg1 reg_in0_masked (.clk(clk), .d(in0_masked), .q(common_and[0]));
    reg1 reg_in1_masked (.clk(clk), .d(in1_masked), .q(common_and[1]));
    
    wire xor1_masked, xor3_masked;
    wire [1:0] common_xor;
    
    assign xor1_masked = common_and[0] ^ Fresh[3]; 
    assign xor3_masked = common_and[1] ^ Fresh[5]; 

    reg1 reg_xor1_masked (.clk(clk), .d(xor1_masked), .q(common_xor[0]));
    reg1 reg_xor3_masked (.clk(clk), .d(xor3_masked), .q(common_xor[1]));

    //-------

    wire common_out2;
    wire common_out3;
    wire common_out4;

    wire in0_masked2, in1_masked2;
    wire [1:0] common_and2;
    
    assign in0_masked2 = common_out2 ^ Fresh[0];
    assign in1_masked2 = common_out2 ^ Fresh[1];

    reg1 reg_in0_masked2 (.clk(clk), .d(in0_masked2), .q(common_and2[0]));
    reg1 reg_in1_masked2 (.clk(clk), .d(in1_masked2), .q(common_and2[1]));
    
    wire xor1_masked2, xor3_masked2;
    wire [1:0] common_xor2;
    
    assign xor1_masked2 = common_and2[0] ^ Fresh[3]; 
    assign xor3_masked2 = common_and2[1] ^ Fresh[5]; 

    reg1 reg_xor1_masked2 (.clk(clk), .d(xor1_masked2), .q(common_xor2[0]));
    reg1 reg_xor3_masked2 (.clk(clk), .d(xor3_masked2), .q(common_xor2[1]));

    /* ---------------------------------------------------------------- */
    
    xor_COMAR  in_xor_p00 ( .common_out(common_out), .a ({DataIn_s1[ 0], DataIn_s0[ 0]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_DataIn_s1[ 0], correct_DataIn_s0[ 0]}) ) ;
    xor_COMAR  in_xor_p01 ( .common_out(common_out), .a ({DataIn_s1[ 1], DataIn_s0[ 1]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_DataIn_s1[ 1], correct_DataIn_s0[ 1]}) ) ;
    xor_COMAR  in_xor_p02 ( .common_out(common_out), .a ({DataIn_s1[ 2], DataIn_s0[ 2]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_DataIn_s1[ 2], correct_DataIn_s0[ 2]}) ) ;
    xor_COMAR  in_xor_p03 ( .common_out(common_out), .a ({DataIn_s1[ 3], DataIn_s0[ 3]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_DataIn_s1[ 3], correct_DataIn_s0[ 3]}) ) ;
    xor_COMAR  in_xor_p04 ( .common_out(common_out), .a ({DataIn_s1[ 4], DataIn_s0[ 4]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_DataIn_s1[ 4], correct_DataIn_s0[ 4]}) ) ;
    xor_COMAR  in_xor_p05 ( .common_out(common_out), .a ({DataIn_s1[ 5], DataIn_s0[ 5]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_DataIn_s1[ 5], correct_DataIn_s0[ 5]}) ) ;
    xor_COMAR  in_xor_p06 ( .common_out(common_out), .a ({DataIn_s1[ 6], DataIn_s0[ 6]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_DataIn_s1[ 6], correct_DataIn_s0[ 6]}) ) ;
    xor_COMAR  in_xor_p07 ( .common_out(common_out), .a ({DataIn_s1[ 7], DataIn_s0[ 7]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_DataIn_s1[ 7], correct_DataIn_s0[ 7]}) ) ;
    xor_COMAR  in_xor_p08 ( .common_out(common_out), .a ({DataIn_s1[ 8], DataIn_s0[ 8]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_DataIn_s1[ 8], correct_DataIn_s0[ 8]}) ) ;
    xor_COMAR  in_xor_p09 ( .common_out(common_out), .a ({DataIn_s1[ 9], DataIn_s0[ 9]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_DataIn_s1[ 9], correct_DataIn_s0[ 9]}) ) ;
    xor_COMAR  in_xor_p10 ( .common_out(common_out), .a ({DataIn_s1[10], DataIn_s0[10]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_DataIn_s1[10], correct_DataIn_s0[10]}) ) ;
    xor_COMAR  in_xor_p11 ( .common_out(common_out), .a ({DataIn_s1[11], DataIn_s0[11]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_DataIn_s1[11], correct_DataIn_s0[11]}) ) ;
    xor_COMAR  in_xor_p12 ( .common_out(common_out), .a ({DataIn_s1[12], DataIn_s0[12]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_DataIn_s1[12], correct_DataIn_s0[12]}) ) ;
    xor_COMAR  in_xor_p13 ( .common_out(common_out), .a ({DataIn_s1[13], DataIn_s0[13]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_DataIn_s1[13], correct_DataIn_s0[13]}) ) ;
    xor_COMAR  in_xor_p14 ( .common_out(common_out), .a ({DataIn_s1[14], DataIn_s0[14]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_DataIn_s1[14], correct_DataIn_s0[14]}) ) ;
    xor_COMAR  in_xor_p15 ( .common_out(common_out), .a ({DataIn_s1[15], DataIn_s0[15]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_DataIn_s1[15], correct_DataIn_s0[15]}) ) ;
    xor_COMAR  in_xor_p16 ( .common_out(common_out), .a ({DataIn_s1[16], DataIn_s0[16]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_DataIn_s1[16], correct_DataIn_s0[16]}) ) ;
    xor_COMAR  in_xor_p17 ( .common_out(common_out), .a ({DataIn_s1[17], DataIn_s0[17]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_DataIn_s1[17], correct_DataIn_s0[17]}) ) ;
    xor_COMAR  in_xor_p18 ( .common_out(common_out), .a ({DataIn_s1[18], DataIn_s0[18]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_DataIn_s1[18], correct_DataIn_s0[18]}) ) ;
    xor_COMAR  in_xor_p19 ( .common_out(common_out), .a ({DataIn_s1[19], DataIn_s0[19]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_DataIn_s1[19], correct_DataIn_s0[19]}) ) ;
    xor_COMAR  in_xor_p20 ( .common_out(common_out), .a ({DataIn_s1[20], DataIn_s0[20]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_DataIn_s1[20], correct_DataIn_s0[20]}) ) ;
    xor_COMAR  in_xor_p21 ( .common_out(common_out), .a ({DataIn_s1[21], DataIn_s0[21]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_DataIn_s1[21], correct_DataIn_s0[21]}) ) ;
    xor_COMAR  in_xor_p22 ( .common_out(common_out), .a ({DataIn_s1[22], DataIn_s0[22]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_DataIn_s1[22], correct_DataIn_s0[22]}) ) ;
    xor_COMAR  in_xor_p23 ( .common_out(common_out), .a ({DataIn_s1[23], DataIn_s0[23]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_DataIn_s1[23], correct_DataIn_s0[23]}) ) ;
    xor_COMAR  in_xor_p24 ( .common_out(common_out), .a ({DataIn_s1[24], DataIn_s0[24]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_DataIn_s1[24], correct_DataIn_s0[24]}) ) ;
    xor_COMAR  in_xor_p25 ( .common_out(common_out), .a ({DataIn_s1[25], DataIn_s0[25]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_DataIn_s1[25], correct_DataIn_s0[25]}) ) ;
    xor_COMAR  in_xor_p26 ( .common_out(common_out), .a ({DataIn_s1[26], DataIn_s0[26]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_DataIn_s1[26], correct_DataIn_s0[26]}) ) ;
    xor_COMAR  in_xor_p27 ( .common_out(common_out), .a ({DataIn_s1[27], DataIn_s0[27]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_DataIn_s1[27], correct_DataIn_s0[27]}) ) ;
    xor_COMAR  in_xor_p28 ( .common_out(common_out), .a ({DataIn_s1[28], DataIn_s0[28]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_DataIn_s1[28], correct_DataIn_s0[28]}) ) ;
    xor_COMAR  in_xor_p29 ( .common_out(common_out), .a ({DataIn_s1[29], DataIn_s0[29]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_DataIn_s1[29], correct_DataIn_s0[29]}) ) ;
    xor_COMAR  in_xor_p30 ( .common_out(common_out), .a ({DataIn_s1[30], DataIn_s0[30]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_DataIn_s1[30], correct_DataIn_s0[30]}) ) ;
    xor_COMAR  in_xor_p31 ( .common_out(common_out), .a ({DataIn_s1[31], DataIn_s0[31]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_DataIn_s1[31], correct_DataIn_s0[31]}) ) ;
    xor_COMAR  in_xor_p32 ( .common_out(common_out), .a ({DataIn_s1[32], DataIn_s0[32]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_DataIn_s1[32], correct_DataIn_s0[32]}) ) ;
    xor_COMAR  in_xor_p33 ( .common_out(common_out), .a ({DataIn_s1[33], DataIn_s0[33]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_DataIn_s1[33], correct_DataIn_s0[33]}) ) ;
    xor_COMAR  in_xor_p34 ( .common_out(common_out), .a ({DataIn_s1[34], DataIn_s0[34]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_DataIn_s1[34], correct_DataIn_s0[34]}) ) ;
    xor_COMAR  in_xor_p35 ( .common_out(common_out), .a ({DataIn_s1[35], DataIn_s0[35]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_DataIn_s1[35], correct_DataIn_s0[35]}) ) ;
    xor_COMAR  in_xor_p36 ( .common_out(common_out), .a ({DataIn_s1[36], DataIn_s0[36]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_DataIn_s1[36], correct_DataIn_s0[36]}) ) ;
    xor_COMAR  in_xor_p37 ( .common_out(common_out), .a ({DataIn_s1[37], DataIn_s0[37]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_DataIn_s1[37], correct_DataIn_s0[37]}) ) ;
    xor_COMAR  in_xor_p38 ( .common_out(common_out), .a ({DataIn_s1[38], DataIn_s0[38]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_DataIn_s1[38], correct_DataIn_s0[38]}) ) ;
    xor_COMAR  in_xor_p39 ( .common_out(common_out), .a ({DataIn_s1[39], DataIn_s0[39]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_DataIn_s1[39], correct_DataIn_s0[39]}) ) ;
    xor_COMAR  in_xor_p40 ( .common_out(common_out), .a ({DataIn_s1[40], DataIn_s0[40]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_DataIn_s1[40], correct_DataIn_s0[40]}) ) ;
    xor_COMAR  in_xor_p41 ( .common_out(common_out), .a ({DataIn_s1[41], DataIn_s0[41]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_DataIn_s1[41], correct_DataIn_s0[41]}) ) ;
    xor_COMAR  in_xor_p42 ( .common_out(common_out), .a ({DataIn_s1[42], DataIn_s0[42]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_DataIn_s1[42], correct_DataIn_s0[42]}) ) ;
    xor_COMAR  in_xor_p43 ( .common_out(common_out), .a ({DataIn_s1[43], DataIn_s0[43]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_DataIn_s1[43], correct_DataIn_s0[43]}) ) ;
    xor_COMAR  in_xor_p44 ( .common_out(common_out), .a ({DataIn_s1[44], DataIn_s0[44]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_DataIn_s1[44], correct_DataIn_s0[44]}) ) ;
    xor_COMAR  in_xor_p45 ( .common_out(common_out), .a ({DataIn_s1[45], DataIn_s0[45]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_DataIn_s1[45], correct_DataIn_s0[45]}) ) ;
    xor_COMAR  in_xor_p46 ( .common_out(common_out), .a ({DataIn_s1[46], DataIn_s0[46]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_DataIn_s1[46], correct_DataIn_s0[46]}) ) ;
    xor_COMAR  in_xor_p47 ( .common_out(common_out), .a ({DataIn_s1[47], DataIn_s0[47]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_DataIn_s1[47], correct_DataIn_s0[47]}) ) ;
    xor_COMAR  in_xor_p48 ( .common_out(common_out), .a ({DataIn_s1[48], DataIn_s0[48]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_DataIn_s1[48], correct_DataIn_s0[48]}) ) ;
    xor_COMAR  in_xor_p49 ( .common_out(common_out), .a ({DataIn_s1[49], DataIn_s0[49]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_DataIn_s1[49], correct_DataIn_s0[49]}) ) ;
    xor_COMAR  in_xor_p50 ( .common_out(common_out), .a ({DataIn_s1[50], DataIn_s0[50]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_DataIn_s1[50], correct_DataIn_s0[50]}) ) ;
    xor_COMAR  in_xor_p51 ( .common_out(common_out), .a ({DataIn_s1[51], DataIn_s0[51]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_DataIn_s1[51], correct_DataIn_s0[51]}) ) ;
    xor_COMAR  in_xor_p52 ( .common_out(common_out), .a ({DataIn_s1[52], DataIn_s0[52]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_DataIn_s1[52], correct_DataIn_s0[52]}) ) ;
    xor_COMAR  in_xor_p53 ( .common_out(common_out), .a ({DataIn_s1[53], DataIn_s0[53]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_DataIn_s1[53], correct_DataIn_s0[53]}) ) ;
    xor_COMAR  in_xor_p54 ( .common_out(common_out), .a ({DataIn_s1[54], DataIn_s0[54]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_DataIn_s1[54], correct_DataIn_s0[54]}) ) ;
    xor_COMAR  in_xor_p55 ( .common_out(common_out), .a ({DataIn_s1[55], DataIn_s0[55]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_DataIn_s1[55], correct_DataIn_s0[55]}) ) ;
    xor_COMAR  in_xor_p56 ( .common_out(common_out), .a ({DataIn_s1[56], DataIn_s0[56]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_DataIn_s1[56], correct_DataIn_s0[56]}) ) ;
    xor_COMAR  in_xor_p57 ( .common_out(common_out), .a ({DataIn_s1[57], DataIn_s0[57]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_DataIn_s1[57], correct_DataIn_s0[57]}) ) ;
    xor_COMAR  in_xor_p58 ( .common_out(common_out), .a ({DataIn_s1[58], DataIn_s0[58]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_DataIn_s1[58], correct_DataIn_s0[58]}) ) ;
    xor_COMAR  in_xor_p59 ( .common_out(common_out), .a ({DataIn_s1[59], DataIn_s0[59]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_DataIn_s1[59], correct_DataIn_s0[59]}) ) ;
    xor_COMAR  in_xor_p60 ( .common_out(common_out), .a ({DataIn_s1[60], DataIn_s0[60]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_DataIn_s1[60], correct_DataIn_s0[60]}) ) ;
    xor_COMAR  in_xor_p61 ( .common_out(common_out), .a ({DataIn_s1[61], DataIn_s0[61]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_DataIn_s1[61], correct_DataIn_s0[61]}) ) ;
    xor_COMAR  in_xor_p62 ( .common_out(common_out), .a ({DataIn_s1[62], DataIn_s0[62]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_DataIn_s1[62], correct_DataIn_s0[62]}) ) ;
    xor_COMAR  in_xor_p63 ( .common_out(common_out), .a ({DataIn_s1[63], DataIn_s0[63]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_DataIn_s1[63], correct_DataIn_s0[63]}) ) ;
    
    xor_COMAR  in_xor_k00 ( .common_out(common_out), .a ({key_s1[ 0], key_s0[ 0]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[ 0], correct_key_s0[ 0]}) ) ;
    xor_COMAR  in_xor_k01 ( .common_out(common_out), .a ({key_s1[ 1], key_s0[ 1]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[ 1], correct_key_s0[ 1]}) ) ;
    xor_COMAR  in_xor_k02 ( .common_out(common_out), .a ({key_s1[ 2], key_s0[ 2]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[ 2], correct_key_s0[ 2]}) ) ;
    xor_COMAR  in_xor_k03 ( .common_out(common_out), .a ({key_s1[ 3], key_s0[ 3]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[ 3], correct_key_s0[ 3]}) ) ;
    xor_COMAR  in_xor_k04 ( .common_out(common_out), .a ({key_s1[ 4], key_s0[ 4]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[ 4], correct_key_s0[ 4]}) ) ;
    xor_COMAR  in_xor_k05 ( .common_out(common_out), .a ({key_s1[ 5], key_s0[ 5]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[ 5], correct_key_s0[ 5]}) ) ;
    xor_COMAR  in_xor_k06 ( .common_out(common_out), .a ({key_s1[ 6], key_s0[ 6]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[ 6], correct_key_s0[ 6]}) ) ;
    xor_COMAR  in_xor_k07 ( .common_out(common_out), .a ({key_s1[ 7], key_s0[ 7]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[ 7], correct_key_s0[ 7]}) ) ;
    xor_COMAR  in_xor_k08 ( .common_out(common_out), .a ({key_s1[ 8], key_s0[ 8]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[ 8], correct_key_s0[ 8]}) ) ;
    xor_COMAR  in_xor_k09 ( .common_out(common_out), .a ({key_s1[ 9], key_s0[ 9]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[ 9], correct_key_s0[ 9]}) ) ;
    xor_COMAR  in_xor_k10 ( .common_out(common_out), .a ({key_s1[10], key_s0[10]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[10], correct_key_s0[10]}) ) ;
    xor_COMAR  in_xor_k11 ( .common_out(common_out), .a ({key_s1[11], key_s0[11]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[11], correct_key_s0[11]}) ) ;
    xor_COMAR  in_xor_k12 ( .common_out(common_out), .a ({key_s1[12], key_s0[12]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[12], correct_key_s0[12]}) ) ;
    xor_COMAR  in_xor_k13 ( .common_out(common_out), .a ({key_s1[13], key_s0[13]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[13], correct_key_s0[13]}) ) ;
    xor_COMAR  in_xor_k14 ( .common_out(common_out), .a ({key_s1[14], key_s0[14]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[14], correct_key_s0[14]}) ) ;
    xor_COMAR  in_xor_k15 ( .common_out(common_out), .a ({key_s1[15], key_s0[15]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[15], correct_key_s0[15]}) ) ;
    xor_COMAR  in_xor_k16 ( .common_out(common_out), .a ({key_s1[16], key_s0[16]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[16], correct_key_s0[16]}) ) ;
    xor_COMAR  in_xor_k17 ( .common_out(common_out), .a ({key_s1[17], key_s0[17]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[17], correct_key_s0[17]}) ) ;
    xor_COMAR  in_xor_k18 ( .common_out(common_out), .a ({key_s1[18], key_s0[18]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[18], correct_key_s0[18]}) ) ;
    xor_COMAR  in_xor_k19 ( .common_out(common_out), .a ({key_s1[19], key_s0[19]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[19], correct_key_s0[19]}) ) ;
    xor_COMAR  in_xor_k20 ( .common_out(common_out), .a ({key_s1[20], key_s0[20]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[20], correct_key_s0[20]}) ) ;
    xor_COMAR  in_xor_k21 ( .common_out(common_out), .a ({key_s1[21], key_s0[21]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[21], correct_key_s0[21]}) ) ;
    xor_COMAR  in_xor_k22 ( .common_out(common_out), .a ({key_s1[22], key_s0[22]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[22], correct_key_s0[22]}) ) ;
    xor_COMAR  in_xor_k23 ( .common_out(common_out), .a ({key_s1[23], key_s0[23]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[23], correct_key_s0[23]}) ) ;
    xor_COMAR  in_xor_k24 ( .common_out(common_out), .a ({key_s1[24], key_s0[24]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[24], correct_key_s0[24]}) ) ;
    xor_COMAR  in_xor_k25 ( .common_out(common_out), .a ({key_s1[25], key_s0[25]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[25], correct_key_s0[25]}) ) ;
    xor_COMAR  in_xor_k26 ( .common_out(common_out), .a ({key_s1[26], key_s0[26]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[26], correct_key_s0[26]}) ) ;
    xor_COMAR  in_xor_k27 ( .common_out(common_out), .a ({key_s1[27], key_s0[27]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[27], correct_key_s0[27]}) ) ;
    xor_COMAR  in_xor_k28 ( .common_out(common_out), .a ({key_s1[28], key_s0[28]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[28], correct_key_s0[28]}) ) ;
    xor_COMAR  in_xor_k29 ( .common_out(common_out), .a ({key_s1[29], key_s0[29]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[29], correct_key_s0[29]}) ) ;
    xor_COMAR  in_xor_k30 ( .common_out(common_out), .a ({key_s1[30], key_s0[30]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[30], correct_key_s0[30]}) ) ;
    xor_COMAR  in_xor_k31 ( .common_out(common_out), .a ({key_s1[31], key_s0[31]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[31], correct_key_s0[31]}) ) ;
    xor_COMAR  in_xor_k32 ( .common_out(common_out), .a ({key_s1[32], key_s0[32]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[32], correct_key_s0[32]}) ) ;
    xor_COMAR  in_xor_k33 ( .common_out(common_out), .a ({key_s1[33], key_s0[33]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[33], correct_key_s0[33]}) ) ;
    xor_COMAR  in_xor_k34 ( .common_out(common_out), .a ({key_s1[34], key_s0[34]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[34], correct_key_s0[34]}) ) ;
    xor_COMAR  in_xor_k35 ( .common_out(common_out), .a ({key_s1[35], key_s0[35]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[35], correct_key_s0[35]}) ) ;
    xor_COMAR  in_xor_k36 ( .common_out(common_out), .a ({key_s1[36], key_s0[36]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[36], correct_key_s0[36]}) ) ;
    xor_COMAR  in_xor_k37 ( .common_out(common_out), .a ({key_s1[37], key_s0[37]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[37], correct_key_s0[37]}) ) ;
    xor_COMAR  in_xor_k38 ( .common_out(common_out), .a ({key_s1[38], key_s0[38]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[38], correct_key_s0[38]}) ) ;
    xor_COMAR  in_xor_k39 ( .common_out(common_out), .a ({key_s1[39], key_s0[39]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[39], correct_key_s0[39]}) ) ;
    xor_COMAR  in_xor_k40 ( .common_out(common_out), .a ({key_s1[40], key_s0[40]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[40], correct_key_s0[40]}) ) ;
    xor_COMAR  in_xor_k41 ( .common_out(common_out), .a ({key_s1[41], key_s0[41]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[41], correct_key_s0[41]}) ) ;
    xor_COMAR  in_xor_k42 ( .common_out(common_out), .a ({key_s1[42], key_s0[42]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[42], correct_key_s0[42]}) ) ;
    xor_COMAR  in_xor_k43 ( .common_out(common_out), .a ({key_s1[43], key_s0[43]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[43], correct_key_s0[43]}) ) ;
    xor_COMAR  in_xor_k44 ( .common_out(common_out), .a ({key_s1[44], key_s0[44]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[44], correct_key_s0[44]}) ) ;
    xor_COMAR  in_xor_k45 ( .common_out(common_out), .a ({key_s1[45], key_s0[45]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[45], correct_key_s0[45]}) ) ;
    xor_COMAR  in_xor_k46 ( .common_out(common_out), .a ({key_s1[46], key_s0[46]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[46], correct_key_s0[46]}) ) ;
    xor_COMAR  in_xor_k47 ( .common_out(common_out), .a ({key_s1[47], key_s0[47]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[47], correct_key_s0[47]}) ) ;
    xor_COMAR  in_xor_k48 ( .common_out(common_out), .a ({key_s1[48], key_s0[48]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[48], correct_key_s0[48]}) ) ;
    xor_COMAR  in_xor_k49 ( .common_out(common_out), .a ({key_s1[49], key_s0[49]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[49], correct_key_s0[49]}) ) ;
    xor_COMAR  in_xor_k50 ( .common_out(common_out), .a ({key_s1[50], key_s0[50]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[50], correct_key_s0[50]}) ) ;
    xor_COMAR  in_xor_k51 ( .common_out(common_out), .a ({key_s1[51], key_s0[51]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[51], correct_key_s0[51]}) ) ;
    xor_COMAR  in_xor_k52 ( .common_out(common_out), .a ({key_s1[52], key_s0[52]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[52], correct_key_s0[52]}) ) ;
    xor_COMAR  in_xor_k53 ( .common_out(common_out), .a ({key_s1[53], key_s0[53]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[53], correct_key_s0[53]}) ) ;
    xor_COMAR  in_xor_k54 ( .common_out(common_out), .a ({key_s1[54], key_s0[54]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[54], correct_key_s0[54]}) ) ;
    xor_COMAR  in_xor_k55 ( .common_out(common_out), .a ({key_s1[55], key_s0[55]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[55], correct_key_s0[55]}) ) ;
    xor_COMAR  in_xor_k56 ( .common_out(common_out), .a ({key_s1[56], key_s0[56]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[56], correct_key_s0[56]}) ) ;
    xor_COMAR  in_xor_k57 ( .common_out(common_out), .a ({key_s1[57], key_s0[57]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[57], correct_key_s0[57]}) ) ;
    xor_COMAR  in_xor_k58 ( .common_out(common_out), .a ({key_s1[58], key_s0[58]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[58], correct_key_s0[58]}) ) ;
    xor_COMAR  in_xor_k59 ( .common_out(common_out), .a ({key_s1[59], key_s0[59]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[59], correct_key_s0[59]}) ) ;
    xor_COMAR  in_xor_k60 ( .common_out(common_out), .a ({key_s1[60], key_s0[60]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[60], correct_key_s0[60]}) ) ;
    xor_COMAR  in_xor_k61 ( .common_out(common_out), .a ({key_s1[61], key_s0[61]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[61], correct_key_s0[61]}) ) ;
    xor_COMAR  in_xor_k62 ( .common_out(common_out), .a ({key_s1[62], key_s0[62]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[62], correct_key_s0[62]}) ) ;
    xor_COMAR  in_xor_k63 ( .common_out(common_out), .a ({key_s1[63], key_s0[63]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[63], correct_key_s0[63]}) ) ;
    xor_COMAR  in_xor_k64 ( .common_out(common_out), .a ({key_s1[64], key_s0[64]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[64], correct_key_s0[64]}) ) ;
    xor_COMAR  in_xor_k65 ( .common_out(common_out), .a ({key_s1[65], key_s0[65]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[65], correct_key_s0[65]}) ) ;
    xor_COMAR  in_xor_k66 ( .common_out(common_out), .a ({key_s1[66], key_s0[66]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[66], correct_key_s0[66]}) ) ;
    xor_COMAR  in_xor_k67 ( .common_out(common_out), .a ({key_s1[67], key_s0[67]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[67], correct_key_s0[67]}) ) ;
    xor_COMAR  in_xor_k68 ( .common_out(common_out), .a ({key_s1[68], key_s0[68]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[68], correct_key_s0[68]}) ) ;
    xor_COMAR  in_xor_k69 ( .common_out(common_out), .a ({key_s1[69], key_s0[69]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[69], correct_key_s0[69]}) ) ;
    xor_COMAR  in_xor_k70 ( .common_out(common_out), .a ({key_s1[70], key_s0[70]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[70], correct_key_s0[70]}) ) ;
    xor_COMAR  in_xor_k71 ( .common_out(common_out), .a ({key_s1[71], key_s0[71]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[71], correct_key_s0[71]}) ) ;
    xor_COMAR  in_xor_k72 ( .common_out(common_out), .a ({key_s1[72], key_s0[72]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[72], correct_key_s0[72]}) ) ;
    xor_COMAR  in_xor_k73 ( .common_out(common_out), .a ({key_s1[73], key_s0[73]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[73], correct_key_s0[73]}) ) ;
    xor_COMAR  in_xor_k74 ( .common_out(common_out), .a ({key_s1[74], key_s0[74]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[74], correct_key_s0[74]}) ) ;
    xor_COMAR  in_xor_k75 ( .common_out(common_out), .a ({key_s1[75], key_s0[75]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[75], correct_key_s0[75]}) ) ;
    xor_COMAR  in_xor_k76 ( .common_out(common_out), .a ({key_s1[76], key_s0[76]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[76], correct_key_s0[76]}) ) ;
    xor_COMAR  in_xor_k77 ( .common_out(common_out), .a ({key_s1[77], key_s0[77]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[77], correct_key_s0[77]}) ) ;
    xor_COMAR  in_xor_k78 ( .common_out(common_out), .a ({key_s1[78], key_s0[78]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[78], correct_key_s0[78]}) ) ;
    xor_COMAR  in_xor_k79 ( .common_out(common_out), .a ({key_s1[79], key_s0[79]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[79], correct_key_s0[79]}) ) ;
    xor_COMAR  in_xor_k80 ( .common_out(common_out), .a ({key_s1[80], key_s0[80]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[80], correct_key_s0[80]}) ) ;
    xor_COMAR  in_xor_k81 ( .common_out(common_out), .a ({key_s1[81], key_s0[81]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[81], correct_key_s0[81]}) ) ;
    xor_COMAR  in_xor_k82 ( .common_out(common_out), .a ({key_s1[82], key_s0[82]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[82], correct_key_s0[82]}) ) ;
    xor_COMAR  in_xor_k83 ( .common_out(common_out), .a ({key_s1[83], key_s0[83]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[83], correct_key_s0[83]}) ) ;
    xor_COMAR  in_xor_k84 ( .common_out(common_out), .a ({key_s1[84], key_s0[84]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[84], correct_key_s0[84]}) ) ;
    xor_COMAR  in_xor_k85 ( .common_out(common_out), .a ({key_s1[85], key_s0[85]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[85], correct_key_s0[85]}) ) ;
    xor_COMAR  in_xor_k86 ( .common_out(common_out), .a ({key_s1[86], key_s0[86]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[86], correct_key_s0[86]}) ) ;
    xor_COMAR  in_xor_k87 ( .common_out(common_out), .a ({key_s1[87], key_s0[87]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[87], correct_key_s0[87]}) ) ;
    xor_COMAR  in_xor_k88 ( .common_out(common_out), .a ({key_s1[88], key_s0[88]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[88], correct_key_s0[88]}) ) ;
    xor_COMAR  in_xor_k89 ( .common_out(common_out), .a ({key_s1[89], key_s0[89]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[89], correct_key_s0[89]}) ) ;
    xor_COMAR  in_xor_k90 ( .common_out(common_out), .a ({key_s1[90], key_s0[90]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[90], correct_key_s0[90]}) ) ;
    xor_COMAR  in_xor_k91 ( .common_out(common_out), .a ({key_s1[91], key_s0[91]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[91], correct_key_s0[91]}) ) ;
    xor_COMAR  in_xor_k92 ( .common_out(common_out), .a ({key_s1[92], key_s0[92]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[92], correct_key_s0[92]}) ) ;
    xor_COMAR  in_xor_k93 ( .common_out(common_out), .a ({key_s1[93], key_s0[93]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[93], correct_key_s0[93]}) ) ;
    xor_COMAR  in_xor_k94 ( .common_out(common_out), .a ({key_s1[94], key_s0[94]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[94], correct_key_s0[94]}) ) ;
    xor_COMAR  in_xor_k95 ( .common_out(common_out), .a ({key_s1[95], key_s0[95]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[95], correct_key_s0[95]}) ) ;
    xor_COMAR  in_xor_k96 ( .common_out(common_out), .a ({key_s1[96], key_s0[96]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[96], correct_key_s0[96]}) ) ;
    xor_COMAR  in_xor_k97 ( .common_out(common_out), .a ({key_s1[97], key_s0[97]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[97], correct_key_s0[97]}) ) ;
    xor_COMAR  in_xor_k98 ( .common_out(common_out), .a ({key_s1[98], key_s0[98]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[98], correct_key_s0[98]}) ) ;
    xor_COMAR  in_xor_k99 ( .common_out(common_out), .a ({key_s1[99], key_s0[99]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[99], correct_key_s0[99]}) ) ;
    xor_COMAR  in_xor_k100 ( .common_out(common_out), .a ({key_s1[100], key_s0[100]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[100], correct_key_s0[100]}) ) ;
    xor_COMAR  in_xor_k101 ( .common_out(common_out), .a ({key_s1[101], key_s0[101]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[101], correct_key_s0[101]}) ) ;
    xor_COMAR  in_xor_k102 ( .common_out(common_out), .a ({key_s1[102], key_s0[102]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[102], correct_key_s0[102]}) ) ;
    xor_COMAR  in_xor_k103 ( .common_out(common_out), .a ({key_s1[103], key_s0[103]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[103], correct_key_s0[103]}) ) ;
    xor_COMAR  in_xor_k104 ( .common_out(common_out), .a ({key_s1[104], key_s0[104]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[104], correct_key_s0[104]}) ) ;
    xor_COMAR  in_xor_k105 ( .common_out(common_out), .a ({key_s1[105], key_s0[105]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[105], correct_key_s0[105]}) ) ;
    xor_COMAR  in_xor_k106 ( .common_out(common_out), .a ({key_s1[106], key_s0[106]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[106], correct_key_s0[106]}) ) ;
    xor_COMAR  in_xor_k107 ( .common_out(common_out), .a ({key_s1[107], key_s0[107]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[107], correct_key_s0[107]}) ) ;
    xor_COMAR  in_xor_k108 ( .common_out(common_out), .a ({key_s1[108], key_s0[108]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[108], correct_key_s0[108]}) ) ;
    xor_COMAR  in_xor_k109 ( .common_out(common_out), .a ({key_s1[109], key_s0[109]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[109], correct_key_s0[109]}) ) ;
    xor_COMAR  in_xor_k110 ( .common_out(common_out), .a ({key_s1[110], key_s0[110]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[110], correct_key_s0[110]}) ) ;
    xor_COMAR  in_xor_k111 ( .common_out(common_out), .a ({key_s1[111], key_s0[111]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[111], correct_key_s0[111]}) ) ;
    xor_COMAR  in_xor_k112 ( .common_out(common_out), .a ({key_s1[112], key_s0[112]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[112], correct_key_s0[112]}) ) ;
    xor_COMAR  in_xor_k113 ( .common_out(common_out), .a ({key_s1[113], key_s0[113]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[113], correct_key_s0[113]}) ) ;
    xor_COMAR  in_xor_k114 ( .common_out(common_out), .a ({key_s1[114], key_s0[114]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[114], correct_key_s0[114]}) ) ;
    xor_COMAR  in_xor_k115 ( .common_out(common_out), .a ({key_s1[115], key_s0[115]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[115], correct_key_s0[115]}) ) ;
    xor_COMAR  in_xor_k116 ( .common_out(common_out), .a ({key_s1[116], key_s0[116]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[116], correct_key_s0[116]}) ) ;
    xor_COMAR  in_xor_k117 ( .common_out(common_out), .a ({key_s1[117], key_s0[117]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[117], correct_key_s0[117]}) ) ;
    xor_COMAR  in_xor_k118 ( .common_out(common_out), .a ({key_s1[118], key_s0[118]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[118], correct_key_s0[118]}) ) ;
    xor_COMAR  in_xor_k119 ( .common_out(common_out), .a ({key_s1[119], key_s0[119]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[119], correct_key_s0[119]}) ) ;
    xor_COMAR  in_xor_k120 ( .common_out(common_out), .a ({key_s1[120], key_s0[120]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[120], correct_key_s0[120]}) ) ;
    xor_COMAR  in_xor_k121 ( .common_out(common_out), .a ({key_s1[121], key_s0[121]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[121], correct_key_s0[121]}) ) ;
    xor_COMAR  in_xor_k122 ( .common_out(common_out), .a ({key_s1[122], key_s0[122]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[122], correct_key_s0[122]}) ) ;
    xor_COMAR  in_xor_k123 ( .common_out(common_out), .a ({key_s1[123], key_s0[123]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[123], correct_key_s0[123]}) ) ;
    xor_COMAR  in_xor_k124 ( .common_out(common_out), .a ({key_s1[124], key_s0[124]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[124], correct_key_s0[124]}) ) ;
    xor_COMAR  in_xor_k125 ( .common_out(common_out), .a ({key_s1[125], key_s0[125]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[125], correct_key_s0[125]}) ) ;
    xor_COMAR  in_xor_k126 ( .common_out(common_out), .a ({key_s1[126], key_s0[126]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[126], correct_key_s0[126]}) ) ;
    xor_COMAR  in_xor_k127 ( .common_out(common_out), .a ({key_s1[127], key_s0[127]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_key_s1[127], correct_key_s0[127]}) ) ;

    
    reg1 rst_reg1 (.clk(clk), .d(reset),      .q(temp_reset));
    reg1 rst_reg2 (.clk(clk), .d(temp_reset), .q(correct_reset));
    
    //-----------------------------------------------------























    /* cells in depth 0 */
    NOR2_X1 controller_U3 ( .A1 (controller_n2), .A2 (controller_n1), .ZN (done) ) ;
    NAND2_X1 controller_U2 ( .A1 (round_Signal[0]), .A2 (round_Signal[1]), .ZN (controller_n1) ) ;
    NAND2_X1 controller_U1 ( .A1 (round_Signal[2]), .A2 (round_Signal[3]), .ZN (controller_n2) ) ;
    INV_X1 controller_roundCounter_U14 ( .A (controller_roundCounter_n13), .ZN (controller_roundCounter_n2) ) ;
    MUX2_X1 controller_roundCounter_U13 ( .S (controller_roundCounter_n6), .A (controller_roundCounter_n12), .B (controller_roundCounter_n11), .Z (controller_roundCounter_n13) ) ;
    NOR2_X1 controller_roundCounter_U12 ( .A1 (correct_reset), .A2 (controller_roundCounter_n10), .ZN (controller_roundCounter_N8) ) ;
    XNOR2_X1 controller_roundCounter_U11 ( .A (round_Signal[0]), .B (round_Signal[1]), .ZN (controller_roundCounter_n10) ) ;
    MUX2_X1 controller_roundCounter_U10 ( .S (round_Signal[3]), .A (controller_roundCounter_n9), .B (controller_roundCounter_n8), .Z (controller_roundCounter_N10) ) ;
    NAND2_X1 controller_roundCounter_U9 ( .A1 (controller_roundCounter_n12), .A2 (controller_roundCounter_n7), .ZN (controller_roundCounter_n8) ) ;
    NAND2_X1 controller_roundCounter_U8 ( .A1 (controller_roundCounter_n6), .A2 (controller_roundCounter_n3), .ZN (controller_roundCounter_n7) ) ;
    NOR2_X1 controller_roundCounter_U7 ( .A1 (controller_roundCounter_n5), .A2 (controller_roundCounter_N7), .ZN (controller_roundCounter_n12) ) ;
    NOR2_X1 controller_roundCounter_U6 ( .A1 (round_Signal[1]), .A2 (correct_reset), .ZN (controller_roundCounter_n5) ) ;
    NOR2_X1 controller_roundCounter_U5 ( .A1 (controller_roundCounter_n6), .A2 (controller_roundCounter_n11), .ZN (controller_roundCounter_n9) ) ;
    NAND2_X1 controller_roundCounter_U4 ( .A1 (round_Signal[1]), .A2 (controller_roundCounter_n4), .ZN (controller_roundCounter_n11) ) ;
    NOR2_X1 controller_roundCounter_U3 ( .A1 (correct_reset), .A2 (controller_roundCounter_n1), .ZN (controller_roundCounter_n4) ) ;
    NOR2_X1 controller_roundCounter_U2 ( .A1 (correct_reset), .A2 (round_Signal[0]), .ZN (controller_roundCounter_N7) ) ;
    INV_X1 controller_roundCounter_U1 ( .A (correct_reset), .ZN (controller_roundCounter_n3) ) ;
    INV_X1 controller_roundCounter_count_reg_0__U1 ( .A (round_Signal[0]), .ZN (controller_roundCounter_n1) ) ;
    INV_X1 controller_roundCounter_count_reg_2__U1 ( .A (round_Signal[2]), .ZN (controller_roundCounter_n6) ) ;
    NAND2_X1 Midori_rounds_constant_MUX_U106 ( .A1 (Midori_rounds_constant_MUX_n217), .A2 (Midori_rounds_constant_MUX_n216), .ZN (Midori_rounds_round_Constant[9]) ) ;
    NOR2_X1 Midori_rounds_constant_MUX_U105 ( .A1 (Midori_rounds_constant_MUX_n215), .A2 (Midori_rounds_constant_MUX_n214), .ZN (Midori_rounds_constant_MUX_n217) ) ;
    OR2_X1 Midori_rounds_constant_MUX_U104 ( .A1 (Midori_rounds_constant_MUX_n213), .A2 (Midori_rounds_constant_MUX_n212), .ZN (Midori_rounds_constant_MUX_n214) ) ;
    NAND2_X1 Midori_rounds_constant_MUX_U103 ( .A1 (Midori_rounds_constant_MUX_n211), .A2 (Midori_rounds_constant_MUX_n210), .ZN (Midori_rounds_round_Constant[8]) ) ;
    NAND2_X1 Midori_rounds_constant_MUX_U102 ( .A1 (Midori_rounds_constant_MUX_n209), .A2 (Midori_rounds_constant_MUX_n208), .ZN (Midori_rounds_round_Constant[7]) ) ;
    NOR2_X1 Midori_rounds_constant_MUX_U101 ( .A1 (Midori_rounds_round_Constant[11]), .A2 (Midori_rounds_constant_MUX_n207), .ZN (Midori_rounds_constant_MUX_n208) ) ;
    NAND2_X1 Midori_rounds_constant_MUX_U100 ( .A1 (Midori_rounds_constant_MUX_n206), .A2 (Midori_rounds_constant_MUX_n205), .ZN (Midori_rounds_constant_MUX_n207) ) ;
    NOR2_X1 Midori_rounds_constant_MUX_U99 ( .A1 (Midori_rounds_constant_MUX_n204), .A2 (Midori_rounds_constant_MUX_n203), .ZN (Midori_rounds_constant_MUX_n206) ) ;
    NAND2_X1 Midori_rounds_constant_MUX_U98 ( .A1 (Midori_rounds_constant_MUX_n202), .A2 (Midori_rounds_constant_MUX_n201), .ZN (Midori_rounds_round_Constant[6]) ) ;
    NOR2_X1 Midori_rounds_constant_MUX_U97 ( .A1 (Midori_rounds_constant_MUX_n200), .A2 (Midori_rounds_constant_MUX_n199), .ZN (Midori_rounds_constant_MUX_n201) ) ;
    NAND2_X1 Midori_rounds_constant_MUX_U96 ( .A1 (Midori_rounds_constant_MUX_n198), .A2 (Midori_rounds_constant_MUX_n197), .ZN (Midori_rounds_round_Constant[5]) ) ;
    NOR2_X1 Midori_rounds_constant_MUX_U95 ( .A1 (Midori_rounds_constant_MUX_n212), .A2 (Midori_rounds_constant_MUX_n196), .ZN (Midori_rounds_constant_MUX_n197) ) ;
    NAND2_X1 Midori_rounds_constant_MUX_U94 ( .A1 (Midori_rounds_constant_MUX_n195), .A2 (Midori_rounds_constant_MUX_n205), .ZN (Midori_rounds_constant_MUX_n196) ) ;
    NAND2_X1 Midori_rounds_constant_MUX_U93 ( .A1 (Midori_rounds_constant_MUX_n194), .A2 (Midori_rounds_constant_MUX_n195), .ZN (Midori_rounds_round_Constant[4]) ) ;
    NOR2_X1 Midori_rounds_constant_MUX_U92 ( .A1 (Midori_rounds_constant_MUX_n193), .A2 (Midori_rounds_constant_MUX_n192), .ZN (Midori_rounds_constant_MUX_n195) ) ;
    NAND2_X1 Midori_rounds_constant_MUX_U91 ( .A1 (Midori_rounds_constant_MUX_n191), .A2 (Midori_rounds_constant_MUX_n190), .ZN (Midori_rounds_round_Constant[3]) ) ;
    NOR2_X1 Midori_rounds_constant_MUX_U90 ( .A1 (Midori_rounds_constant_MUX_n215), .A2 (Midori_rounds_constant_MUX_n189), .ZN (Midori_rounds_constant_MUX_n191) ) ;
    NAND2_X1 Midori_rounds_constant_MUX_U89 ( .A1 (Midori_rounds_constant_MUX_n188), .A2 (Midori_rounds_constant_MUX_n205), .ZN (Midori_rounds_constant_MUX_n189) ) ;
    INV_X1 Midori_rounds_constant_MUX_U88 ( .A (Midori_rounds_constant_MUX_n187), .ZN (Midori_rounds_constant_MUX_n188) ) ;
    OR2_X1 Midori_rounds_constant_MUX_U87 ( .A1 (Midori_rounds_constant_MUX_n215), .A2 (Midori_rounds_constant_MUX_n186), .ZN (Midori_rounds_round_Constant[2]) ) ;
    NAND2_X1 Midori_rounds_constant_MUX_U86 ( .A1 (Midori_rounds_constant_MUX_n202), .A2 (Midori_rounds_constant_MUX_n185), .ZN (Midori_rounds_constant_MUX_n186) ) ;
    NOR2_X1 Midori_rounds_constant_MUX_U85 ( .A1 (Midori_rounds_constant_MUX_n184), .A2 (Midori_rounds_constant_MUX_n212), .ZN (Midori_rounds_constant_MUX_n202) ) ;
    NAND2_X1 Midori_rounds_constant_MUX_U84 ( .A1 (Midori_rounds_constant_MUX_n183), .A2 (Midori_rounds_constant_MUX_n210), .ZN (Midori_rounds_constant_MUX_n215) ) ;
    NAND2_X1 Midori_rounds_constant_MUX_U83 ( .A1 (Midori_rounds_constant_MUX_n182), .A2 (Midori_rounds_constant_MUX_n181), .ZN (Midori_rounds_round_Constant[1]) ) ;
    NOR2_X1 Midori_rounds_constant_MUX_U82 ( .A1 (Midori_rounds_constant_MUX_n187), .A2 (Midori_rounds_constant_MUX_n180), .ZN (Midori_rounds_constant_MUX_n181) ) ;
    OR2_X1 Midori_rounds_constant_MUX_U81 ( .A1 (Midori_rounds_constant_MUX_n212), .A2 (Midori_rounds_constant_MUX_n204), .ZN (Midori_rounds_constant_MUX_n180) ) ;
    INV_X1 Midori_rounds_constant_MUX_U80 ( .A (Midori_rounds_constant_MUX_n183), .ZN (Midori_rounds_constant_MUX_n204) ) ;
    NAND2_X1 Midori_rounds_constant_MUX_U79 ( .A1 (Midori_rounds_constant_MUX_n179), .A2 (Midori_rounds_constant_MUX_n178), .ZN (Midori_rounds_constant_MUX_n183) ) ;
    NAND2_X1 Midori_rounds_constant_MUX_U78 ( .A1 (Midori_rounds_constant_MUX_n177), .A2 (Midori_rounds_constant_MUX_n176), .ZN (Midori_rounds_constant_MUX_n178) ) ;
    NOR2_X1 Midori_rounds_constant_MUX_U77 ( .A1 (Midori_rounds_constant_MUX_n128), .A2 (Midori_rounds_constant_MUX_n175), .ZN (Midori_rounds_constant_MUX_n212) ) ;
    MUX2_X1 Midori_rounds_constant_MUX_U76 ( .S (round_Signal[2]), .A (Midori_rounds_constant_MUX_n174), .B (Midori_rounds_constant_MUX_n173), .Z (Midori_rounds_constant_MUX_n175) ) ;
    NAND2_X1 Midori_rounds_constant_MUX_U75 ( .A1 (Midori_rounds_constant_MUX_n172), .A2 (Midori_rounds_constant_MUX_n171), .ZN (Midori_rounds_round_Constant[15]) ) ;
    NOR2_X1 Midori_rounds_constant_MUX_U74 ( .A1 (Midori_rounds_constant_MUX_n200), .A2 (Midori_rounds_constant_MUX_n187), .ZN (Midori_rounds_constant_MUX_n172) ) ;
    NAND2_X1 Midori_rounds_constant_MUX_U73 ( .A1 (Midori_rounds_constant_MUX_n170), .A2 (Midori_rounds_constant_MUX_n194), .ZN (Midori_rounds_round_Constant[14]) ) ;
    NOR2_X1 Midori_rounds_constant_MUX_U72 ( .A1 (Midori_rounds_constant_MUX_n169), .A2 (Midori_rounds_constant_MUX_n168), .ZN (Midori_rounds_constant_MUX_n194) ) ;
    NAND2_X1 Midori_rounds_constant_MUX_U71 ( .A1 (Midori_rounds_constant_MUX_n216), .A2 (Midori_rounds_constant_MUX_n205), .ZN (Midori_rounds_constant_MUX_n168) ) ;
    OR2_X1 Midori_rounds_constant_MUX_U70 ( .A1 (Midori_rounds_constant_MUX_n129), .A2 (Midori_rounds_constant_MUX_n167), .ZN (Midori_rounds_constant_MUX_n205) ) ;
    MUX2_X1 Midori_rounds_constant_MUX_U69 ( .S (round_Signal[2]), .A (Midori_rounds_constant_MUX_n166), .B (Midori_rounds_constant_MUX_n165), .Z (Midori_rounds_constant_MUX_n167) ) ;
    NAND2_X1 Midori_rounds_constant_MUX_U68 ( .A1 (Midori_rounds_constant_MUX_n185), .A2 (Midori_rounds_constant_MUX_n164), .ZN (Midori_rounds_round_Constant[13]) ) ;
    NOR2_X1 Midori_rounds_constant_MUX_U67 ( .A1 (Midori_rounds_constant_MUX_n163), .A2 (Midori_rounds_constant_MUX_n162), .ZN (Midori_rounds_constant_MUX_n164) ) ;
    INV_X1 Midori_rounds_constant_MUX_U66 ( .A (Midori_rounds_constant_MUX_n170), .ZN (Midori_rounds_constant_MUX_n162) ) ;
    NOR2_X1 Midori_rounds_constant_MUX_U65 ( .A1 (Midori_rounds_constant_MUX_n161), .A2 (Midori_rounds_constant_MUX_n192), .ZN (Midori_rounds_constant_MUX_n185) ) ;
    NAND2_X1 Midori_rounds_constant_MUX_U64 ( .A1 (Midori_rounds_constant_MUX_n160), .A2 (Midori_rounds_constant_MUX_n190), .ZN (Midori_rounds_round_Constant[12]) ) ;
    INV_X1 Midori_rounds_constant_MUX_U63 ( .A (Midori_rounds_constant_MUX_n184), .ZN (Midori_rounds_constant_MUX_n190) ) ;
    NOR2_X1 Midori_rounds_constant_MUX_U62 ( .A1 (Midori_rounds_constant_MUX_n203), .A2 (Midori_rounds_constant_MUX_n159), .ZN (Midori_rounds_constant_MUX_n160) ) ;
    NAND2_X1 Midori_rounds_constant_MUX_U61 ( .A1 (Midori_rounds_constant_MUX_n211), .A2 (Midori_rounds_constant_MUX_n170), .ZN (Midori_rounds_constant_MUX_n159) ) ;
    NOR2_X1 Midori_rounds_constant_MUX_U60 ( .A1 (Midori_rounds_constant_MUX_n193), .A2 (Midori_rounds_constant_MUX_n169), .ZN (Midori_rounds_constant_MUX_n211) ) ;
    NAND2_X1 Midori_rounds_constant_MUX_U59 ( .A1 (Midori_rounds_constant_MUX_n198), .A2 (Midori_rounds_constant_MUX_n158), .ZN (Midori_rounds_constant_MUX_n169) ) ;
    NAND2_X1 Midori_rounds_constant_MUX_U58 ( .A1 (Midori_rounds_constant_MUX_n129), .A2 (Midori_rounds_constant_MUX_n157), .ZN (Midori_rounds_constant_MUX_n158) ) ;
    NAND2_X1 Midori_rounds_constant_MUX_U57 ( .A1 (Midori_rounds_constant_MUX_n165), .A2 (Midori_rounds_constant_MUX_n177), .ZN (Midori_rounds_constant_MUX_n157) ) ;
    NOR2_X1 Midori_rounds_constant_MUX_U56 ( .A1 (Midori_rounds_constant_MUX_n200), .A2 (Midori_rounds_constant_MUX_n156), .ZN (Midori_rounds_constant_MUX_n198) ) ;
    NOR2_X1 Midori_rounds_constant_MUX_U55 ( .A1 (Midori_rounds_constant_MUX_n128), .A2 (Midori_rounds_constant_MUX_n155), .ZN (Midori_rounds_constant_MUX_n156) ) ;
    MUX2_X1 Midori_rounds_constant_MUX_U54 ( .S (round_Signal[2]), .A (Midori_rounds_constant_MUX_n176), .B (Midori_rounds_constant_MUX_n166), .Z (Midori_rounds_constant_MUX_n155) ) ;
    NOR2_X1 Midori_rounds_constant_MUX_U53 ( .A1 (Midori_rounds_constant_MUX_n129), .A2 (Midori_rounds_constant_MUX_n154), .ZN (Midori_rounds_constant_MUX_n200) ) ;
    MUX2_X1 Midori_rounds_constant_MUX_U52 ( .S (round_Signal[2]), .A (Midori_rounds_constant_MUX_n174), .B (Midori_rounds_constant_MUX_n153), .Z (Midori_rounds_constant_MUX_n154) ) ;
    OR2_X1 Midori_rounds_constant_MUX_U51 ( .A1 (Midori_rounds_constant_MUX_n199), .A2 (Midori_rounds_constant_MUX_n213), .ZN (Midori_rounds_round_Constant[11]) ) ;
    NAND2_X1 Midori_rounds_constant_MUX_U50 ( .A1 (Midori_rounds_constant_MUX_n170), .A2 (Midori_rounds_constant_MUX_n210), .ZN (Midori_rounds_constant_MUX_n199) ) ;
    NAND2_X1 Midori_rounds_constant_MUX_U49 ( .A1 (Midori_rounds_constant_MUX_n152), .A2 (Midori_rounds_constant_MUX_n151), .ZN (Midori_rounds_constant_MUX_n210) ) ;
    AND2_X1 Midori_rounds_constant_MUX_U48 ( .A1 (Midori_rounds_constant_MUX_n128), .A2 (round_Signal[2]), .ZN (Midori_rounds_constant_MUX_n151) ) ;
    NOR2_X1 Midori_rounds_constant_MUX_U47 ( .A1 (Midori_rounds_constant_MUX_n150), .A2 (Midori_rounds_constant_MUX_n187), .ZN (Midori_rounds_constant_MUX_n170) ) ;
    NOR2_X1 Midori_rounds_constant_MUX_U46 ( .A1 (Midori_rounds_constant_MUX_n129), .A2 (Midori_rounds_constant_MUX_n149), .ZN (Midori_rounds_constant_MUX_n187) ) ;
    MUX2_X1 Midori_rounds_constant_MUX_U45 ( .S (round_Signal[2]), .A (Midori_rounds_constant_MUX_n165), .B (Midori_rounds_constant_MUX_n166), .Z (Midori_rounds_constant_MUX_n149) ) ;
    NOR2_X1 Midori_rounds_constant_MUX_U44 ( .A1 (Midori_rounds_constant_MUX_n129), .A2 (Midori_rounds_constant_MUX_n148), .ZN (Midori_rounds_constant_MUX_n150) ) ;
    MUX2_X1 Midori_rounds_constant_MUX_U43 ( .S (round_Signal[2]), .A (Midori_rounds_constant_MUX_n153), .B (Midori_rounds_constant_MUX_n174), .Z (Midori_rounds_constant_MUX_n148) ) ;
    NAND2_X1 Midori_rounds_constant_MUX_U42 ( .A1 (Midori_rounds_constant_MUX_n147), .A2 (Midori_rounds_constant_MUX_n171), .ZN (Midori_rounds_round_Constant[10]) ) ;
    NOR2_X1 Midori_rounds_constant_MUX_U41 ( .A1 (Midori_rounds_constant_MUX_n146), .A2 (Midori_rounds_constant_MUX_n213), .ZN (Midori_rounds_constant_MUX_n171) ) ;
    NOR2_X1 Midori_rounds_constant_MUX_U40 ( .A1 (Midori_rounds_constant_MUX_n128), .A2 (Midori_rounds_constant_MUX_n145), .ZN (Midori_rounds_constant_MUX_n213) ) ;
    MUX2_X1 Midori_rounds_constant_MUX_U39 ( .S (round_Signal[2]), .A (Midori_rounds_constant_MUX_n165), .B (Midori_rounds_constant_MUX_n177), .Z (Midori_rounds_constant_MUX_n145) ) ;
    INV_X1 Midori_rounds_constant_MUX_U38 ( .A (Midori_rounds_constant_MUX_n144), .ZN (Midori_rounds_constant_MUX_n146) ) ;
    INV_X1 Midori_rounds_constant_MUX_U37 ( .A (Midori_rounds_constant_MUX_n193), .ZN (Midori_rounds_constant_MUX_n147) ) ;
    NAND2_X1 Midori_rounds_constant_MUX_U36 ( .A1 (Midori_rounds_constant_MUX_n182), .A2 (Midori_rounds_constant_MUX_n144), .ZN (Midori_rounds_round_Constant[0]) ) ;
    NOR2_X1 Midori_rounds_constant_MUX_U35 ( .A1 (Midori_rounds_constant_MUX_n203), .A2 (Midori_rounds_constant_MUX_n192), .ZN (Midori_rounds_constant_MUX_n144) ) ;
    NOR2_X1 Midori_rounds_constant_MUX_U34 ( .A1 (Midori_rounds_constant_MUX_n128), .A2 (Midori_rounds_constant_MUX_n143), .ZN (Midori_rounds_constant_MUX_n192) ) ;
    MUX2_X1 Midori_rounds_constant_MUX_U33 ( .S (round_Signal[2]), .A (Midori_rounds_constant_MUX_n173), .B (Midori_rounds_constant_MUX_n174), .Z (Midori_rounds_constant_MUX_n143) ) ;
    NAND2_X1 Midori_rounds_constant_MUX_U32 ( .A1 (Midori_rounds_constant_MUX_n142), .A2 (Midori_rounds_constant_MUX_n141), .ZN (Midori_rounds_constant_MUX_n174) ) ;
    NAND2_X1 Midori_rounds_constant_MUX_U31 ( .A1 (Midori_rounds_constant_MUX_n140), .A2 (round_Signal[1]), .ZN (Midori_rounds_constant_MUX_n173) ) ;
    NOR2_X1 Midori_rounds_constant_MUX_U30 ( .A1 (Midori_rounds_constant_MUX_n128), .A2 (Midori_rounds_constant_MUX_n139), .ZN (Midori_rounds_constant_MUX_n203) ) ;
    MUX2_X1 Midori_rounds_constant_MUX_U29 ( .S (round_Signal[2]), .A (Midori_rounds_constant_MUX_n166), .B (Midori_rounds_constant_MUX_n176), .Z (Midori_rounds_constant_MUX_n139) ) ;
    NAND2_X1 Midori_rounds_constant_MUX_U28 ( .A1 (enc_dec), .A2 (Midori_rounds_constant_MUX_n152), .ZN (Midori_rounds_constant_MUX_n176) ) ;
    NOR2_X1 Midori_rounds_constant_MUX_U27 ( .A1 (round_Signal[3]), .A2 (Midori_rounds_constant_MUX_n141), .ZN (Midori_rounds_constant_MUX_n152) ) ;
    NAND2_X1 Midori_rounds_constant_MUX_U26 ( .A1 (Midori_rounds_constant_MUX_n138), .A2 (Midori_rounds_constant_MUX_n141), .ZN (Midori_rounds_constant_MUX_n166) ) ;
    NOR2_X1 Midori_rounds_constant_MUX_U25 ( .A1 (Midori_rounds_constant_MUX_n184), .A2 (Midori_rounds_constant_MUX_n137), .ZN (Midori_rounds_constant_MUX_n182) ) ;
    NAND2_X1 Midori_rounds_constant_MUX_U24 ( .A1 (Midori_rounds_constant_MUX_n209), .A2 (Midori_rounds_constant_MUX_n216), .ZN (Midori_rounds_constant_MUX_n137) ) ;
    NAND2_X1 Midori_rounds_constant_MUX_U23 ( .A1 (Midori_rounds_constant_MUX_n163), .A2 (Midori_rounds_constant_MUX_n136), .ZN (Midori_rounds_constant_MUX_n216) ) ;
    OR2_X1 Midori_rounds_constant_MUX_U22 ( .A1 (Midori_rounds_constant_MUX_n140), .A2 (Midori_rounds_constant_MUX_n142), .ZN (Midori_rounds_constant_MUX_n136) ) ;
    AND2_X1 Midori_rounds_constant_MUX_U21 ( .A1 (round_Signal[1]), .A2 (Midori_rounds_constant_MUX_n179), .ZN (Midori_rounds_constant_MUX_n163) ) ;
    NOR2_X1 Midori_rounds_constant_MUX_U20 ( .A1 (Midori_rounds_constant_MUX_n129), .A2 (round_Signal[2]), .ZN (Midori_rounds_constant_MUX_n179) ) ;
    NOR2_X1 Midori_rounds_constant_MUX_U19 ( .A1 (Midori_rounds_constant_MUX_n193), .A2 (Midori_rounds_constant_MUX_n161), .ZN (Midori_rounds_constant_MUX_n209) ) ;
    NOR2_X1 Midori_rounds_constant_MUX_U18 ( .A1 (Midori_rounds_constant_MUX_n128), .A2 (Midori_rounds_constant_MUX_n135), .ZN (Midori_rounds_constant_MUX_n161) ) ;
    MUX2_X1 Midori_rounds_constant_MUX_U17 ( .S (round_Signal[2]), .A (Midori_rounds_constant_MUX_n177), .B (Midori_rounds_constant_MUX_n165), .Z (Midori_rounds_constant_MUX_n135) ) ;
    NAND2_X1 Midori_rounds_constant_MUX_U16 ( .A1 (enc_dec), .A2 (Midori_rounds_constant_MUX_n134), .ZN (Midori_rounds_constant_MUX_n165) ) ;
    NOR2_X1 Midori_rounds_constant_MUX_U15 ( .A1 (round_Signal[3]), .A2 (round_Signal[1]), .ZN (Midori_rounds_constant_MUX_n134) ) ;
    NAND2_X1 Midori_rounds_constant_MUX_U14 ( .A1 (round_Signal[1]), .A2 (Midori_rounds_constant_MUX_n138), .ZN (Midori_rounds_constant_MUX_n177) ) ;
    NOR2_X1 Midori_rounds_constant_MUX_U13 ( .A1 (enc_dec), .A2 (Midori_rounds_constant_MUX_n133), .ZN (Midori_rounds_constant_MUX_n138) ) ;
    INV_X1 Midori_rounds_constant_MUX_U12 ( .A (round_Signal[3]), .ZN (Midori_rounds_constant_MUX_n133) ) ;
    NOR2_X1 Midori_rounds_constant_MUX_U11 ( .A1 (Midori_rounds_constant_MUX_n128), .A2 (Midori_rounds_constant_MUX_n132), .ZN (Midori_rounds_constant_MUX_n193) ) ;
    MUX2_X1 Midori_rounds_constant_MUX_U10 ( .S (round_Signal[2]), .A (Midori_rounds_constant_MUX_n153), .B (Midori_rounds_constant_MUX_n131), .Z (Midori_rounds_constant_MUX_n132) ) ;
    NOR2_X1 Midori_rounds_constant_MUX_U9 ( .A1 (Midori_rounds_constant_MUX_n128), .A2 (Midori_rounds_constant_MUX_n130), .ZN (Midori_rounds_constant_MUX_n184) ) ;
    MUX2_X1 Midori_rounds_constant_MUX_U8 ( .S (round_Signal[2]), .A (Midori_rounds_constant_MUX_n131), .B (Midori_rounds_constant_MUX_n153), .Z (Midori_rounds_constant_MUX_n130) ) ;
    NAND2_X1 Midori_rounds_constant_MUX_U7 ( .A1 (Midori_rounds_constant_MUX_n140), .A2 (Midori_rounds_constant_MUX_n141), .ZN (Midori_rounds_constant_MUX_n153) ) ;
    INV_X1 Midori_rounds_constant_MUX_U6 ( .A (round_Signal[1]), .ZN (Midori_rounds_constant_MUX_n141) ) ;
    NOR2_X1 Midori_rounds_constant_MUX_U5 ( .A1 (enc_dec), .A2 (round_Signal[3]), .ZN (Midori_rounds_constant_MUX_n140) ) ;
    NAND2_X1 Midori_rounds_constant_MUX_U4 ( .A1 (Midori_rounds_constant_MUX_n142), .A2 (round_Signal[1]), .ZN (Midori_rounds_constant_MUX_n131) ) ;
    AND2_X1 Midori_rounds_constant_MUX_U3 ( .A1 (enc_dec), .A2 (round_Signal[3]), .ZN (Midori_rounds_constant_MUX_n142) ) ;
    INV_X1 Midori_rounds_constant_MUX_U2 ( .A (Midori_rounds_constant_MUX_n129), .ZN (Midori_rounds_constant_MUX_n128) ) ;
    INV_X1 Midori_rounds_constant_MUX_U1 ( .A (round_Signal[0]), .ZN (Midori_rounds_constant_MUX_n129) ) ;
    INV_X1 Midori_rounds_MUXInst_U4 ( .A (round_Signal[0]), .ZN (Midori_rounds_MUXInst_n11) ) ;
    INV_X1 Midori_rounds_MUXInst_U3 ( .A (Midori_rounds_MUXInst_n11), .ZN (Midori_rounds_MUXInst_n8) ) ;
    INV_X1 Midori_rounds_MUXInst_U2 ( .A (Midori_rounds_MUXInst_n11), .ZN (Midori_rounds_MUXInst_n9) ) ;
    INV_X1 Midori_rounds_MUXInst_U1 ( .A (Midori_rounds_MUXInst_n11), .ZN (Midori_rounds_MUXInst_n10) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_MUXInst_mux_inst_0_U1 ( .s (round_Signal[0]), .b ({correct_key_s1[64], correct_key_s0[64]}), .a ({correct_key_s1[0], correct_key_s0[0]}), .c ({new_AGEMA_signal_1648, Midori_rounds_SelectedKey_0_}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_MUXInst_mux_inst_1_U1 ( .s (round_Signal[0]), .b ({correct_key_s1[65], correct_key_s0[65]}), .a ({correct_key_s1[1], correct_key_s0[1]}), .c ({new_AGEMA_signal_1649, Midori_rounds_SelectedKey_1_}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_MUXInst_mux_inst_2_U1 ( .s (round_Signal[0]), .b ({correct_key_s1[66], correct_key_s0[66]}), .a ({correct_key_s1[2], correct_key_s0[2]}), .c ({new_AGEMA_signal_1650, Midori_rounds_SelectedKey_2_}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_MUXInst_mux_inst_3_U1 ( .s (round_Signal[0]), .b ({correct_key_s1[67], correct_key_s0[67]}), .a ({correct_key_s1[3], correct_key_s0[3]}), .c ({new_AGEMA_signal_1651, Midori_rounds_SelectedKey_3_}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_MUXInst_mux_inst_4_U1 ( .s (round_Signal[0]), .b ({correct_key_s1[68], correct_key_s0[68]}), .a ({correct_key_s1[4], correct_key_s0[4]}), .c ({new_AGEMA_signal_1652, Midori_rounds_SelectedKey_4_}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_MUXInst_mux_inst_5_U1 ( .s (Midori_rounds_MUXInst_n8), .b ({correct_key_s1[69], correct_key_s0[69]}), .a ({correct_key_s1[5], correct_key_s0[5]}), .c ({new_AGEMA_signal_2013, Midori_rounds_SelectedKey_5_}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_MUXInst_mux_inst_6_U1 ( .s (Midori_rounds_MUXInst_n10), .b ({correct_key_s1[70], correct_key_s0[70]}), .a ({correct_key_s1[6], correct_key_s0[6]}), .c ({new_AGEMA_signal_2014, Midori_rounds_SelectedKey_6_}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_MUXInst_mux_inst_7_U1 ( .s (Midori_rounds_MUXInst_n9), .b ({correct_key_s1[71], correct_key_s0[71]}), .a ({correct_key_s1[7], correct_key_s0[7]}), .c ({new_AGEMA_signal_2015, Midori_rounds_SelectedKey_7_}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_MUXInst_mux_inst_8_U1 ( .s (round_Signal[0]), .b ({correct_key_s1[72], correct_key_s0[72]}), .a ({correct_key_s1[8], correct_key_s0[8]}), .c ({new_AGEMA_signal_1653, Midori_rounds_SelectedKey_8_}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_MUXInst_mux_inst_9_U1 ( .s (round_Signal[0]), .b ({correct_key_s1[73], correct_key_s0[73]}), .a ({correct_key_s1[9], correct_key_s0[9]}), .c ({new_AGEMA_signal_1654, Midori_rounds_SelectedKey_9_}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_MUXInst_mux_inst_10_U1 ( .s (round_Signal[0]), .b ({correct_key_s1[74], correct_key_s0[74]}), .a ({correct_key_s1[10], correct_key_s0[10]}), .c ({new_AGEMA_signal_1655, Midori_rounds_SelectedKey_10_}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_MUXInst_mux_inst_11_U1 ( .s (round_Signal[0]), .b ({correct_key_s1[75], correct_key_s0[75]}), .a ({correct_key_s1[11], correct_key_s0[11]}), .c ({new_AGEMA_signal_1656, Midori_rounds_SelectedKey_11_}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_MUXInst_mux_inst_12_U1 ( .s (Midori_rounds_MUXInst_n9), .b ({correct_key_s1[76], correct_key_s0[76]}), .a ({correct_key_s1[12], correct_key_s0[12]}), .c ({new_AGEMA_signal_2016, Midori_rounds_SelectedKey_12_}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_MUXInst_mux_inst_13_U1 ( .s (round_Signal[0]), .b ({correct_key_s1[77], correct_key_s0[77]}), .a ({correct_key_s1[13], correct_key_s0[13]}), .c ({new_AGEMA_signal_1657, Midori_rounds_SelectedKey_13_}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_MUXInst_mux_inst_14_U1 ( .s (round_Signal[0]), .b ({correct_key_s1[78], correct_key_s0[78]}), .a ({correct_key_s1[14], correct_key_s0[14]}), .c ({new_AGEMA_signal_1658, Midori_rounds_SelectedKey_14_}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_MUXInst_mux_inst_15_U1 ( .s (round_Signal[0]), .b ({correct_key_s1[79], correct_key_s0[79]}), .a ({correct_key_s1[15], correct_key_s0[15]}), .c ({new_AGEMA_signal_1659, Midori_rounds_SelectedKey_15_}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_MUXInst_mux_inst_16_U1 ( .s (Midori_rounds_MUXInst_n10), .b ({correct_key_s1[80], correct_key_s0[80]}), .a ({correct_key_s1[16], correct_key_s0[16]}), .c ({new_AGEMA_signal_2017, Midori_rounds_SelectedKey_16_}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_MUXInst_mux_inst_17_U1 ( .s (Midori_rounds_MUXInst_n8), .b ({correct_key_s1[81], correct_key_s0[81]}), .a ({correct_key_s1[17], correct_key_s0[17]}), .c ({new_AGEMA_signal_2018, Midori_rounds_SelectedKey_17_}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_MUXInst_mux_inst_18_U1 ( .s (Midori_rounds_MUXInst_n10), .b ({correct_key_s1[82], correct_key_s0[82]}), .a ({correct_key_s1[18], correct_key_s0[18]}), .c ({new_AGEMA_signal_2019, Midori_rounds_SelectedKey_18_}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_MUXInst_mux_inst_19_U1 ( .s (Midori_rounds_MUXInst_n10), .b ({correct_key_s1[83], correct_key_s0[83]}), .a ({correct_key_s1[19], correct_key_s0[19]}), .c ({new_AGEMA_signal_2020, Midori_rounds_SelectedKey_19_}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_MUXInst_mux_inst_20_U1 ( .s (Midori_rounds_MUXInst_n10), .b ({correct_key_s1[84], correct_key_s0[84]}), .a ({correct_key_s1[20], correct_key_s0[20]}), .c ({new_AGEMA_signal_2021, Midori_rounds_SelectedKey_20_}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_MUXInst_mux_inst_21_U1 ( .s (Midori_rounds_MUXInst_n10), .b ({correct_key_s1[85], correct_key_s0[85]}), .a ({correct_key_s1[21], correct_key_s0[21]}), .c ({new_AGEMA_signal_2022, Midori_rounds_SelectedKey_21_}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_MUXInst_mux_inst_22_U1 ( .s (Midori_rounds_MUXInst_n9), .b ({correct_key_s1[86], correct_key_s0[86]}), .a ({correct_key_s1[22], correct_key_s0[22]}), .c ({new_AGEMA_signal_2023, Midori_rounds_SelectedKey_22_}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_MUXInst_mux_inst_23_U1 ( .s (Midori_rounds_MUXInst_n8), .b ({correct_key_s1[87], correct_key_s0[87]}), .a ({correct_key_s1[23], correct_key_s0[23]}), .c ({new_AGEMA_signal_2024, Midori_rounds_SelectedKey_23_}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_MUXInst_mux_inst_24_U1 ( .s (Midori_rounds_MUXInst_n10), .b ({correct_key_s1[88], correct_key_s0[88]}), .a ({correct_key_s1[24], correct_key_s0[24]}), .c ({new_AGEMA_signal_2025, Midori_rounds_SelectedKey_24_}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_MUXInst_mux_inst_25_U1 ( .s (Midori_rounds_MUXInst_n9), .b ({correct_key_s1[89], correct_key_s0[89]}), .a ({correct_key_s1[25], correct_key_s0[25]}), .c ({new_AGEMA_signal_2026, Midori_rounds_SelectedKey_25_}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_MUXInst_mux_inst_26_U1 ( .s (round_Signal[0]), .b ({correct_key_s1[90], correct_key_s0[90]}), .a ({correct_key_s1[26], correct_key_s0[26]}), .c ({new_AGEMA_signal_1660, Midori_rounds_SelectedKey_26_}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_MUXInst_mux_inst_27_U1 ( .s (Midori_rounds_MUXInst_n10), .b ({correct_key_s1[91], correct_key_s0[91]}), .a ({correct_key_s1[27], correct_key_s0[27]}), .c ({new_AGEMA_signal_2027, Midori_rounds_SelectedKey_27_}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_MUXInst_mux_inst_28_U1 ( .s (Midori_rounds_MUXInst_n10), .b ({correct_key_s1[92], correct_key_s0[92]}), .a ({correct_key_s1[28], correct_key_s0[28]}), .c ({new_AGEMA_signal_2028, Midori_rounds_SelectedKey_28_}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_MUXInst_mux_inst_29_U1 ( .s (Midori_rounds_MUXInst_n10), .b ({correct_key_s1[93], correct_key_s0[93]}), .a ({correct_key_s1[29], correct_key_s0[29]}), .c ({new_AGEMA_signal_2029, Midori_rounds_SelectedKey_29_}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_MUXInst_mux_inst_30_U1 ( .s (Midori_rounds_MUXInst_n10), .b ({correct_key_s1[94], correct_key_s0[94]}), .a ({correct_key_s1[30], correct_key_s0[30]}), .c ({new_AGEMA_signal_2030, Midori_rounds_SelectedKey_30_}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_MUXInst_mux_inst_31_U1 ( .s (Midori_rounds_MUXInst_n10), .b ({correct_key_s1[95], correct_key_s0[95]}), .a ({correct_key_s1[31], correct_key_s0[31]}), .c ({new_AGEMA_signal_2031, Midori_rounds_SelectedKey_31_}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_MUXInst_mux_inst_32_U1 ( .s (Midori_rounds_MUXInst_n10), .b ({correct_key_s1[96], correct_key_s0[96]}), .a ({correct_key_s1[32], correct_key_s0[32]}), .c ({new_AGEMA_signal_2032, Midori_rounds_SelectedKey_32_}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_MUXInst_mux_inst_33_U1 ( .s (Midori_rounds_MUXInst_n10), .b ({correct_key_s1[97], correct_key_s0[97]}), .a ({correct_key_s1[33], correct_key_s0[33]}), .c ({new_AGEMA_signal_2033, Midori_rounds_SelectedKey_33_}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_MUXInst_mux_inst_34_U1 ( .s (Midori_rounds_MUXInst_n10), .b ({correct_key_s1[98], correct_key_s0[98]}), .a ({correct_key_s1[34], correct_key_s0[34]}), .c ({new_AGEMA_signal_2034, Midori_rounds_SelectedKey_34_}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_MUXInst_mux_inst_35_U1 ( .s (Midori_rounds_MUXInst_n10), .b ({correct_key_s1[99], correct_key_s0[99]}), .a ({correct_key_s1[35], correct_key_s0[35]}), .c ({new_AGEMA_signal_2035, Midori_rounds_SelectedKey_35_}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_MUXInst_mux_inst_36_U1 ( .s (Midori_rounds_MUXInst_n10), .b ({correct_key_s1[100], correct_key_s0[100]}), .a ({correct_key_s1[36], correct_key_s0[36]}), .c ({new_AGEMA_signal_2036, Midori_rounds_SelectedKey_36_}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_MUXInst_mux_inst_37_U1 ( .s (Midori_rounds_MUXInst_n10), .b ({correct_key_s1[101], correct_key_s0[101]}), .a ({correct_key_s1[37], correct_key_s0[37]}), .c ({new_AGEMA_signal_2037, Midori_rounds_SelectedKey_37_}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_MUXInst_mux_inst_38_U1 ( .s (Midori_rounds_MUXInst_n10), .b ({correct_key_s1[102], correct_key_s0[102]}), .a ({correct_key_s1[38], correct_key_s0[38]}), .c ({new_AGEMA_signal_2038, Midori_rounds_SelectedKey_38_}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_MUXInst_mux_inst_39_U1 ( .s (Midori_rounds_MUXInst_n10), .b ({correct_key_s1[103], correct_key_s0[103]}), .a ({correct_key_s1[39], correct_key_s0[39]}), .c ({new_AGEMA_signal_2039, Midori_rounds_SelectedKey_39_}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_MUXInst_mux_inst_40_U1 ( .s (Midori_rounds_MUXInst_n9), .b ({correct_key_s1[104], correct_key_s0[104]}), .a ({correct_key_s1[40], correct_key_s0[40]}), .c ({new_AGEMA_signal_2040, Midori_rounds_SelectedKey_40_}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_MUXInst_mux_inst_41_U1 ( .s (Midori_rounds_MUXInst_n9), .b ({correct_key_s1[105], correct_key_s0[105]}), .a ({correct_key_s1[41], correct_key_s0[41]}), .c ({new_AGEMA_signal_2041, Midori_rounds_SelectedKey_41_}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_MUXInst_mux_inst_42_U1 ( .s (Midori_rounds_MUXInst_n9), .b ({correct_key_s1[106], correct_key_s0[106]}), .a ({correct_key_s1[42], correct_key_s0[42]}), .c ({new_AGEMA_signal_2042, Midori_rounds_SelectedKey_42_}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_MUXInst_mux_inst_43_U1 ( .s (Midori_rounds_MUXInst_n9), .b ({correct_key_s1[107], correct_key_s0[107]}), .a ({correct_key_s1[43], correct_key_s0[43]}), .c ({new_AGEMA_signal_2043, Midori_rounds_SelectedKey_43_}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_MUXInst_mux_inst_44_U1 ( .s (Midori_rounds_MUXInst_n9), .b ({correct_key_s1[108], correct_key_s0[108]}), .a ({correct_key_s1[44], correct_key_s0[44]}), .c ({new_AGEMA_signal_2044, Midori_rounds_SelectedKey_44_}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_MUXInst_mux_inst_45_U1 ( .s (Midori_rounds_MUXInst_n9), .b ({correct_key_s1[109], correct_key_s0[109]}), .a ({correct_key_s1[45], correct_key_s0[45]}), .c ({new_AGEMA_signal_2045, Midori_rounds_SelectedKey_45_}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_MUXInst_mux_inst_46_U1 ( .s (Midori_rounds_MUXInst_n9), .b ({correct_key_s1[110], correct_key_s0[110]}), .a ({correct_key_s1[46], correct_key_s0[46]}), .c ({new_AGEMA_signal_2046, Midori_rounds_SelectedKey_46_}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_MUXInst_mux_inst_47_U1 ( .s (Midori_rounds_MUXInst_n9), .b ({correct_key_s1[111], correct_key_s0[111]}), .a ({correct_key_s1[47], correct_key_s0[47]}), .c ({new_AGEMA_signal_2047, Midori_rounds_SelectedKey_47_}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_MUXInst_mux_inst_48_U1 ( .s (Midori_rounds_MUXInst_n9), .b ({correct_key_s1[112], correct_key_s0[112]}), .a ({correct_key_s1[48], correct_key_s0[48]}), .c ({new_AGEMA_signal_2048, Midori_rounds_SelectedKey_48_}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_MUXInst_mux_inst_49_U1 ( .s (Midori_rounds_MUXInst_n9), .b ({correct_key_s1[113], correct_key_s0[113]}), .a ({correct_key_s1[49], correct_key_s0[49]}), .c ({new_AGEMA_signal_2049, Midori_rounds_SelectedKey_49_}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_MUXInst_mux_inst_50_U1 ( .s (Midori_rounds_MUXInst_n9), .b ({correct_key_s1[114], correct_key_s0[114]}), .a ({correct_key_s1[50], correct_key_s0[50]}), .c ({new_AGEMA_signal_2050, Midori_rounds_SelectedKey_50_}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_MUXInst_mux_inst_51_U1 ( .s (Midori_rounds_MUXInst_n9), .b ({correct_key_s1[115], correct_key_s0[115]}), .a ({correct_key_s1[51], correct_key_s0[51]}), .c ({new_AGEMA_signal_2051, Midori_rounds_SelectedKey_51_}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_MUXInst_mux_inst_52_U1 ( .s (Midori_rounds_MUXInst_n8), .b ({correct_key_s1[116], correct_key_s0[116]}), .a ({correct_key_s1[52], correct_key_s0[52]}), .c ({new_AGEMA_signal_2052, Midori_rounds_SelectedKey_52_}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_MUXInst_mux_inst_53_U1 ( .s (Midori_rounds_MUXInst_n8), .b ({correct_key_s1[117], correct_key_s0[117]}), .a ({correct_key_s1[53], correct_key_s0[53]}), .c ({new_AGEMA_signal_2053, Midori_rounds_SelectedKey_53_}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_MUXInst_mux_inst_54_U1 ( .s (Midori_rounds_MUXInst_n8), .b ({correct_key_s1[118], correct_key_s0[118]}), .a ({correct_key_s1[54], correct_key_s0[54]}), .c ({new_AGEMA_signal_2054, Midori_rounds_SelectedKey_54_}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_MUXInst_mux_inst_55_U1 ( .s (Midori_rounds_MUXInst_n8), .b ({correct_key_s1[119], correct_key_s0[119]}), .a ({correct_key_s1[55], correct_key_s0[55]}), .c ({new_AGEMA_signal_2055, Midori_rounds_SelectedKey_55_}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_MUXInst_mux_inst_56_U1 ( .s (Midori_rounds_MUXInst_n8), .b ({correct_key_s1[120], correct_key_s0[120]}), .a ({correct_key_s1[56], correct_key_s0[56]}), .c ({new_AGEMA_signal_2056, Midori_rounds_SelectedKey_56_}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_MUXInst_mux_inst_57_U1 ( .s (Midori_rounds_MUXInst_n8), .b ({correct_key_s1[121], correct_key_s0[121]}), .a ({correct_key_s1[57], correct_key_s0[57]}), .c ({new_AGEMA_signal_2057, Midori_rounds_SelectedKey_57_}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_MUXInst_mux_inst_58_U1 ( .s (Midori_rounds_MUXInst_n8), .b ({correct_key_s1[122], correct_key_s0[122]}), .a ({correct_key_s1[58], correct_key_s0[58]}), .c ({new_AGEMA_signal_2058, Midori_rounds_SelectedKey_58_}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_MUXInst_mux_inst_59_U1 ( .s (Midori_rounds_MUXInst_n8), .b ({correct_key_s1[123], correct_key_s0[123]}), .a ({correct_key_s1[59], correct_key_s0[59]}), .c ({new_AGEMA_signal_2059, Midori_rounds_SelectedKey_59_}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_MUXInst_mux_inst_60_U1 ( .s (Midori_rounds_MUXInst_n8), .b ({correct_key_s1[124], correct_key_s0[124]}), .a ({correct_key_s1[60], correct_key_s0[60]}), .c ({new_AGEMA_signal_2060, Midori_rounds_SelectedKey_60_}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_MUXInst_mux_inst_61_U1 ( .s (Midori_rounds_MUXInst_n8), .b ({correct_key_s1[125], correct_key_s0[125]}), .a ({correct_key_s1[61], correct_key_s0[61]}), .c ({new_AGEMA_signal_2061, Midori_rounds_SelectedKey_61_}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_MUXInst_mux_inst_62_U1 ( .s (Midori_rounds_MUXInst_n8), .b ({correct_key_s1[126], correct_key_s0[126]}), .a ({correct_key_s1[62], correct_key_s0[62]}), .c ({new_AGEMA_signal_2062, Midori_rounds_SelectedKey_62_}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_MUXInst_mux_inst_63_U1 ( .s (Midori_rounds_MUXInst_n8), .b ({correct_key_s1[127], correct_key_s0[127]}), .a ({correct_key_s1[63], correct_key_s0[63]}), .c ({new_AGEMA_signal_2063, Midori_rounds_SelectedKey_63_}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_0_U4 ( .a ({new_AGEMA_signal_1661, Midori_rounds_roundReg_out[0]}), .b ({new_AGEMA_signal_1666, Midori_rounds_sub_sBox_PRINCE_0_n7}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_0_U2 ( .a ({new_AGEMA_signal_1662, Midori_rounds_roundReg_out[3]}), .b ({new_AGEMA_signal_1667, Midori_rounds_sub_sBox_PRINCE_0_n8}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_0_U1 ( .a ({new_AGEMA_signal_1664, Midori_rounds_roundReg_out[2]}), .b ({new_AGEMA_signal_1668, Midori_rounds_sub_sBox_PRINCE_0_n9}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_1_U4 ( .a ({new_AGEMA_signal_1669, Midori_rounds_roundReg_out[4]}), .b ({new_AGEMA_signal_1674, Midori_rounds_sub_sBox_PRINCE_1_n7}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_1_U2 ( .a ({new_AGEMA_signal_1670, Midori_rounds_roundReg_out[7]}), .b ({new_AGEMA_signal_1675, Midori_rounds_sub_sBox_PRINCE_1_n8}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_1_U1 ( .a ({new_AGEMA_signal_1672, Midori_rounds_roundReg_out[6]}), .b ({new_AGEMA_signal_1676, Midori_rounds_sub_sBox_PRINCE_1_n9}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_2_U4 ( .a ({new_AGEMA_signal_1677, Midori_rounds_roundReg_out[8]}), .b ({new_AGEMA_signal_1682, Midori_rounds_sub_sBox_PRINCE_2_n7}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_2_U2 ( .a ({new_AGEMA_signal_1678, Midori_rounds_roundReg_out[11]}), .b ({new_AGEMA_signal_1683, Midori_rounds_sub_sBox_PRINCE_2_n8}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_2_U1 ( .a ({new_AGEMA_signal_1680, Midori_rounds_roundReg_out[10]}), .b ({new_AGEMA_signal_1684, Midori_rounds_sub_sBox_PRINCE_2_n9}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_3_U4 ( .a ({new_AGEMA_signal_1685, Midori_rounds_roundReg_out[12]}), .b ({new_AGEMA_signal_1690, Midori_rounds_sub_sBox_PRINCE_3_n7}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_3_U2 ( .a ({new_AGEMA_signal_1686, Midori_rounds_roundReg_out[15]}), .b ({new_AGEMA_signal_1691, Midori_rounds_sub_sBox_PRINCE_3_n8}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_3_U1 ( .a ({new_AGEMA_signal_1688, Midori_rounds_roundReg_out[14]}), .b ({new_AGEMA_signal_1692, Midori_rounds_sub_sBox_PRINCE_3_n9}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_4_U4 ( .a ({new_AGEMA_signal_1693, Midori_rounds_roundReg_out[16]}), .b ({new_AGEMA_signal_1698, Midori_rounds_sub_sBox_PRINCE_4_n7}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_4_U2 ( .a ({new_AGEMA_signal_1694, Midori_rounds_roundReg_out[19]}), .b ({new_AGEMA_signal_1699, Midori_rounds_sub_sBox_PRINCE_4_n8}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_4_U1 ( .a ({new_AGEMA_signal_1696, Midori_rounds_roundReg_out[18]}), .b ({new_AGEMA_signal_1700, Midori_rounds_sub_sBox_PRINCE_4_n9}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_5_U4 ( .a ({new_AGEMA_signal_1701, Midori_rounds_roundReg_out[20]}), .b ({new_AGEMA_signal_1706, Midori_rounds_sub_sBox_PRINCE_5_n7}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_5_U2 ( .a ({new_AGEMA_signal_1702, Midori_rounds_roundReg_out[23]}), .b ({new_AGEMA_signal_1707, Midori_rounds_sub_sBox_PRINCE_5_n8}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_5_U1 ( .a ({new_AGEMA_signal_1704, Midori_rounds_roundReg_out[22]}), .b ({new_AGEMA_signal_1708, Midori_rounds_sub_sBox_PRINCE_5_n9}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_6_U4 ( .a ({new_AGEMA_signal_1709, Midori_rounds_roundReg_out[24]}), .b ({new_AGEMA_signal_1714, Midori_rounds_sub_sBox_PRINCE_6_n7}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_6_U2 ( .a ({new_AGEMA_signal_1710, Midori_rounds_roundReg_out[27]}), .b ({new_AGEMA_signal_1715, Midori_rounds_sub_sBox_PRINCE_6_n8}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_6_U1 ( .a ({new_AGEMA_signal_1712, Midori_rounds_roundReg_out[26]}), .b ({new_AGEMA_signal_1716, Midori_rounds_sub_sBox_PRINCE_6_n9}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_7_U4 ( .a ({new_AGEMA_signal_1717, Midori_rounds_roundReg_out[28]}), .b ({new_AGEMA_signal_1722, Midori_rounds_sub_sBox_PRINCE_7_n7}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_7_U2 ( .a ({new_AGEMA_signal_1718, Midori_rounds_roundReg_out[31]}), .b ({new_AGEMA_signal_1723, Midori_rounds_sub_sBox_PRINCE_7_n8}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_7_U1 ( .a ({new_AGEMA_signal_1720, Midori_rounds_roundReg_out[30]}), .b ({new_AGEMA_signal_1724, Midori_rounds_sub_sBox_PRINCE_7_n9}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_8_U4 ( .a ({new_AGEMA_signal_1725, Midori_rounds_roundReg_out[32]}), .b ({new_AGEMA_signal_1730, Midori_rounds_sub_sBox_PRINCE_8_n7}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_8_U2 ( .a ({new_AGEMA_signal_1726, Midori_rounds_roundReg_out[35]}), .b ({new_AGEMA_signal_1731, Midori_rounds_sub_sBox_PRINCE_8_n8}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_8_U1 ( .a ({new_AGEMA_signal_1728, Midori_rounds_roundReg_out[34]}), .b ({new_AGEMA_signal_1732, Midori_rounds_sub_sBox_PRINCE_8_n9}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_9_U4 ( .a ({new_AGEMA_signal_1733, Midori_rounds_roundReg_out[36]}), .b ({new_AGEMA_signal_1738, Midori_rounds_sub_sBox_PRINCE_9_n7}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_9_U2 ( .a ({new_AGEMA_signal_1734, Midori_rounds_roundReg_out[39]}), .b ({new_AGEMA_signal_1739, Midori_rounds_sub_sBox_PRINCE_9_n8}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_9_U1 ( .a ({new_AGEMA_signal_1736, Midori_rounds_roundReg_out[38]}), .b ({new_AGEMA_signal_1740, Midori_rounds_sub_sBox_PRINCE_9_n9}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_10_U4 ( .a ({new_AGEMA_signal_1741, Midori_rounds_roundReg_out[40]}), .b ({new_AGEMA_signal_1746, Midori_rounds_sub_sBox_PRINCE_10_n7}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_10_U2 ( .a ({new_AGEMA_signal_1742, Midori_rounds_roundReg_out[43]}), .b ({new_AGEMA_signal_1747, Midori_rounds_sub_sBox_PRINCE_10_n8}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_10_U1 ( .a ({new_AGEMA_signal_1744, Midori_rounds_roundReg_out[42]}), .b ({new_AGEMA_signal_1748, Midori_rounds_sub_sBox_PRINCE_10_n9}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_11_U4 ( .a ({new_AGEMA_signal_1749, Midori_rounds_roundReg_out[44]}), .b ({new_AGEMA_signal_1754, Midori_rounds_sub_sBox_PRINCE_11_n7}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_11_U2 ( .a ({new_AGEMA_signal_1750, Midori_rounds_roundReg_out[47]}), .b ({new_AGEMA_signal_1755, Midori_rounds_sub_sBox_PRINCE_11_n8}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_11_U1 ( .a ({new_AGEMA_signal_1752, Midori_rounds_roundReg_out[46]}), .b ({new_AGEMA_signal_1756, Midori_rounds_sub_sBox_PRINCE_11_n9}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_12_U4 ( .a ({new_AGEMA_signal_1757, Midori_rounds_roundReg_out[48]}), .b ({new_AGEMA_signal_1762, Midori_rounds_sub_sBox_PRINCE_12_n7}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_12_U2 ( .a ({new_AGEMA_signal_1758, Midori_rounds_roundReg_out[51]}), .b ({new_AGEMA_signal_1763, Midori_rounds_sub_sBox_PRINCE_12_n8}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_12_U1 ( .a ({new_AGEMA_signal_1760, Midori_rounds_roundReg_out[50]}), .b ({new_AGEMA_signal_1764, Midori_rounds_sub_sBox_PRINCE_12_n9}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_13_U4 ( .a ({new_AGEMA_signal_1765, Midori_rounds_roundReg_out[52]}), .b ({new_AGEMA_signal_1770, Midori_rounds_sub_sBox_PRINCE_13_n7}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_13_U2 ( .a ({new_AGEMA_signal_1766, Midori_rounds_roundReg_out[55]}), .b ({new_AGEMA_signal_1771, Midori_rounds_sub_sBox_PRINCE_13_n8}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_13_U1 ( .a ({new_AGEMA_signal_1768, Midori_rounds_roundReg_out[54]}), .b ({new_AGEMA_signal_1772, Midori_rounds_sub_sBox_PRINCE_13_n9}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_14_U4 ( .a ({new_AGEMA_signal_1773, Midori_rounds_roundReg_out[56]}), .b ({new_AGEMA_signal_1778, Midori_rounds_sub_sBox_PRINCE_14_n7}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_14_U2 ( .a ({new_AGEMA_signal_1774, Midori_rounds_roundReg_out[59]}), .b ({new_AGEMA_signal_1779, Midori_rounds_sub_sBox_PRINCE_14_n8}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_14_U1 ( .a ({new_AGEMA_signal_1776, Midori_rounds_roundReg_out[58]}), .b ({new_AGEMA_signal_1780, Midori_rounds_sub_sBox_PRINCE_14_n9}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_15_U4 ( .a ({new_AGEMA_signal_1781, Midori_rounds_roundReg_out[60]}), .b ({new_AGEMA_signal_1786, Midori_rounds_sub_sBox_PRINCE_15_n7}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_15_U2 ( .a ({new_AGEMA_signal_1782, Midori_rounds_roundReg_out[63]}), .b ({new_AGEMA_signal_1787, Midori_rounds_sub_sBox_PRINCE_15_n8}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_15_U1 ( .a ({new_AGEMA_signal_1784, Midori_rounds_roundReg_out[62]}), .b ({new_AGEMA_signal_1788, Midori_rounds_sub_sBox_PRINCE_15_n9}) ) ;
    ClockGatingController #(17) ClockGatingInst ( .clk (clk), .rst (correct_reset), .GatedClk (clk_gated), .Synch (Synch) ) ;

    /* cells in depth 1 */

    /* cells in depth 2 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) keys_U64 ( .common_out(common_out), .a ({common_xor[0], correct_key_s0[73]}), .b ({common_xor[1], correct_key_s0[9]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1458, wk[9]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) keys_U63 ( .common_out(common_out), .a ({common_xor[0], correct_key_s0[72]}), .b ({common_xor[1], correct_key_s0[8]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1461, wk[8]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) keys_U62 ( .common_out(common_out), .a ({common_xor[0], correct_key_s0[71]}), .b ({common_xor[1], correct_key_s0[7]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1464, wk[7]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) keys_U61 ( .common_out(common_out), .a ({common_xor[0], correct_key_s0[6]}), .b ({common_xor[1], correct_key_s0[70]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1467, wk[6]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) keys_U60 ( .common_out(common_out), .a ({common_xor[0], correct_key_s0[127]}), .b ({common_xor[1], correct_key_s0[63]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1470, wk[63]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) keys_U59 ( .common_out(common_out), .a ({common_xor[0], correct_key_s0[126]}), .b ({common_xor[1], correct_key_s0[62]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1473, wk[62]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) keys_U58 ( .common_out(common_out), .a ({common_xor[0], correct_key_s0[125]}), .b ({common_xor[1], correct_key_s0[61]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1476, wk[61]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) keys_U57 ( .common_out(common_out), .a ({common_xor[0], correct_key_s0[124]}), .b ({common_xor[1], correct_key_s0[60]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1479, wk[60]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) keys_U56 ( .common_out(common_out), .a ({common_xor[0], correct_key_s0[5]}), .b ({common_xor[1], correct_key_s0[69]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1482, wk[5]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) keys_U55 ( .common_out(common_out), .a ({common_xor[0], correct_key_s0[123]}), .b ({common_xor[1], correct_key_s0[59]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1485, wk[59]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) keys_U54 ( .common_out(common_out), .a ({common_xor[0], correct_key_s0[122]}), .b ({common_xor[1], correct_key_s0[58]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1488, wk[58]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) keys_U53 ( .common_out(common_out), .a ({common_xor[0], correct_key_s0[121]}), .b ({common_xor[1], correct_key_s0[57]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1491, wk[57]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) keys_U52 ( .common_out(common_out), .a ({common_xor[0], correct_key_s0[120]}), .b ({common_xor[1], correct_key_s0[56]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1494, wk[56]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) keys_U51 ( .common_out(common_out), .a ({common_xor[0], correct_key_s0[119]}), .b ({common_xor[1], correct_key_s0[55]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1497, wk[55]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) keys_U50 ( .common_out(common_out), .a ({common_xor[0], correct_key_s0[118]}), .b ({common_xor[1], correct_key_s0[54]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1500, wk[54]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) keys_U49 ( .common_out(common_out), .a ({common_xor[0], correct_key_s0[117]}), .b ({common_xor[1], correct_key_s0[53]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1503, wk[53]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) keys_U48 ( .common_out(common_out), .a ({common_xor[0], correct_key_s0[116]}), .b ({common_xor[1], correct_key_s0[52]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1506, wk[52]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) keys_U47 ( .common_out(common_out), .a ({common_xor[0], correct_key_s0[115]}), .b ({common_xor[1], correct_key_s0[51]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1509, wk[51]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) keys_U46 ( .common_out(common_out), .a ({common_xor[0], correct_key_s0[114]}), .b ({common_xor[1], correct_key_s0[50]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1512, wk[50]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) keys_U45 ( .common_out(common_out), .a ({common_xor[0], correct_key_s0[4]}), .b ({common_xor[1], correct_key_s0[68]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1515, wk[4]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) keys_U44 ( .common_out(common_out), .a ({common_xor[0], correct_key_s0[113]}), .b ({common_xor[1], correct_key_s0[49]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1518, wk[49]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) keys_U43 ( .common_out(common_out), .a ({common_xor[0], correct_key_s0[112]}), .b ({common_xor[1], correct_key_s0[48]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1521, wk[48]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) keys_U42 ( .common_out(common_out), .a ({common_xor[0], correct_key_s0[111]}), .b ({common_xor[1], correct_key_s0[47]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1524, wk[47]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) keys_U41 ( .common_out(common_out), .a ({common_xor[0], correct_key_s0[110]}), .b ({common_xor[1], correct_key_s0[46]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1527, wk[46]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) keys_U40 ( .common_out(common_out), .a ({common_xor[0], correct_key_s0[109]}), .b ({common_xor[1], correct_key_s0[45]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1530, wk[45]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) keys_U39 ( .common_out(common_out), .a ({common_xor[0], correct_key_s0[108]}), .b ({common_xor[1], correct_key_s0[44]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1533, wk[44]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) keys_U38 ( .common_out(common_out), .a ({common_xor[0], correct_key_s0[107]}), .b ({common_xor[1], correct_key_s0[43]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1536, wk[43]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) keys_U37 ( .common_out(common_out), .a ({common_xor[0], correct_key_s0[106]}), .b ({common_xor[1], correct_key_s0[42]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1539, wk[42]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) keys_U36 ( .common_out(common_out), .a ({common_xor[0], correct_key_s0[105]}), .b ({common_xor[1], correct_key_s0[41]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1542, wk[41]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) keys_U35 ( .common_out(common_out), .a ({common_xor[0], correct_key_s0[104]}), .b ({common_xor[1], correct_key_s0[40]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1545, wk[40]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) keys_U34 ( .common_out(common_out), .a ({common_xor[0], correct_key_s0[3]}), .b ({common_xor[1], correct_key_s0[67]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1548, wk[3]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) keys_U33 ( .common_out(common_out), .a ({common_xor[0], correct_key_s0[103]}), .b ({common_xor[1], correct_key_s0[39]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1551, wk[39]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) keys_U32 ( .common_out(common_out), .a ({common_xor[0], correct_key_s0[102]}), .b ({common_xor[1], correct_key_s0[38]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1554, wk[38]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) keys_U31 ( .common_out(common_out), .a ({common_xor[0], correct_key_s0[101]}), .b ({common_xor[1], correct_key_s0[37]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1557, wk[37]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) keys_U30 ( .common_out(common_out), .a ({common_xor[0], correct_key_s0[100]}), .b ({common_xor[1], correct_key_s0[36]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1560, wk[36]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) keys_U29 ( .common_out(common_out), .a ({common_xor[0], correct_key_s0[35]}), .b ({common_xor[1], correct_key_s0[99]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1563, wk[35]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) keys_U28 ( .common_out(common_out), .a ({common_xor[0], correct_key_s0[34]}), .b ({common_xor[1], correct_key_s0[98]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1566, wk[34]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) keys_U27 ( .common_out(common_out), .a ({common_xor[0], correct_key_s0[33]}), .b ({common_xor[1], correct_key_s0[97]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1569, wk[33]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) keys_U26 ( .common_out(common_out), .a ({common_xor[0], correct_key_s0[32]}), .b ({common_xor[1], correct_key_s0[96]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1572, wk[32]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) keys_U25 ( .common_out(common_out), .a ({common_xor[0], correct_key_s0[31]}), .b ({common_xor[1], correct_key_s0[95]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1575, wk[31]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) keys_U24 ( .common_out(common_out), .a ({common_xor[0], correct_key_s0[30]}), .b ({common_xor[1], correct_key_s0[94]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1578, wk[30]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) keys_U23 ( .common_out(common_out), .a ({common_xor[0], correct_key_s0[2]}), .b ({common_xor[1], correct_key_s0[66]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1581, wk[2]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) keys_U22 ( .common_out(common_out), .a ({common_xor[0], correct_key_s0[29]}), .b ({common_xor[1], correct_key_s0[93]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1584, wk[29]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) keys_U21 ( .common_out(common_out), .a ({common_xor[0], correct_key_s0[28]}), .b ({common_xor[1], correct_key_s0[92]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1587, wk[28]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) keys_U20 ( .common_out(common_out), .a ({common_xor[0], correct_key_s0[27]}), .b ({common_xor[1], correct_key_s0[91]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1590, wk[27]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) keys_U19 ( .common_out(common_out), .a ({common_xor[0], correct_key_s0[26]}), .b ({common_xor[1], correct_key_s0[90]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1593, wk[26]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) keys_U18 ( .common_out(common_out), .a ({common_xor[0], correct_key_s0[25]}), .b ({common_xor[1], correct_key_s0[89]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1596, wk[25]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) keys_U17 ( .common_out(common_out), .a ({common_xor[0], correct_key_s0[24]}), .b ({common_xor[1], correct_key_s0[88]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1599, wk[24]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) keys_U16 ( .common_out(common_out), .a ({common_xor[0], correct_key_s0[23]}), .b ({common_xor[1], correct_key_s0[87]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1602, wk[23]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) keys_U15 ( .common_out(common_out), .a ({common_xor[0], correct_key_s0[22]}), .b ({common_xor[1], correct_key_s0[86]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1605, wk[22]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) keys_U14 ( .common_out(common_out), .a ({common_xor[0], correct_key_s0[21]}), .b ({common_xor[1], correct_key_s0[85]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1608, wk[21]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) keys_U13 ( .common_out(common_out), .a ({common_xor[0], correct_key_s0[20]}), .b ({common_xor[1], correct_key_s0[84]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1611, wk[20]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) keys_U12 ( .common_out(common_out), .a ({common_xor[0], correct_key_s0[1]}), .b ({common_xor[1], correct_key_s0[65]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1614, wk[1]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) keys_U11 ( .common_out(common_out), .a ({common_xor[0], correct_key_s0[19]}), .b ({common_xor[1], correct_key_s0[83]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1617, wk[19]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) keys_U10 ( .common_out(common_out), .a ({common_xor[0], correct_key_s0[18]}), .b ({common_xor[1], correct_key_s0[82]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1620, wk[18]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) keys_U9 ( .common_out(common_out), .a ({common_xor[0], correct_key_s0[17]}), .b ({common_xor[1], correct_key_s0[81]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1623, wk[17]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) keys_U8 ( .common_out(common_out), .a ({common_xor[0], correct_key_s0[16]}), .b ({common_xor[1], correct_key_s0[80]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1626, wk[16]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) keys_U7 ( .common_out(common_out), .a ({common_xor[0], correct_key_s0[15]}), .b ({common_xor[1], correct_key_s0[79]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1629, wk[15]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) keys_U6 ( .common_out(common_out), .a ({common_xor[0], correct_key_s0[14]}), .b ({common_xor[1], correct_key_s0[78]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1632, wk[14]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) keys_U5 ( .common_out(common_out), .a ({common_xor[0], correct_key_s0[13]}), .b ({common_xor[1], correct_key_s0[77]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1635, wk[13]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) keys_U4 ( .common_out(common_out), .a ({common_xor[0], correct_key_s0[12]}), .b ({common_xor[1], correct_key_s0[76]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1638, wk[12]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) keys_U3 ( .common_out(common_out), .a ({common_xor[0], correct_key_s0[11]}), .b ({common_xor[1], correct_key_s0[75]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1641, wk[11]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) keys_U2 ( .common_out(common_out), .a ({common_xor[0], correct_key_s0[10]}), .b ({common_xor[1], correct_key_s0[74]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1644, wk[10]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) keys_U1 ( .common_out(common_out), .a ({common_xor[0], correct_key_s0[0]}), .b ({common_xor[1], correct_key_s0[64]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1647, wk[0]}) ) ; /* xor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U78 ( .common_out(common_out), .a ({new_AGEMA_signal_1653, Midori_rounds_SelectedKey_8_}), .b ({1'b0, Midori_rounds_round_Constant[2]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2441, Midori_rounds_n16}) ) ; /* xnor_COMAR_type_3 */
    xnor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U71 ( .common_out(common_out), .a ({new_AGEMA_signal_2060, Midori_rounds_SelectedKey_60_}), .b ({1'b0, Midori_rounds_round_Constant[15]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2496, Midori_rounds_n15}) ) ; /* xnor_COMAR_type_3 */
    xnor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U65 ( .common_out(common_out), .a ({new_AGEMA_signal_2056, Midori_rounds_SelectedKey_56_}), .b ({1'b0, Midori_rounds_round_Constant[14]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2497, Midori_rounds_n14}) ) ; /* xnor_COMAR_type_3 */
    xnor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U60 ( .common_out(common_out), .a ({new_AGEMA_signal_2052, Midori_rounds_SelectedKey_52_}), .b ({1'b0, Midori_rounds_round_Constant[13]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2498, Midori_rounds_n13}) ) ; /* xnor_COMAR_type_3 */
    xnor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U56 ( .common_out(common_out), .a ({new_AGEMA_signal_1652, Midori_rounds_SelectedKey_4_}), .b ({1'b0, Midori_rounds_round_Constant[1]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2499, Midori_rounds_n12}) ) ; /* xnor_COMAR_type_3 */
    xnor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U53 ( .common_out(common_out), .a ({new_AGEMA_signal_2048, Midori_rounds_SelectedKey_48_}), .b ({1'b0, Midori_rounds_round_Constant[12]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2618, Midori_rounds_n11}) ) ; /* xnor_COMAR_type_3 */
    xnor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U48 ( .common_out(common_out), .a ({new_AGEMA_signal_2044, Midori_rounds_SelectedKey_44_}), .b ({1'b0, Midori_rounds_round_Constant[11]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2460, Midori_rounds_n10}) ) ; /* xnor_COMAR_type_3 */
    xnor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U43 ( .common_out(common_out), .a ({new_AGEMA_signal_2040, Midori_rounds_SelectedKey_40_}), .b ({1'b0, Midori_rounds_round_Constant[10]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2500, Midori_rounds_n9}) ) ; /* xnor_COMAR_type_3 */
    xnor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U37 ( .common_out(common_out), .a ({new_AGEMA_signal_2036, Midori_rounds_SelectedKey_36_}), .b ({1'b0, Midori_rounds_round_Constant[9]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2468, Midori_rounds_n8}) ) ; /* xnor_COMAR_type_3 */
    xnor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U32 ( .common_out(common_out), .a ({new_AGEMA_signal_2032, Midori_rounds_SelectedKey_32_}), .b ({1'b0, Midori_rounds_round_Constant[8]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2501, Midori_rounds_n7}) ) ; /* xnor_COMAR_type_3 */
    xnor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U26 ( .common_out(common_out), .a ({new_AGEMA_signal_2028, Midori_rounds_SelectedKey_28_}), .b ({1'b0, Midori_rounds_round_Constant[7]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2564, Midori_rounds_n6}) ) ; /* xnor_COMAR_type_3 */
    xnor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U21 ( .common_out(common_out), .a ({new_AGEMA_signal_2025, Midori_rounds_SelectedKey_24_}), .b ({1'b0, Midori_rounds_round_Constant[6]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2502, Midori_rounds_n5}) ) ; /* xnor_COMAR_type_3 */
    xnor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U16 ( .common_out(common_out), .a ({new_AGEMA_signal_2021, Midori_rounds_SelectedKey_20_}), .b ({1'b0, Midori_rounds_round_Constant[5]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2482, Midori_rounds_n4}) ) ; /* xnor_COMAR_type_3 */
    xnor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U10 ( .common_out(common_out), .a ({new_AGEMA_signal_2017, Midori_rounds_SelectedKey_16_}), .b ({1'b0, Midori_rounds_round_Constant[4]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2503, Midori_rounds_n3}) ) ; /* xnor_COMAR_type_3 */
    xnor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U5 ( .common_out(common_out), .a ({new_AGEMA_signal_2016, Midori_rounds_SelectedKey_12_}), .b ({1'b0, Midori_rounds_round_Constant[3]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2504, Midori_rounds_n2}) ) ; /* xnor_COMAR_type_3 */
    xnor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U1 ( .common_out(common_out), .a ({new_AGEMA_signal_1648, Midori_rounds_SelectedKey_0_}), .b ({1'b0, Midori_rounds_round_Constant[0]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2505, Midori_rounds_n1}) ) ; /* xnor_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_0_U14 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_roundReg_out[0]}), .b ({common_and2[1], Midori_rounds_roundReg_out[3]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1663, Midori_rounds_sub_sBox_PRINCE_0_n10}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_0_U13 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_sub_sBox_PRINCE_0_n8}), .b ({common_and2[1], Midori_rounds_sub_sBox_PRINCE_0_n7}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1918, Midori_rounds_sub_sBox_PRINCE_0_n15}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_0_U10 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_roundReg_out[3]}), .b ({common_and2[1], Midori_rounds_sub_sBox_PRINCE_0_n9}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1919, Midori_rounds_sub_sBox_PRINCE_0_n4}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_0_U9 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_roundReg_out[2]}), .b ({common_and2[1], Midori_rounds_sub_sBox_PRINCE_0_n8}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1920, Midori_rounds_sub_sBox_PRINCE_0_n6}) ) ; /* nand_COMAR_type_2 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_0_U5 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_roundReg_out[2]}), .b ({common_and2[1], Midori_rounds_roundReg_out[3]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1665, Midori_rounds_sub_sBox_PRINCE_0_n1}) ) ; /* nor_COMAR_type_2 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_0_U3 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_sub_sBox_PRINCE_0_n9}), .b ({common_and2[1], Midori_rounds_sub_sBox_PRINCE_0_n8}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1922, Midori_rounds_sub_sBox_PRINCE_0_n13}) ) ; /* nor_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_1_U14 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_roundReg_out[4]}), .b ({common_and2[1], Midori_rounds_roundReg_out[7]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1671, Midori_rounds_sub_sBox_PRINCE_1_n10}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_1_U13 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_sub_sBox_PRINCE_1_n8}), .b ({common_and2[1], Midori_rounds_sub_sBox_PRINCE_1_n7}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1924, Midori_rounds_sub_sBox_PRINCE_1_n15}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_1_U10 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_roundReg_out[7]}), .b ({common_and2[1], Midori_rounds_sub_sBox_PRINCE_1_n9}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1925, Midori_rounds_sub_sBox_PRINCE_1_n4}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_1_U9 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_roundReg_out[6]}), .b ({common_and2[1], Midori_rounds_sub_sBox_PRINCE_1_n8}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1926, Midori_rounds_sub_sBox_PRINCE_1_n6}) ) ; /* nand_COMAR_type_2 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_1_U5 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_roundReg_out[6]}), .b ({common_and2[1], Midori_rounds_roundReg_out[7]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1673, Midori_rounds_sub_sBox_PRINCE_1_n1}) ) ; /* nor_COMAR_type_2 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_1_U3 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_sub_sBox_PRINCE_1_n9}), .b ({common_and2[1], Midori_rounds_sub_sBox_PRINCE_1_n8}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1928, Midori_rounds_sub_sBox_PRINCE_1_n13}) ) ; /* nor_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_2_U14 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_roundReg_out[8]}), .b ({common_and2[1], Midori_rounds_roundReg_out[11]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1679, Midori_rounds_sub_sBox_PRINCE_2_n10}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_2_U13 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_sub_sBox_PRINCE_2_n8}), .b ({common_and2[1], Midori_rounds_sub_sBox_PRINCE_2_n7}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1930, Midori_rounds_sub_sBox_PRINCE_2_n15}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_2_U10 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_roundReg_out[11]}), .b ({common_and2[1], Midori_rounds_sub_sBox_PRINCE_2_n9}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1931, Midori_rounds_sub_sBox_PRINCE_2_n4}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_2_U9 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_roundReg_out[10]}), .b ({common_and2[1], Midori_rounds_sub_sBox_PRINCE_2_n8}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1932, Midori_rounds_sub_sBox_PRINCE_2_n6}) ) ; /* nand_COMAR_type_2 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_2_U5 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_roundReg_out[10]}), .b ({common_and2[1], Midori_rounds_roundReg_out[11]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1681, Midori_rounds_sub_sBox_PRINCE_2_n1}) ) ; /* nor_COMAR_type_2 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_2_U3 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_sub_sBox_PRINCE_2_n9}), .b ({common_and2[1], Midori_rounds_sub_sBox_PRINCE_2_n8}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1934, Midori_rounds_sub_sBox_PRINCE_2_n13}) ) ; /* nor_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_3_U14 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_roundReg_out[12]}), .b ({common_and2[1], Midori_rounds_roundReg_out[15]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1687, Midori_rounds_sub_sBox_PRINCE_3_n10}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_3_U13 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_sub_sBox_PRINCE_3_n8}), .b ({common_and2[1], Midori_rounds_sub_sBox_PRINCE_3_n7}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1936, Midori_rounds_sub_sBox_PRINCE_3_n15}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_3_U10 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_roundReg_out[15]}), .b ({common_and2[1], Midori_rounds_sub_sBox_PRINCE_3_n9}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1937, Midori_rounds_sub_sBox_PRINCE_3_n4}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_3_U9 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_roundReg_out[14]}), .b ({common_and2[1], Midori_rounds_sub_sBox_PRINCE_3_n8}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1938, Midori_rounds_sub_sBox_PRINCE_3_n6}) ) ; /* nand_COMAR_type_2 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_3_U5 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_roundReg_out[14]}), .b ({common_and2[1], Midori_rounds_roundReg_out[15]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1689, Midori_rounds_sub_sBox_PRINCE_3_n1}) ) ; /* nor_COMAR_type_2 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_3_U3 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_sub_sBox_PRINCE_3_n9}), .b ({common_and2[1], Midori_rounds_sub_sBox_PRINCE_3_n8}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1940, Midori_rounds_sub_sBox_PRINCE_3_n13}) ) ; /* nor_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_4_U14 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_roundReg_out[16]}), .b ({common_and2[1], Midori_rounds_roundReg_out[19]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1695, Midori_rounds_sub_sBox_PRINCE_4_n10}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_4_U13 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_sub_sBox_PRINCE_4_n8}), .b ({common_and2[1], Midori_rounds_sub_sBox_PRINCE_4_n7}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1942, Midori_rounds_sub_sBox_PRINCE_4_n15}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_4_U10 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_roundReg_out[19]}), .b ({common_and2[1], Midori_rounds_sub_sBox_PRINCE_4_n9}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1943, Midori_rounds_sub_sBox_PRINCE_4_n4}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_4_U9 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_roundReg_out[18]}), .b ({common_and2[1], Midori_rounds_sub_sBox_PRINCE_4_n8}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1944, Midori_rounds_sub_sBox_PRINCE_4_n6}) ) ; /* nand_COMAR_type_2 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_4_U5 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_roundReg_out[18]}), .b ({common_and2[1], Midori_rounds_roundReg_out[19]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1697, Midori_rounds_sub_sBox_PRINCE_4_n1}) ) ; /* nor_COMAR_type_2 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_4_U3 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_sub_sBox_PRINCE_4_n9}), .b ({common_and2[1], Midori_rounds_sub_sBox_PRINCE_4_n8}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1946, Midori_rounds_sub_sBox_PRINCE_4_n13}) ) ; /* nor_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_5_U14 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_roundReg_out[20]}), .b ({common_and2[1], Midori_rounds_roundReg_out[23]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1703, Midori_rounds_sub_sBox_PRINCE_5_n10}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_5_U13 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_sub_sBox_PRINCE_5_n8}), .b ({common_and2[1], Midori_rounds_sub_sBox_PRINCE_5_n7}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1948, Midori_rounds_sub_sBox_PRINCE_5_n15}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_5_U10 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_roundReg_out[23]}), .b ({common_and2[1], Midori_rounds_sub_sBox_PRINCE_5_n9}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1949, Midori_rounds_sub_sBox_PRINCE_5_n4}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_5_U9 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_roundReg_out[22]}), .b ({common_and2[1], Midori_rounds_sub_sBox_PRINCE_5_n8}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1950, Midori_rounds_sub_sBox_PRINCE_5_n6}) ) ; /* nand_COMAR_type_2 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_5_U5 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_roundReg_out[22]}), .b ({common_and2[1], Midori_rounds_roundReg_out[23]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1705, Midori_rounds_sub_sBox_PRINCE_5_n1}) ) ; /* nor_COMAR_type_2 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_5_U3 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_sub_sBox_PRINCE_5_n9}), .b ({common_and2[1], Midori_rounds_sub_sBox_PRINCE_5_n8}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1952, Midori_rounds_sub_sBox_PRINCE_5_n13}) ) ; /* nor_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_6_U14 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_roundReg_out[24]}), .b ({common_and2[1], Midori_rounds_roundReg_out[27]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1711, Midori_rounds_sub_sBox_PRINCE_6_n10}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_6_U13 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_sub_sBox_PRINCE_6_n8}), .b ({common_and2[1], Midori_rounds_sub_sBox_PRINCE_6_n7}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1954, Midori_rounds_sub_sBox_PRINCE_6_n15}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_6_U10 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_roundReg_out[27]}), .b ({common_and2[1], Midori_rounds_sub_sBox_PRINCE_6_n9}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1955, Midori_rounds_sub_sBox_PRINCE_6_n4}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_6_U9 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_roundReg_out[26]}), .b ({common_and2[1], Midori_rounds_sub_sBox_PRINCE_6_n8}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1956, Midori_rounds_sub_sBox_PRINCE_6_n6}) ) ; /* nand_COMAR_type_2 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_6_U5 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_roundReg_out[26]}), .b ({common_and2[1], Midori_rounds_roundReg_out[27]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1713, Midori_rounds_sub_sBox_PRINCE_6_n1}) ) ; /* nor_COMAR_type_2 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_6_U3 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_sub_sBox_PRINCE_6_n9}), .b ({common_and2[1], Midori_rounds_sub_sBox_PRINCE_6_n8}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1958, Midori_rounds_sub_sBox_PRINCE_6_n13}) ) ; /* nor_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_7_U14 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_roundReg_out[28]}), .b ({common_and2[1], Midori_rounds_roundReg_out[31]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1719, Midori_rounds_sub_sBox_PRINCE_7_n10}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_7_U13 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_sub_sBox_PRINCE_7_n8}), .b ({common_and2[1], Midori_rounds_sub_sBox_PRINCE_7_n7}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1960, Midori_rounds_sub_sBox_PRINCE_7_n15}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_7_U10 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_roundReg_out[31]}), .b ({common_and2[1], Midori_rounds_sub_sBox_PRINCE_7_n9}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1961, Midori_rounds_sub_sBox_PRINCE_7_n4}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_7_U9 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_roundReg_out[30]}), .b ({common_and2[1], Midori_rounds_sub_sBox_PRINCE_7_n8}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1962, Midori_rounds_sub_sBox_PRINCE_7_n6}) ) ; /* nand_COMAR_type_2 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_7_U5 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_roundReg_out[30]}), .b ({common_and2[1], Midori_rounds_roundReg_out[31]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1721, Midori_rounds_sub_sBox_PRINCE_7_n1}) ) ; /* nor_COMAR_type_2 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_7_U3 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_sub_sBox_PRINCE_7_n9}), .b ({common_and2[1], Midori_rounds_sub_sBox_PRINCE_7_n8}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1964, Midori_rounds_sub_sBox_PRINCE_7_n13}) ) ; /* nor_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_8_U14 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_roundReg_out[32]}), .b ({common_and2[1], Midori_rounds_roundReg_out[35]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1727, Midori_rounds_sub_sBox_PRINCE_8_n10}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_8_U13 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_sub_sBox_PRINCE_8_n8}), .b ({common_and2[1], Midori_rounds_sub_sBox_PRINCE_8_n7}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1966, Midori_rounds_sub_sBox_PRINCE_8_n15}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_8_U10 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_roundReg_out[35]}), .b ({common_and2[1], Midori_rounds_sub_sBox_PRINCE_8_n9}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1967, Midori_rounds_sub_sBox_PRINCE_8_n4}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_8_U9 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_roundReg_out[34]}), .b ({common_and2[1], Midori_rounds_sub_sBox_PRINCE_8_n8}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1968, Midori_rounds_sub_sBox_PRINCE_8_n6}) ) ; /* nand_COMAR_type_2 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_8_U5 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_roundReg_out[34]}), .b ({common_and2[1], Midori_rounds_roundReg_out[35]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1729, Midori_rounds_sub_sBox_PRINCE_8_n1}) ) ; /* nor_COMAR_type_2 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_8_U3 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_sub_sBox_PRINCE_8_n9}), .b ({common_and2[1], Midori_rounds_sub_sBox_PRINCE_8_n8}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1970, Midori_rounds_sub_sBox_PRINCE_8_n13}) ) ; /* nor_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_9_U14 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_roundReg_out[36]}), .b ({common_and2[1], Midori_rounds_roundReg_out[39]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1735, Midori_rounds_sub_sBox_PRINCE_9_n10}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_9_U13 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_sub_sBox_PRINCE_9_n8}), .b ({common_and2[1], Midori_rounds_sub_sBox_PRINCE_9_n7}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1972, Midori_rounds_sub_sBox_PRINCE_9_n15}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_9_U10 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_roundReg_out[39]}), .b ({common_and2[1], Midori_rounds_sub_sBox_PRINCE_9_n9}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1973, Midori_rounds_sub_sBox_PRINCE_9_n4}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_9_U9 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_roundReg_out[38]}), .b ({common_and2[1], Midori_rounds_sub_sBox_PRINCE_9_n8}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1974, Midori_rounds_sub_sBox_PRINCE_9_n6}) ) ; /* nand_COMAR_type_2 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_9_U5 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_roundReg_out[38]}), .b ({common_and2[1], Midori_rounds_roundReg_out[39]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1737, Midori_rounds_sub_sBox_PRINCE_9_n1}) ) ; /* nor_COMAR_type_2 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_9_U3 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_sub_sBox_PRINCE_9_n9}), .b ({common_and2[1], Midori_rounds_sub_sBox_PRINCE_9_n8}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1976, Midori_rounds_sub_sBox_PRINCE_9_n13}) ) ; /* nor_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_10_U14 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_roundReg_out[40]}), .b ({common_and2[1], Midori_rounds_roundReg_out[43]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1743, Midori_rounds_sub_sBox_PRINCE_10_n10}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_10_U13 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_sub_sBox_PRINCE_10_n8}), .b ({common_and2[1], Midori_rounds_sub_sBox_PRINCE_10_n7}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1978, Midori_rounds_sub_sBox_PRINCE_10_n15}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_10_U10 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_roundReg_out[43]}), .b ({common_and2[1], Midori_rounds_sub_sBox_PRINCE_10_n9}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1979, Midori_rounds_sub_sBox_PRINCE_10_n4}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_10_U9 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_roundReg_out[42]}), .b ({common_and2[1], Midori_rounds_sub_sBox_PRINCE_10_n8}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1980, Midori_rounds_sub_sBox_PRINCE_10_n6}) ) ; /* nand_COMAR_type_2 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_10_U5 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_roundReg_out[42]}), .b ({common_and2[1], Midori_rounds_roundReg_out[43]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1745, Midori_rounds_sub_sBox_PRINCE_10_n1}) ) ; /* nor_COMAR_type_2 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_10_U3 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_sub_sBox_PRINCE_10_n9}), .b ({common_and2[1], Midori_rounds_sub_sBox_PRINCE_10_n8}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1982, Midori_rounds_sub_sBox_PRINCE_10_n13}) ) ; /* nor_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_11_U14 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_roundReg_out[44]}), .b ({common_and2[1], Midori_rounds_roundReg_out[47]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1751, Midori_rounds_sub_sBox_PRINCE_11_n10}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_11_U13 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_sub_sBox_PRINCE_11_n8}), .b ({common_and2[1], Midori_rounds_sub_sBox_PRINCE_11_n7}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1984, Midori_rounds_sub_sBox_PRINCE_11_n15}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_11_U10 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_roundReg_out[47]}), .b ({common_and2[1], Midori_rounds_sub_sBox_PRINCE_11_n9}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1985, Midori_rounds_sub_sBox_PRINCE_11_n4}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_11_U9 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_roundReg_out[46]}), .b ({common_and2[1], Midori_rounds_sub_sBox_PRINCE_11_n8}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1986, Midori_rounds_sub_sBox_PRINCE_11_n6}) ) ; /* nand_COMAR_type_2 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_11_U5 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_roundReg_out[46]}), .b ({common_and2[1], Midori_rounds_roundReg_out[47]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1753, Midori_rounds_sub_sBox_PRINCE_11_n1}) ) ; /* nor_COMAR_type_2 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_11_U3 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_sub_sBox_PRINCE_11_n9}), .b ({common_and2[1], Midori_rounds_sub_sBox_PRINCE_11_n8}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1988, Midori_rounds_sub_sBox_PRINCE_11_n13}) ) ; /* nor_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_12_U14 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_roundReg_out[48]}), .b ({common_and2[1], Midori_rounds_roundReg_out[51]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1759, Midori_rounds_sub_sBox_PRINCE_12_n10}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_12_U13 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_sub_sBox_PRINCE_12_n8}), .b ({common_and2[1], Midori_rounds_sub_sBox_PRINCE_12_n7}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1990, Midori_rounds_sub_sBox_PRINCE_12_n15}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_12_U10 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_roundReg_out[51]}), .b ({common_and2[1], Midori_rounds_sub_sBox_PRINCE_12_n9}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1991, Midori_rounds_sub_sBox_PRINCE_12_n4}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_12_U9 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_roundReg_out[50]}), .b ({common_and2[1], Midori_rounds_sub_sBox_PRINCE_12_n8}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1992, Midori_rounds_sub_sBox_PRINCE_12_n6}) ) ; /* nand_COMAR_type_2 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_12_U5 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_roundReg_out[50]}), .b ({common_and2[1], Midori_rounds_roundReg_out[51]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1761, Midori_rounds_sub_sBox_PRINCE_12_n1}) ) ; /* nor_COMAR_type_2 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_12_U3 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_sub_sBox_PRINCE_12_n9}), .b ({common_and2[1], Midori_rounds_sub_sBox_PRINCE_12_n8}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1994, Midori_rounds_sub_sBox_PRINCE_12_n13}) ) ; /* nor_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_13_U14 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_roundReg_out[52]}), .b ({common_and2[1], Midori_rounds_roundReg_out[55]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1767, Midori_rounds_sub_sBox_PRINCE_13_n10}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_13_U13 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_sub_sBox_PRINCE_13_n8}), .b ({common_and2[1], Midori_rounds_sub_sBox_PRINCE_13_n7}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1996, Midori_rounds_sub_sBox_PRINCE_13_n15}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_13_U10 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_roundReg_out[55]}), .b ({common_and2[1], Midori_rounds_sub_sBox_PRINCE_13_n9}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1997, Midori_rounds_sub_sBox_PRINCE_13_n4}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_13_U9 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_roundReg_out[54]}), .b ({common_and2[1], Midori_rounds_sub_sBox_PRINCE_13_n8}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1998, Midori_rounds_sub_sBox_PRINCE_13_n6}) ) ; /* nand_COMAR_type_2 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_13_U5 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_roundReg_out[54]}), .b ({common_and2[1], Midori_rounds_roundReg_out[55]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1769, Midori_rounds_sub_sBox_PRINCE_13_n1}) ) ; /* nor_COMAR_type_2 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_13_U3 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_sub_sBox_PRINCE_13_n9}), .b ({common_and2[1], Midori_rounds_sub_sBox_PRINCE_13_n8}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2000, Midori_rounds_sub_sBox_PRINCE_13_n13}) ) ; /* nor_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_14_U14 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_roundReg_out[56]}), .b ({common_and2[1], Midori_rounds_roundReg_out[59]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1775, Midori_rounds_sub_sBox_PRINCE_14_n10}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_14_U13 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_sub_sBox_PRINCE_14_n8}), .b ({common_and2[1], Midori_rounds_sub_sBox_PRINCE_14_n7}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2002, Midori_rounds_sub_sBox_PRINCE_14_n15}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_14_U10 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_roundReg_out[59]}), .b ({common_and2[1], Midori_rounds_sub_sBox_PRINCE_14_n9}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2003, Midori_rounds_sub_sBox_PRINCE_14_n4}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_14_U9 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_roundReg_out[58]}), .b ({common_and2[1], Midori_rounds_sub_sBox_PRINCE_14_n8}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2004, Midori_rounds_sub_sBox_PRINCE_14_n6}) ) ; /* nand_COMAR_type_2 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_14_U5 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_roundReg_out[58]}), .b ({common_and2[1], Midori_rounds_roundReg_out[59]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1777, Midori_rounds_sub_sBox_PRINCE_14_n1}) ) ; /* nor_COMAR_type_2 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_14_U3 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_sub_sBox_PRINCE_14_n9}), .b ({common_and2[1], Midori_rounds_sub_sBox_PRINCE_14_n8}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2006, Midori_rounds_sub_sBox_PRINCE_14_n13}) ) ; /* nor_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_15_U14 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_roundReg_out[60]}), .b ({common_and2[1], Midori_rounds_roundReg_out[63]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1783, Midori_rounds_sub_sBox_PRINCE_15_n10}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_15_U13 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_sub_sBox_PRINCE_15_n8}), .b ({common_and2[1], Midori_rounds_sub_sBox_PRINCE_15_n7}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2008, Midori_rounds_sub_sBox_PRINCE_15_n15}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_15_U10 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_roundReg_out[63]}), .b ({common_and2[1], Midori_rounds_sub_sBox_PRINCE_15_n9}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2009, Midori_rounds_sub_sBox_PRINCE_15_n4}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_15_U9 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_roundReg_out[62]}), .b ({common_and2[1], Midori_rounds_sub_sBox_PRINCE_15_n8}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2010, Midori_rounds_sub_sBox_PRINCE_15_n6}) ) ; /* nand_COMAR_type_2 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_15_U5 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_roundReg_out[62]}), .b ({common_and2[1], Midori_rounds_roundReg_out[63]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1785, Midori_rounds_sub_sBox_PRINCE_15_n1}) ) ; /* nor_COMAR_type_2 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_15_U3 ( .common_out(common_out), .a ({common_and2[0], Midori_rounds_sub_sBox_PRINCE_15_n9}), .b ({common_and2[1], Midori_rounds_sub_sBox_PRINCE_15_n8}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2012, Midori_rounds_sub_sBox_PRINCE_15_n13}) ) ; /* nor_COMAR_type_2 */

    /* cells in depth 3 */

    /* cells in depth 4 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U64 ( .common_out(common_out), .a ({common_xor[0], wk[9]}), .b ({common_xor[1], correct_DataIn_s0[9]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1790, Midori_add_Result_Start[9]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U63 ( .common_out(common_out), .a ({common_xor[0], wk[8]}), .b ({common_xor[1], correct_DataIn_s0[8]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1792, Midori_add_Result_Start[8]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U62 ( .common_out(common_out), .a ({common_xor[0], wk[7]}), .b ({common_xor[1], correct_DataIn_s0[7]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1794, Midori_add_Result_Start[7]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U61 ( .common_out(common_out), .a ({common_xor[0], wk[6]}), .b ({common_xor[1], correct_DataIn_s0[6]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1796, Midori_add_Result_Start[6]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U60 ( .common_out(common_out), .a ({common_xor[0], wk[63]}), .b ({common_xor[1], correct_DataIn_s0[63]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1798, Midori_add_Result_Start[63]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U59 ( .common_out(common_out), .a ({common_xor[0], wk[62]}), .b ({common_xor[1], correct_DataIn_s0[62]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1800, Midori_add_Result_Start[62]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U58 ( .common_out(common_out), .a ({common_xor[0], wk[61]}), .b ({common_xor[1], correct_DataIn_s0[61]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1802, Midori_add_Result_Start[61]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U57 ( .common_out(common_out), .a ({common_xor[0], wk[60]}), .b ({common_xor[1], correct_DataIn_s0[60]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1804, Midori_add_Result_Start[60]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U56 ( .common_out(common_out), .a ({common_xor[0], wk[5]}), .b ({common_xor[1], correct_DataIn_s0[5]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1806, Midori_add_Result_Start[5]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U55 ( .common_out(common_out), .a ({common_xor[0], wk[59]}), .b ({common_xor[1], correct_DataIn_s0[59]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1808, Midori_add_Result_Start[59]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U54 ( .common_out(common_out), .a ({common_xor[0], wk[58]}), .b ({common_xor[1], correct_DataIn_s0[58]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1810, Midori_add_Result_Start[58]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U53 ( .common_out(common_out), .a ({common_xor[0], wk[57]}), .b ({common_xor[1], correct_DataIn_s0[57]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1812, Midori_add_Result_Start[57]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U52 ( .common_out(common_out), .a ({common_xor[0], wk[56]}), .b ({common_xor[1], correct_DataIn_s0[56]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1814, Midori_add_Result_Start[56]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U51 ( .common_out(common_out), .a ({common_xor[0], wk[55]}), .b ({common_xor[1], correct_DataIn_s0[55]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1816, Midori_add_Result_Start[55]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U50 ( .common_out(common_out), .a ({common_xor[0], wk[54]}), .b ({common_xor[1], correct_DataIn_s0[54]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1818, Midori_add_Result_Start[54]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U49 ( .common_out(common_out), .a ({common_xor[0], wk[53]}), .b ({common_xor[1], correct_DataIn_s0[53]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1820, Midori_add_Result_Start[53]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U48 ( .common_out(common_out), .a ({common_xor[0], wk[52]}), .b ({common_xor[1], correct_DataIn_s0[52]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1822, Midori_add_Result_Start[52]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U47 ( .common_out(common_out), .a ({common_xor[0], wk[51]}), .b ({common_xor[1], correct_DataIn_s0[51]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1824, Midori_add_Result_Start[51]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U46 ( .common_out(common_out), .a ({common_xor[0], wk[50]}), .b ({common_xor[1], correct_DataIn_s0[50]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1826, Midori_add_Result_Start[50]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U45 ( .common_out(common_out), .a ({common_xor[0], wk[4]}), .b ({common_xor[1], correct_DataIn_s0[4]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1828, Midori_add_Result_Start[4]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U44 ( .common_out(common_out), .a ({common_xor[0], wk[49]}), .b ({common_xor[1], correct_DataIn_s0[49]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1830, Midori_add_Result_Start[49]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U43 ( .common_out(common_out), .a ({common_xor[0], wk[48]}), .b ({common_xor[1], correct_DataIn_s0[48]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1832, Midori_add_Result_Start[48]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U42 ( .common_out(common_out), .a ({common_xor[0], wk[47]}), .b ({common_xor[1], correct_DataIn_s0[47]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1834, Midori_add_Result_Start[47]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U41 ( .common_out(common_out), .a ({common_xor[0], wk[46]}), .b ({common_xor[1], correct_DataIn_s0[46]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1836, Midori_add_Result_Start[46]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U40 ( .common_out(common_out), .a ({common_xor[0], wk[45]}), .b ({common_xor[1], correct_DataIn_s0[45]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1838, Midori_add_Result_Start[45]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U39 ( .common_out(common_out), .a ({common_xor[0], wk[44]}), .b ({common_xor[1], correct_DataIn_s0[44]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1840, Midori_add_Result_Start[44]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U38 ( .common_out(common_out), .a ({common_xor[0], wk[43]}), .b ({common_xor[1], correct_DataIn_s0[43]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1842, Midori_add_Result_Start[43]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U37 ( .common_out(common_out), .a ({common_xor[0], wk[42]}), .b ({common_xor[1], correct_DataIn_s0[42]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1844, Midori_add_Result_Start[42]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U36 ( .common_out(common_out), .a ({common_xor[0], wk[41]}), .b ({common_xor[1], correct_DataIn_s0[41]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1846, Midori_add_Result_Start[41]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U35 ( .common_out(common_out), .a ({common_xor[0], wk[40]}), .b ({common_xor[1], correct_DataIn_s0[40]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1848, Midori_add_Result_Start[40]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U34 ( .common_out(common_out), .a ({common_xor[0], wk[3]}), .b ({common_xor[1], correct_DataIn_s0[3]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1850, Midori_add_Result_Start[3]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U33 ( .common_out(common_out), .a ({common_xor[0], wk[39]}), .b ({common_xor[1], correct_DataIn_s0[39]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1852, Midori_add_Result_Start[39]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U32 ( .common_out(common_out), .a ({common_xor[0], wk[38]}), .b ({common_xor[1], correct_DataIn_s0[38]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1854, Midori_add_Result_Start[38]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U31 ( .common_out(common_out), .a ({common_xor[0], wk[37]}), .b ({common_xor[1], correct_DataIn_s0[37]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1856, Midori_add_Result_Start[37]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U30 ( .common_out(common_out), .a ({common_xor[0], wk[36]}), .b ({common_xor[1], correct_DataIn_s0[36]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1858, Midori_add_Result_Start[36]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U29 ( .common_out(common_out), .a ({common_xor[0], wk[35]}), .b ({common_xor[1], correct_DataIn_s0[35]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1860, Midori_add_Result_Start[35]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U28 ( .common_out(common_out), .a ({common_xor[0], wk[34]}), .b ({common_xor[1], correct_DataIn_s0[34]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1862, Midori_add_Result_Start[34]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U27 ( .common_out(common_out), .a ({common_xor[0], wk[33]}), .b ({common_xor[1], correct_DataIn_s0[33]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1864, Midori_add_Result_Start[33]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U26 ( .common_out(common_out), .a ({common_xor[0], wk[32]}), .b ({common_xor[1], correct_DataIn_s0[32]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1866, Midori_add_Result_Start[32]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U25 ( .common_out(common_out), .a ({common_xor[0], wk[31]}), .b ({common_xor[1], correct_DataIn_s0[31]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1868, Midori_add_Result_Start[31]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U24 ( .common_out(common_out), .a ({common_xor[0], wk[30]}), .b ({common_xor[1], correct_DataIn_s0[30]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1870, Midori_add_Result_Start[30]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U23 ( .common_out(common_out), .a ({common_xor[0], wk[2]}), .b ({common_xor[1], correct_DataIn_s0[2]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1872, Midori_add_Result_Start[2]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U22 ( .common_out(common_out), .a ({common_xor[0], wk[29]}), .b ({common_xor[1], correct_DataIn_s0[29]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1874, Midori_add_Result_Start[29]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U21 ( .common_out(common_out), .a ({common_xor[0], wk[28]}), .b ({common_xor[1], correct_DataIn_s0[28]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1876, Midori_add_Result_Start[28]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U20 ( .common_out(common_out), .a ({common_xor[0], wk[27]}), .b ({common_xor[1], correct_DataIn_s0[27]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1878, Midori_add_Result_Start[27]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U19 ( .common_out(common_out), .a ({common_xor[0], wk[26]}), .b ({common_xor[1], correct_DataIn_s0[26]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1880, Midori_add_Result_Start[26]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U18 ( .common_out(common_out), .a ({common_xor[0], wk[25]}), .b ({common_xor[1], correct_DataIn_s0[25]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1882, Midori_add_Result_Start[25]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U17 ( .common_out(common_out), .a ({common_xor[0], wk[24]}), .b ({common_xor[1], correct_DataIn_s0[24]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1884, Midori_add_Result_Start[24]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U16 ( .common_out(common_out), .a ({common_xor[0], wk[23]}), .b ({common_xor[1], correct_DataIn_s0[23]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1886, Midori_add_Result_Start[23]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U15 ( .common_out(common_out), .a ({common_xor[0], wk[22]}), .b ({common_xor[1], correct_DataIn_s0[22]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1888, Midori_add_Result_Start[22]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U14 ( .common_out(common_out), .a ({common_xor[0], wk[21]}), .b ({common_xor[1], correct_DataIn_s0[21]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1890, Midori_add_Result_Start[21]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U13 ( .common_out(common_out), .a ({common_xor[0], wk[20]}), .b ({common_xor[1], correct_DataIn_s0[20]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1892, Midori_add_Result_Start[20]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U12 ( .common_out(common_out), .a ({common_xor[0], wk[1]}), .b ({common_xor[1], correct_DataIn_s0[1]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1894, Midori_add_Result_Start[1]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U11 ( .common_out(common_out), .a ({common_xor[0], wk[19]}), .b ({common_xor[1], correct_DataIn_s0[19]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1896, Midori_add_Result_Start[19]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U10 ( .common_out(common_out), .a ({common_xor[0], wk[18]}), .b ({common_xor[1], correct_DataIn_s0[18]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1898, Midori_add_Result_Start[18]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U9 ( .common_out(common_out), .a ({common_xor[0], wk[17]}), .b ({common_xor[1], correct_DataIn_s0[17]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1900, Midori_add_Result_Start[17]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U8 ( .common_out(common_out), .a ({common_xor[0], wk[16]}), .b ({common_xor[1], correct_DataIn_s0[16]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1902, Midori_add_Result_Start[16]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U7 ( .common_out(common_out), .a ({common_xor[0], wk[15]}), .b ({common_xor[1], correct_DataIn_s0[15]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1904, Midori_add_Result_Start[15]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U6 ( .common_out(common_out), .a ({common_xor[0], wk[14]}), .b ({common_xor[1], correct_DataIn_s0[14]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1906, Midori_add_Result_Start[14]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U5 ( .common_out(common_out), .a ({common_xor[0], wk[13]}), .b ({common_xor[1], correct_DataIn_s0[13]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1908, Midori_add_Result_Start[13]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U4 ( .common_out(common_out), .a ({common_xor[0], wk[12]}), .b ({common_xor[1], correct_DataIn_s0[12]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1910, Midori_add_Result_Start[12]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U3 ( .common_out(common_out), .a ({common_xor[0], wk[11]}), .b ({common_xor[1], correct_DataIn_s0[11]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1912, Midori_add_Result_Start[11]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U2 ( .common_out(common_out), .a ({common_xor[0], wk[10]}), .b ({common_xor[1], correct_DataIn_s0[10]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1914, Midori_add_Result_Start[10]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U1 ( .common_out(common_out), .a ({common_xor[0], wk[0]}), .b ({common_xor[1], correct_DataIn_s0[0]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1916, Midori_add_Result_Start[0]}) ) ; /* xor_COMAR_type_1 */
    or_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_0_U18 ( .common_out(common_out), .a ({new_AGEMA_signal_1922, Midori_rounds_sub_sBox_PRINCE_0_n13}), .b ({new_AGEMA_signal_2064, Midori_rounds_roundReg_out[1]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2065, Midori_rounds_sub_sBox_PRINCE_0_n14}) ) ; /* or_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_0_U15 ( .common_out(common_out), .a ({new_AGEMA_signal_1663, Midori_rounds_sub_sBox_PRINCE_0_n10}), .b ({new_AGEMA_signal_1668, Midori_rounds_sub_sBox_PRINCE_0_n9}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1917, Midori_rounds_sub_sBox_PRINCE_0_n11}) ) ; /* nand_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_0_U11 ( .common_out(common_out), .a ({new_AGEMA_signal_1661, Midori_rounds_roundReg_out[0]}), .b ({new_AGEMA_signal_1919, Midori_rounds_sub_sBox_PRINCE_0_n4}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2067, Midori_rounds_sub_sBox_PRINCE_0_n5}) ) ; /* nand_COMAR_type_3 */
    nor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_0_U6 ( .common_out(common_out), .a ({new_AGEMA_signal_1666, Midori_rounds_sub_sBox_PRINCE_0_n7}), .b ({new_AGEMA_signal_1665, Midori_rounds_sub_sBox_PRINCE_0_n1}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1921, Midori_rounds_sub_sBox_PRINCE_0_n2}) ) ; /* nor_COMAR_type_3 */
    or_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_1_U18 ( .common_out(common_out), .a ({new_AGEMA_signal_1928, Midori_rounds_sub_sBox_PRINCE_1_n13}), .b ({new_AGEMA_signal_2069, Midori_rounds_roundReg_out[5]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2070, Midori_rounds_sub_sBox_PRINCE_1_n14}) ) ; /* or_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_1_U15 ( .common_out(common_out), .a ({new_AGEMA_signal_1671, Midori_rounds_sub_sBox_PRINCE_1_n10}), .b ({new_AGEMA_signal_1676, Midori_rounds_sub_sBox_PRINCE_1_n9}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1923, Midori_rounds_sub_sBox_PRINCE_1_n11}) ) ; /* nand_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_1_U11 ( .common_out(common_out), .a ({new_AGEMA_signal_1669, Midori_rounds_roundReg_out[4]}), .b ({new_AGEMA_signal_1925, Midori_rounds_sub_sBox_PRINCE_1_n4}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2072, Midori_rounds_sub_sBox_PRINCE_1_n5}) ) ; /* nand_COMAR_type_3 */
    nor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_1_U6 ( .common_out(common_out), .a ({new_AGEMA_signal_1674, Midori_rounds_sub_sBox_PRINCE_1_n7}), .b ({new_AGEMA_signal_1673, Midori_rounds_sub_sBox_PRINCE_1_n1}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1927, Midori_rounds_sub_sBox_PRINCE_1_n2}) ) ; /* nor_COMAR_type_3 */
    or_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_2_U18 ( .common_out(common_out), .a ({new_AGEMA_signal_1934, Midori_rounds_sub_sBox_PRINCE_2_n13}), .b ({new_AGEMA_signal_2074, Midori_rounds_roundReg_out[9]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2075, Midori_rounds_sub_sBox_PRINCE_2_n14}) ) ; /* or_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_2_U15 ( .common_out(common_out), .a ({new_AGEMA_signal_1679, Midori_rounds_sub_sBox_PRINCE_2_n10}), .b ({new_AGEMA_signal_1684, Midori_rounds_sub_sBox_PRINCE_2_n9}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1929, Midori_rounds_sub_sBox_PRINCE_2_n11}) ) ; /* nand_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_2_U11 ( .common_out(common_out), .a ({new_AGEMA_signal_1677, Midori_rounds_roundReg_out[8]}), .b ({new_AGEMA_signal_1931, Midori_rounds_sub_sBox_PRINCE_2_n4}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2077, Midori_rounds_sub_sBox_PRINCE_2_n5}) ) ; /* nand_COMAR_type_3 */
    nor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_2_U6 ( .common_out(common_out), .a ({new_AGEMA_signal_1682, Midori_rounds_sub_sBox_PRINCE_2_n7}), .b ({new_AGEMA_signal_1681, Midori_rounds_sub_sBox_PRINCE_2_n1}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1933, Midori_rounds_sub_sBox_PRINCE_2_n2}) ) ; /* nor_COMAR_type_3 */
    or_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_3_U18 ( .common_out(common_out), .a ({new_AGEMA_signal_1940, Midori_rounds_sub_sBox_PRINCE_3_n13}), .b ({new_AGEMA_signal_2079, Midori_rounds_roundReg_out[13]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2080, Midori_rounds_sub_sBox_PRINCE_3_n14}) ) ; /* or_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_3_U15 ( .common_out(common_out), .a ({new_AGEMA_signal_1687, Midori_rounds_sub_sBox_PRINCE_3_n10}), .b ({new_AGEMA_signal_1692, Midori_rounds_sub_sBox_PRINCE_3_n9}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1935, Midori_rounds_sub_sBox_PRINCE_3_n11}) ) ; /* nand_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_3_U11 ( .common_out(common_out), .a ({new_AGEMA_signal_1685, Midori_rounds_roundReg_out[12]}), .b ({new_AGEMA_signal_1937, Midori_rounds_sub_sBox_PRINCE_3_n4}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2082, Midori_rounds_sub_sBox_PRINCE_3_n5}) ) ; /* nand_COMAR_type_3 */
    nor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_3_U6 ( .common_out(common_out), .a ({new_AGEMA_signal_1690, Midori_rounds_sub_sBox_PRINCE_3_n7}), .b ({new_AGEMA_signal_1689, Midori_rounds_sub_sBox_PRINCE_3_n1}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1939, Midori_rounds_sub_sBox_PRINCE_3_n2}) ) ; /* nor_COMAR_type_3 */
    or_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_4_U18 ( .common_out(common_out), .a ({new_AGEMA_signal_1946, Midori_rounds_sub_sBox_PRINCE_4_n13}), .b ({new_AGEMA_signal_2084, Midori_rounds_roundReg_out[17]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2085, Midori_rounds_sub_sBox_PRINCE_4_n14}) ) ; /* or_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_4_U15 ( .common_out(common_out), .a ({new_AGEMA_signal_1695, Midori_rounds_sub_sBox_PRINCE_4_n10}), .b ({new_AGEMA_signal_1700, Midori_rounds_sub_sBox_PRINCE_4_n9}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1941, Midori_rounds_sub_sBox_PRINCE_4_n11}) ) ; /* nand_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_4_U11 ( .common_out(common_out), .a ({new_AGEMA_signal_1693, Midori_rounds_roundReg_out[16]}), .b ({new_AGEMA_signal_1943, Midori_rounds_sub_sBox_PRINCE_4_n4}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2087, Midori_rounds_sub_sBox_PRINCE_4_n5}) ) ; /* nand_COMAR_type_3 */
    nor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_4_U6 ( .common_out(common_out), .a ({new_AGEMA_signal_1698, Midori_rounds_sub_sBox_PRINCE_4_n7}), .b ({new_AGEMA_signal_1697, Midori_rounds_sub_sBox_PRINCE_4_n1}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1945, Midori_rounds_sub_sBox_PRINCE_4_n2}) ) ; /* nor_COMAR_type_3 */
    or_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_5_U18 ( .common_out(common_out), .a ({new_AGEMA_signal_1952, Midori_rounds_sub_sBox_PRINCE_5_n13}), .b ({new_AGEMA_signal_2089, Midori_rounds_roundReg_out[21]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2090, Midori_rounds_sub_sBox_PRINCE_5_n14}) ) ; /* or_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_5_U15 ( .common_out(common_out), .a ({new_AGEMA_signal_1703, Midori_rounds_sub_sBox_PRINCE_5_n10}), .b ({new_AGEMA_signal_1708, Midori_rounds_sub_sBox_PRINCE_5_n9}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1947, Midori_rounds_sub_sBox_PRINCE_5_n11}) ) ; /* nand_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_5_U11 ( .common_out(common_out), .a ({new_AGEMA_signal_1701, Midori_rounds_roundReg_out[20]}), .b ({new_AGEMA_signal_1949, Midori_rounds_sub_sBox_PRINCE_5_n4}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2092, Midori_rounds_sub_sBox_PRINCE_5_n5}) ) ; /* nand_COMAR_type_3 */
    nor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_5_U6 ( .common_out(common_out), .a ({new_AGEMA_signal_1706, Midori_rounds_sub_sBox_PRINCE_5_n7}), .b ({new_AGEMA_signal_1705, Midori_rounds_sub_sBox_PRINCE_5_n1}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1951, Midori_rounds_sub_sBox_PRINCE_5_n2}) ) ; /* nor_COMAR_type_3 */
    or_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_6_U18 ( .common_out(common_out), .a ({new_AGEMA_signal_1958, Midori_rounds_sub_sBox_PRINCE_6_n13}), .b ({new_AGEMA_signal_2094, Midori_rounds_roundReg_out[25]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2095, Midori_rounds_sub_sBox_PRINCE_6_n14}) ) ; /* or_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_6_U15 ( .common_out(common_out), .a ({new_AGEMA_signal_1711, Midori_rounds_sub_sBox_PRINCE_6_n10}), .b ({new_AGEMA_signal_1716, Midori_rounds_sub_sBox_PRINCE_6_n9}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1953, Midori_rounds_sub_sBox_PRINCE_6_n11}) ) ; /* nand_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_6_U11 ( .common_out(common_out), .a ({new_AGEMA_signal_1709, Midori_rounds_roundReg_out[24]}), .b ({new_AGEMA_signal_1955, Midori_rounds_sub_sBox_PRINCE_6_n4}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2097, Midori_rounds_sub_sBox_PRINCE_6_n5}) ) ; /* nand_COMAR_type_3 */
    nor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_6_U6 ( .common_out(common_out), .a ({new_AGEMA_signal_1714, Midori_rounds_sub_sBox_PRINCE_6_n7}), .b ({new_AGEMA_signal_1713, Midori_rounds_sub_sBox_PRINCE_6_n1}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1957, Midori_rounds_sub_sBox_PRINCE_6_n2}) ) ; /* nor_COMAR_type_3 */
    or_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_7_U18 ( .common_out(common_out), .a ({new_AGEMA_signal_1964, Midori_rounds_sub_sBox_PRINCE_7_n13}), .b ({new_AGEMA_signal_2099, Midori_rounds_roundReg_out[29]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2100, Midori_rounds_sub_sBox_PRINCE_7_n14}) ) ; /* or_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_7_U15 ( .common_out(common_out), .a ({new_AGEMA_signal_1719, Midori_rounds_sub_sBox_PRINCE_7_n10}), .b ({new_AGEMA_signal_1724, Midori_rounds_sub_sBox_PRINCE_7_n9}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1959, Midori_rounds_sub_sBox_PRINCE_7_n11}) ) ; /* nand_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_7_U11 ( .common_out(common_out), .a ({new_AGEMA_signal_1717, Midori_rounds_roundReg_out[28]}), .b ({new_AGEMA_signal_1961, Midori_rounds_sub_sBox_PRINCE_7_n4}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2102, Midori_rounds_sub_sBox_PRINCE_7_n5}) ) ; /* nand_COMAR_type_3 */
    nor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_7_U6 ( .common_out(common_out), .a ({new_AGEMA_signal_1722, Midori_rounds_sub_sBox_PRINCE_7_n7}), .b ({new_AGEMA_signal_1721, Midori_rounds_sub_sBox_PRINCE_7_n1}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1963, Midori_rounds_sub_sBox_PRINCE_7_n2}) ) ; /* nor_COMAR_type_3 */
    or_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_8_U18 ( .common_out(common_out), .a ({new_AGEMA_signal_1970, Midori_rounds_sub_sBox_PRINCE_8_n13}), .b ({new_AGEMA_signal_2104, Midori_rounds_roundReg_out[33]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2105, Midori_rounds_sub_sBox_PRINCE_8_n14}) ) ; /* or_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_8_U15 ( .common_out(common_out), .a ({new_AGEMA_signal_1727, Midori_rounds_sub_sBox_PRINCE_8_n10}), .b ({new_AGEMA_signal_1732, Midori_rounds_sub_sBox_PRINCE_8_n9}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1965, Midori_rounds_sub_sBox_PRINCE_8_n11}) ) ; /* nand_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_8_U11 ( .common_out(common_out), .a ({new_AGEMA_signal_1725, Midori_rounds_roundReg_out[32]}), .b ({new_AGEMA_signal_1967, Midori_rounds_sub_sBox_PRINCE_8_n4}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2107, Midori_rounds_sub_sBox_PRINCE_8_n5}) ) ; /* nand_COMAR_type_3 */
    nor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_8_U6 ( .common_out(common_out), .a ({new_AGEMA_signal_1730, Midori_rounds_sub_sBox_PRINCE_8_n7}), .b ({new_AGEMA_signal_1729, Midori_rounds_sub_sBox_PRINCE_8_n1}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1969, Midori_rounds_sub_sBox_PRINCE_8_n2}) ) ; /* nor_COMAR_type_3 */
    or_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_9_U18 ( .common_out(common_out), .a ({new_AGEMA_signal_1976, Midori_rounds_sub_sBox_PRINCE_9_n13}), .b ({new_AGEMA_signal_2109, Midori_rounds_roundReg_out[37]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2110, Midori_rounds_sub_sBox_PRINCE_9_n14}) ) ; /* or_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_9_U15 ( .common_out(common_out), .a ({new_AGEMA_signal_1735, Midori_rounds_sub_sBox_PRINCE_9_n10}), .b ({new_AGEMA_signal_1740, Midori_rounds_sub_sBox_PRINCE_9_n9}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1971, Midori_rounds_sub_sBox_PRINCE_9_n11}) ) ; /* nand_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_9_U11 ( .common_out(common_out), .a ({new_AGEMA_signal_1733, Midori_rounds_roundReg_out[36]}), .b ({new_AGEMA_signal_1973, Midori_rounds_sub_sBox_PRINCE_9_n4}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2112, Midori_rounds_sub_sBox_PRINCE_9_n5}) ) ; /* nand_COMAR_type_3 */
    nor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_9_U6 ( .common_out(common_out), .a ({new_AGEMA_signal_1738, Midori_rounds_sub_sBox_PRINCE_9_n7}), .b ({new_AGEMA_signal_1737, Midori_rounds_sub_sBox_PRINCE_9_n1}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1975, Midori_rounds_sub_sBox_PRINCE_9_n2}) ) ; /* nor_COMAR_type_3 */
    or_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_10_U18 ( .common_out(common_out), .a ({new_AGEMA_signal_1982, Midori_rounds_sub_sBox_PRINCE_10_n13}), .b ({new_AGEMA_signal_2114, Midori_rounds_roundReg_out[41]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2115, Midori_rounds_sub_sBox_PRINCE_10_n14}) ) ; /* or_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_10_U15 ( .common_out(common_out), .a ({new_AGEMA_signal_1743, Midori_rounds_sub_sBox_PRINCE_10_n10}), .b ({new_AGEMA_signal_1748, Midori_rounds_sub_sBox_PRINCE_10_n9}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1977, Midori_rounds_sub_sBox_PRINCE_10_n11}) ) ; /* nand_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_10_U11 ( .common_out(common_out), .a ({new_AGEMA_signal_1741, Midori_rounds_roundReg_out[40]}), .b ({new_AGEMA_signal_1979, Midori_rounds_sub_sBox_PRINCE_10_n4}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2117, Midori_rounds_sub_sBox_PRINCE_10_n5}) ) ; /* nand_COMAR_type_3 */
    nor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_10_U6 ( .common_out(common_out), .a ({new_AGEMA_signal_1746, Midori_rounds_sub_sBox_PRINCE_10_n7}), .b ({new_AGEMA_signal_1745, Midori_rounds_sub_sBox_PRINCE_10_n1}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1981, Midori_rounds_sub_sBox_PRINCE_10_n2}) ) ; /* nor_COMAR_type_3 */
    or_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_11_U18 ( .common_out(common_out), .a ({new_AGEMA_signal_1988, Midori_rounds_sub_sBox_PRINCE_11_n13}), .b ({new_AGEMA_signal_2119, Midori_rounds_roundReg_out[45]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2120, Midori_rounds_sub_sBox_PRINCE_11_n14}) ) ; /* or_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_11_U15 ( .common_out(common_out), .a ({new_AGEMA_signal_1751, Midori_rounds_sub_sBox_PRINCE_11_n10}), .b ({new_AGEMA_signal_1756, Midori_rounds_sub_sBox_PRINCE_11_n9}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1983, Midori_rounds_sub_sBox_PRINCE_11_n11}) ) ; /* nand_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_11_U11 ( .common_out(common_out), .a ({new_AGEMA_signal_1749, Midori_rounds_roundReg_out[44]}), .b ({new_AGEMA_signal_1985, Midori_rounds_sub_sBox_PRINCE_11_n4}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2122, Midori_rounds_sub_sBox_PRINCE_11_n5}) ) ; /* nand_COMAR_type_3 */
    nor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_11_U6 ( .common_out(common_out), .a ({new_AGEMA_signal_1754, Midori_rounds_sub_sBox_PRINCE_11_n7}), .b ({new_AGEMA_signal_1753, Midori_rounds_sub_sBox_PRINCE_11_n1}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1987, Midori_rounds_sub_sBox_PRINCE_11_n2}) ) ; /* nor_COMAR_type_3 */
    or_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_12_U18 ( .common_out(common_out), .a ({new_AGEMA_signal_1994, Midori_rounds_sub_sBox_PRINCE_12_n13}), .b ({new_AGEMA_signal_2124, Midori_rounds_roundReg_out[49]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2125, Midori_rounds_sub_sBox_PRINCE_12_n14}) ) ; /* or_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_12_U15 ( .common_out(common_out), .a ({new_AGEMA_signal_1759, Midori_rounds_sub_sBox_PRINCE_12_n10}), .b ({new_AGEMA_signal_1764, Midori_rounds_sub_sBox_PRINCE_12_n9}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1989, Midori_rounds_sub_sBox_PRINCE_12_n11}) ) ; /* nand_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_12_U11 ( .common_out(common_out), .a ({new_AGEMA_signal_1757, Midori_rounds_roundReg_out[48]}), .b ({new_AGEMA_signal_1991, Midori_rounds_sub_sBox_PRINCE_12_n4}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2127, Midori_rounds_sub_sBox_PRINCE_12_n5}) ) ; /* nand_COMAR_type_3 */
    nor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_12_U6 ( .common_out(common_out), .a ({new_AGEMA_signal_1762, Midori_rounds_sub_sBox_PRINCE_12_n7}), .b ({new_AGEMA_signal_1761, Midori_rounds_sub_sBox_PRINCE_12_n1}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1993, Midori_rounds_sub_sBox_PRINCE_12_n2}) ) ; /* nor_COMAR_type_3 */
    or_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_13_U18 ( .common_out(common_out), .a ({new_AGEMA_signal_2000, Midori_rounds_sub_sBox_PRINCE_13_n13}), .b ({new_AGEMA_signal_2129, Midori_rounds_roundReg_out[53]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2130, Midori_rounds_sub_sBox_PRINCE_13_n14}) ) ; /* or_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_13_U15 ( .common_out(common_out), .a ({new_AGEMA_signal_1767, Midori_rounds_sub_sBox_PRINCE_13_n10}), .b ({new_AGEMA_signal_1772, Midori_rounds_sub_sBox_PRINCE_13_n9}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1995, Midori_rounds_sub_sBox_PRINCE_13_n11}) ) ; /* nand_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_13_U11 ( .common_out(common_out), .a ({new_AGEMA_signal_1765, Midori_rounds_roundReg_out[52]}), .b ({new_AGEMA_signal_1997, Midori_rounds_sub_sBox_PRINCE_13_n4}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2132, Midori_rounds_sub_sBox_PRINCE_13_n5}) ) ; /* nand_COMAR_type_3 */
    nor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_13_U6 ( .common_out(common_out), .a ({new_AGEMA_signal_1770, Midori_rounds_sub_sBox_PRINCE_13_n7}), .b ({new_AGEMA_signal_1769, Midori_rounds_sub_sBox_PRINCE_13_n1}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1999, Midori_rounds_sub_sBox_PRINCE_13_n2}) ) ; /* nor_COMAR_type_3 */
    or_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_14_U18 ( .common_out(common_out), .a ({new_AGEMA_signal_2006, Midori_rounds_sub_sBox_PRINCE_14_n13}), .b ({new_AGEMA_signal_2134, Midori_rounds_roundReg_out[57]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2135, Midori_rounds_sub_sBox_PRINCE_14_n14}) ) ; /* or_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_14_U15 ( .common_out(common_out), .a ({new_AGEMA_signal_1775, Midori_rounds_sub_sBox_PRINCE_14_n10}), .b ({new_AGEMA_signal_1780, Midori_rounds_sub_sBox_PRINCE_14_n9}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2001, Midori_rounds_sub_sBox_PRINCE_14_n11}) ) ; /* nand_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_14_U11 ( .common_out(common_out), .a ({new_AGEMA_signal_1773, Midori_rounds_roundReg_out[56]}), .b ({new_AGEMA_signal_2003, Midori_rounds_sub_sBox_PRINCE_14_n4}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2137, Midori_rounds_sub_sBox_PRINCE_14_n5}) ) ; /* nand_COMAR_type_3 */
    nor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_14_U6 ( .common_out(common_out), .a ({new_AGEMA_signal_1778, Midori_rounds_sub_sBox_PRINCE_14_n7}), .b ({new_AGEMA_signal_1777, Midori_rounds_sub_sBox_PRINCE_14_n1}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2005, Midori_rounds_sub_sBox_PRINCE_14_n2}) ) ; /* nor_COMAR_type_3 */
    or_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_15_U18 ( .common_out(common_out), .a ({new_AGEMA_signal_2012, Midori_rounds_sub_sBox_PRINCE_15_n13}), .b ({new_AGEMA_signal_2139, Midori_rounds_roundReg_out[61]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2140, Midori_rounds_sub_sBox_PRINCE_15_n14}) ) ; /* or_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_15_U15 ( .common_out(common_out), .a ({new_AGEMA_signal_1783, Midori_rounds_sub_sBox_PRINCE_15_n10}), .b ({new_AGEMA_signal_1788, Midori_rounds_sub_sBox_PRINCE_15_n9}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2007, Midori_rounds_sub_sBox_PRINCE_15_n11}) ) ; /* nand_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_15_U11 ( .common_out(common_out), .a ({new_AGEMA_signal_1781, Midori_rounds_roundReg_out[60]}), .b ({new_AGEMA_signal_2009, Midori_rounds_sub_sBox_PRINCE_15_n4}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2142, Midori_rounds_sub_sBox_PRINCE_15_n5}) ) ; /* nand_COMAR_type_3 */
    nor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_15_U6 ( .common_out(common_out), .a ({new_AGEMA_signal_1786, Midori_rounds_sub_sBox_PRINCE_15_n7}), .b ({new_AGEMA_signal_1785, Midori_rounds_sub_sBox_PRINCE_15_n1}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2011, Midori_rounds_sub_sBox_PRINCE_15_n2}) ) ; /* nor_COMAR_type_3 */

    /* cells in depth 5 */

    /* cells in depth 6 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_0_U19 ( .common_out(common_out), .a ({common_and[0], Midori_rounds_sub_sBox_PRINCE_0_n15}), .b ({common_and[1], Midori_rounds_sub_sBox_PRINCE_0_n14}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2144, Midori_rounds_SR_Result[51]}) ) ; /* nand_COMAR_type_1 */
    nand_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_0_U16 ( .common_out(common_out), .a ({new_AGEMA_signal_1917, Midori_rounds_sub_sBox_PRINCE_0_n11}), .b ({new_AGEMA_signal_2064, Midori_rounds_roundReg_out[1]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2066, Midori_rounds_sub_sBox_PRINCE_0_n12}) ) ; /* nand_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_0_U12 ( .common_out(common_out), .a ({common_and[0], Midori_rounds_sub_sBox_PRINCE_0_n6}), .b ({common_and[1], Midori_rounds_sub_sBox_PRINCE_0_n5}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2146, Midori_rounds_SR_Result[49]}) ) ; /* nand_COMAR_type_1 */
    nor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_0_U7 ( .common_out(common_out), .a ({new_AGEMA_signal_2064, Midori_rounds_roundReg_out[1]}), .b ({new_AGEMA_signal_1921, Midori_rounds_sub_sBox_PRINCE_0_n2}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2068, Midori_rounds_sub_sBox_PRINCE_0_n3}) ) ; /* nor_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_1_U19 ( .common_out(common_out), .a ({common_and[0], Midori_rounds_sub_sBox_PRINCE_1_n15}), .b ({common_and[1], Midori_rounds_sub_sBox_PRINCE_1_n14}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2148, Midori_rounds_SR_Result[47]}) ) ; /* nand_COMAR_type_1 */
    nand_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_1_U16 ( .common_out(common_out), .a ({new_AGEMA_signal_1923, Midori_rounds_sub_sBox_PRINCE_1_n11}), .b ({new_AGEMA_signal_2069, Midori_rounds_roundReg_out[5]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2071, Midori_rounds_sub_sBox_PRINCE_1_n12}) ) ; /* nand_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_1_U12 ( .common_out(common_out), .a ({common_and[0], Midori_rounds_sub_sBox_PRINCE_1_n6}), .b ({common_and[1], Midori_rounds_sub_sBox_PRINCE_1_n5}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2150, Midori_rounds_SR_Result[45]}) ) ; /* nand_COMAR_type_1 */
    nor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_1_U7 ( .common_out(common_out), .a ({new_AGEMA_signal_2069, Midori_rounds_roundReg_out[5]}), .b ({new_AGEMA_signal_1927, Midori_rounds_sub_sBox_PRINCE_1_n2}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2073, Midori_rounds_sub_sBox_PRINCE_1_n3}) ) ; /* nor_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_2_U19 ( .common_out(common_out), .a ({common_and[0], Midori_rounds_sub_sBox_PRINCE_2_n15}), .b ({common_and[1], Midori_rounds_sub_sBox_PRINCE_2_n14}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2152, Midori_rounds_SR_Result[11]}) ) ; /* nand_COMAR_type_1 */
    nand_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_2_U16 ( .common_out(common_out), .a ({new_AGEMA_signal_1929, Midori_rounds_sub_sBox_PRINCE_2_n11}), .b ({new_AGEMA_signal_2074, Midori_rounds_roundReg_out[9]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2076, Midori_rounds_sub_sBox_PRINCE_2_n12}) ) ; /* nand_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_2_U12 ( .common_out(common_out), .a ({common_and[0], Midori_rounds_sub_sBox_PRINCE_2_n6}), .b ({common_and[1], Midori_rounds_sub_sBox_PRINCE_2_n5}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2154, Midori_rounds_SR_Result[9]}) ) ; /* nand_COMAR_type_1 */
    nor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_2_U7 ( .common_out(common_out), .a ({new_AGEMA_signal_2074, Midori_rounds_roundReg_out[9]}), .b ({new_AGEMA_signal_1933, Midori_rounds_sub_sBox_PRINCE_2_n2}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2078, Midori_rounds_sub_sBox_PRINCE_2_n3}) ) ; /* nor_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_3_U19 ( .common_out(common_out), .a ({common_and[0], Midori_rounds_sub_sBox_PRINCE_3_n15}), .b ({common_and[1], Midori_rounds_sub_sBox_PRINCE_3_n14}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2156, Midori_rounds_SR_Result[23]}) ) ; /* nand_COMAR_type_1 */
    nand_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_3_U16 ( .common_out(common_out), .a ({new_AGEMA_signal_1935, Midori_rounds_sub_sBox_PRINCE_3_n11}), .b ({new_AGEMA_signal_2079, Midori_rounds_roundReg_out[13]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2081, Midori_rounds_sub_sBox_PRINCE_3_n12}) ) ; /* nand_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_3_U12 ( .common_out(common_out), .a ({common_and[0], Midori_rounds_sub_sBox_PRINCE_3_n6}), .b ({common_and[1], Midori_rounds_sub_sBox_PRINCE_3_n5}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2158, Midori_rounds_SR_Result[21]}) ) ; /* nand_COMAR_type_1 */
    nor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_3_U7 ( .common_out(common_out), .a ({new_AGEMA_signal_2079, Midori_rounds_roundReg_out[13]}), .b ({new_AGEMA_signal_1939, Midori_rounds_sub_sBox_PRINCE_3_n2}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2083, Midori_rounds_sub_sBox_PRINCE_3_n3}) ) ; /* nor_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_4_U19 ( .common_out(common_out), .a ({common_and[0], Midori_rounds_sub_sBox_PRINCE_4_n15}), .b ({common_and[1], Midori_rounds_sub_sBox_PRINCE_4_n14}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2160, Midori_rounds_SR_Result[39]}) ) ; /* nand_COMAR_type_1 */
    nand_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_4_U16 ( .common_out(common_out), .a ({new_AGEMA_signal_1941, Midori_rounds_sub_sBox_PRINCE_4_n11}), .b ({new_AGEMA_signal_2084, Midori_rounds_roundReg_out[17]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2086, Midori_rounds_sub_sBox_PRINCE_4_n12}) ) ; /* nand_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_4_U12 ( .common_out(common_out), .a ({common_and[0], Midori_rounds_sub_sBox_PRINCE_4_n6}), .b ({common_and[1], Midori_rounds_sub_sBox_PRINCE_4_n5}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2162, Midori_rounds_SR_Result[37]}) ) ; /* nand_COMAR_type_1 */
    nor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_4_U7 ( .common_out(common_out), .a ({new_AGEMA_signal_2084, Midori_rounds_roundReg_out[17]}), .b ({new_AGEMA_signal_1945, Midori_rounds_sub_sBox_PRINCE_4_n2}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2088, Midori_rounds_sub_sBox_PRINCE_4_n3}) ) ; /* nor_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_5_U19 ( .common_out(common_out), .a ({common_and[0], Midori_rounds_sub_sBox_PRINCE_5_n15}), .b ({common_and[1], Midori_rounds_sub_sBox_PRINCE_5_n14}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2164, Midori_rounds_SR_Result[59]}) ) ; /* nand_COMAR_type_1 */
    nand_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_5_U16 ( .common_out(common_out), .a ({new_AGEMA_signal_1947, Midori_rounds_sub_sBox_PRINCE_5_n11}), .b ({new_AGEMA_signal_2089, Midori_rounds_roundReg_out[21]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2091, Midori_rounds_sub_sBox_PRINCE_5_n12}) ) ; /* nand_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_5_U12 ( .common_out(common_out), .a ({common_and[0], Midori_rounds_sub_sBox_PRINCE_5_n6}), .b ({common_and[1], Midori_rounds_sub_sBox_PRINCE_5_n5}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2166, Midori_rounds_SR_Result[57]}) ) ; /* nand_COMAR_type_1 */
    nor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_5_U7 ( .common_out(common_out), .a ({new_AGEMA_signal_2089, Midori_rounds_roundReg_out[21]}), .b ({new_AGEMA_signal_1951, Midori_rounds_sub_sBox_PRINCE_5_n2}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2093, Midori_rounds_sub_sBox_PRINCE_5_n3}) ) ; /* nor_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_6_U19 ( .common_out(common_out), .a ({common_and[0], Midori_rounds_sub_sBox_PRINCE_6_n15}), .b ({common_and[1], Midori_rounds_sub_sBox_PRINCE_6_n14}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2168, Midori_rounds_SR_Result[31]}) ) ; /* nand_COMAR_type_1 */
    nand_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_6_U16 ( .common_out(common_out), .a ({new_AGEMA_signal_1953, Midori_rounds_sub_sBox_PRINCE_6_n11}), .b ({new_AGEMA_signal_2094, Midori_rounds_roundReg_out[25]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2096, Midori_rounds_sub_sBox_PRINCE_6_n12}) ) ; /* nand_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_6_U12 ( .common_out(common_out), .a ({common_and[0], Midori_rounds_sub_sBox_PRINCE_6_n6}), .b ({common_and[1], Midori_rounds_sub_sBox_PRINCE_6_n5}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2170, Midori_rounds_SR_Result[29]}) ) ; /* nand_COMAR_type_1 */
    nor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_6_U7 ( .common_out(common_out), .a ({new_AGEMA_signal_2094, Midori_rounds_roundReg_out[25]}), .b ({new_AGEMA_signal_1957, Midori_rounds_sub_sBox_PRINCE_6_n2}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2098, Midori_rounds_sub_sBox_PRINCE_6_n3}) ) ; /* nor_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_7_U19 ( .common_out(common_out), .a ({common_and[0], Midori_rounds_sub_sBox_PRINCE_7_n15}), .b ({common_and[1], Midori_rounds_sub_sBox_PRINCE_7_n14}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2172, Midori_rounds_SR_Result[3]}) ) ; /* nand_COMAR_type_1 */
    nand_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_7_U16 ( .common_out(common_out), .a ({new_AGEMA_signal_1959, Midori_rounds_sub_sBox_PRINCE_7_n11}), .b ({new_AGEMA_signal_2099, Midori_rounds_roundReg_out[29]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2101, Midori_rounds_sub_sBox_PRINCE_7_n12}) ) ; /* nand_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_7_U12 ( .common_out(common_out), .a ({common_and[0], Midori_rounds_sub_sBox_PRINCE_7_n6}), .b ({common_and[1], Midori_rounds_sub_sBox_PRINCE_7_n5}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2174, Midori_rounds_SR_Result[1]}) ) ; /* nand_COMAR_type_1 */
    nor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_7_U7 ( .common_out(common_out), .a ({new_AGEMA_signal_2099, Midori_rounds_roundReg_out[29]}), .b ({new_AGEMA_signal_1963, Midori_rounds_sub_sBox_PRINCE_7_n2}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2103, Midori_rounds_sub_sBox_PRINCE_7_n3}) ) ; /* nor_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_8_U19 ( .common_out(common_out), .a ({common_and[0], Midori_rounds_sub_sBox_PRINCE_8_n15}), .b ({common_and[1], Midori_rounds_sub_sBox_PRINCE_8_n14}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2176, Midori_rounds_SR_Result[15]}) ) ; /* nand_COMAR_type_1 */
    nand_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_8_U16 ( .common_out(common_out), .a ({new_AGEMA_signal_1965, Midori_rounds_sub_sBox_PRINCE_8_n11}), .b ({new_AGEMA_signal_2104, Midori_rounds_roundReg_out[33]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2106, Midori_rounds_sub_sBox_PRINCE_8_n12}) ) ; /* nand_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_8_U12 ( .common_out(common_out), .a ({common_and[0], Midori_rounds_sub_sBox_PRINCE_8_n6}), .b ({common_and[1], Midori_rounds_sub_sBox_PRINCE_8_n5}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2178, Midori_rounds_SR_Result[13]}) ) ; /* nand_COMAR_type_1 */
    nor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_8_U7 ( .common_out(common_out), .a ({new_AGEMA_signal_2104, Midori_rounds_roundReg_out[33]}), .b ({new_AGEMA_signal_1969, Midori_rounds_sub_sBox_PRINCE_8_n2}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2108, Midori_rounds_sub_sBox_PRINCE_8_n3}) ) ; /* nor_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_9_U19 ( .common_out(common_out), .a ({common_and[0], Midori_rounds_sub_sBox_PRINCE_9_n15}), .b ({common_and[1], Midori_rounds_sub_sBox_PRINCE_9_n14}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2180, Midori_rounds_SR_Result[19]}) ) ; /* nand_COMAR_type_1 */
    nand_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_9_U16 ( .common_out(common_out), .a ({new_AGEMA_signal_1971, Midori_rounds_sub_sBox_PRINCE_9_n11}), .b ({new_AGEMA_signal_2109, Midori_rounds_roundReg_out[37]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2111, Midori_rounds_sub_sBox_PRINCE_9_n12}) ) ; /* nand_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_9_U12 ( .common_out(common_out), .a ({common_and[0], Midori_rounds_sub_sBox_PRINCE_9_n6}), .b ({common_and[1], Midori_rounds_sub_sBox_PRINCE_9_n5}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2182, Midori_rounds_SR_Result[17]}) ) ; /* nand_COMAR_type_1 */
    nor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_9_U7 ( .common_out(common_out), .a ({new_AGEMA_signal_2109, Midori_rounds_roundReg_out[37]}), .b ({new_AGEMA_signal_1975, Midori_rounds_sub_sBox_PRINCE_9_n2}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2113, Midori_rounds_sub_sBox_PRINCE_9_n3}) ) ; /* nor_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_10_U19 ( .common_out(common_out), .a ({common_and[0], Midori_rounds_sub_sBox_PRINCE_10_n15}), .b ({common_and[1], Midori_rounds_sub_sBox_PRINCE_10_n14}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2184, Midori_rounds_SR_Result[55]}) ) ; /* nand_COMAR_type_1 */
    nand_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_10_U16 ( .common_out(common_out), .a ({new_AGEMA_signal_1977, Midori_rounds_sub_sBox_PRINCE_10_n11}), .b ({new_AGEMA_signal_2114, Midori_rounds_roundReg_out[41]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2116, Midori_rounds_sub_sBox_PRINCE_10_n12}) ) ; /* nand_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_10_U12 ( .common_out(common_out), .a ({common_and[0], Midori_rounds_sub_sBox_PRINCE_10_n6}), .b ({common_and[1], Midori_rounds_sub_sBox_PRINCE_10_n5}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2186, Midori_rounds_SR_Result[53]}) ) ; /* nand_COMAR_type_1 */
    nor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_10_U7 ( .common_out(common_out), .a ({new_AGEMA_signal_2114, Midori_rounds_roundReg_out[41]}), .b ({new_AGEMA_signal_1981, Midori_rounds_sub_sBox_PRINCE_10_n2}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2118, Midori_rounds_sub_sBox_PRINCE_10_n3}) ) ; /* nor_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_11_U19 ( .common_out(common_out), .a ({common_and[0], Midori_rounds_sub_sBox_PRINCE_11_n15}), .b ({common_and[1], Midori_rounds_sub_sBox_PRINCE_11_n14}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2188, Midori_rounds_SR_Result[43]}) ) ; /* nand_COMAR_type_1 */
    nand_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_11_U16 ( .common_out(common_out), .a ({new_AGEMA_signal_1983, Midori_rounds_sub_sBox_PRINCE_11_n11}), .b ({new_AGEMA_signal_2119, Midori_rounds_roundReg_out[45]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2121, Midori_rounds_sub_sBox_PRINCE_11_n12}) ) ; /* nand_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_11_U12 ( .common_out(common_out), .a ({common_and[0], Midori_rounds_sub_sBox_PRINCE_11_n6}), .b ({common_and[1], Midori_rounds_sub_sBox_PRINCE_11_n5}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2190, Midori_rounds_SR_Result[41]}) ) ; /* nand_COMAR_type_1 */
    nor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_11_U7 ( .common_out(common_out), .a ({new_AGEMA_signal_2119, Midori_rounds_roundReg_out[45]}), .b ({new_AGEMA_signal_1987, Midori_rounds_sub_sBox_PRINCE_11_n2}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2123, Midori_rounds_sub_sBox_PRINCE_11_n3}) ) ; /* nor_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_12_U19 ( .common_out(common_out), .a ({common_and[0], Midori_rounds_sub_sBox_PRINCE_12_n15}), .b ({common_and[1], Midori_rounds_sub_sBox_PRINCE_12_n14}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2192, Midori_rounds_SR_Result[27]}) ) ; /* nand_COMAR_type_1 */
    nand_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_12_U16 ( .common_out(common_out), .a ({new_AGEMA_signal_1989, Midori_rounds_sub_sBox_PRINCE_12_n11}), .b ({new_AGEMA_signal_2124, Midori_rounds_roundReg_out[49]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2126, Midori_rounds_sub_sBox_PRINCE_12_n12}) ) ; /* nand_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_12_U12 ( .common_out(common_out), .a ({common_and[0], Midori_rounds_sub_sBox_PRINCE_12_n6}), .b ({common_and[1], Midori_rounds_sub_sBox_PRINCE_12_n5}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2194, Midori_rounds_SR_Result[25]}) ) ; /* nand_COMAR_type_1 */
    nor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_12_U7 ( .common_out(common_out), .a ({new_AGEMA_signal_2124, Midori_rounds_roundReg_out[49]}), .b ({new_AGEMA_signal_1993, Midori_rounds_sub_sBox_PRINCE_12_n2}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2128, Midori_rounds_sub_sBox_PRINCE_12_n3}) ) ; /* nor_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_13_U19 ( .common_out(common_out), .a ({common_and[0], Midori_rounds_sub_sBox_PRINCE_13_n15}), .b ({common_and[1], Midori_rounds_sub_sBox_PRINCE_13_n14}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2196, Midori_rounds_SR_Result[7]}) ) ; /* nand_COMAR_type_1 */
    nand_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_13_U16 ( .common_out(common_out), .a ({new_AGEMA_signal_1995, Midori_rounds_sub_sBox_PRINCE_13_n11}), .b ({new_AGEMA_signal_2129, Midori_rounds_roundReg_out[53]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2131, Midori_rounds_sub_sBox_PRINCE_13_n12}) ) ; /* nand_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_13_U12 ( .common_out(common_out), .a ({common_and[0], Midori_rounds_sub_sBox_PRINCE_13_n6}), .b ({common_and[1], Midori_rounds_sub_sBox_PRINCE_13_n5}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2198, Midori_rounds_SR_Result[5]}) ) ; /* nand_COMAR_type_1 */
    nor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_13_U7 ( .common_out(common_out), .a ({new_AGEMA_signal_2129, Midori_rounds_roundReg_out[53]}), .b ({new_AGEMA_signal_1999, Midori_rounds_sub_sBox_PRINCE_13_n2}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2133, Midori_rounds_sub_sBox_PRINCE_13_n3}) ) ; /* nor_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_14_U19 ( .common_out(common_out), .a ({common_and[0], Midori_rounds_sub_sBox_PRINCE_14_n15}), .b ({common_and[1], Midori_rounds_sub_sBox_PRINCE_14_n14}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2200, Midori_rounds_SR_Result[35]}) ) ; /* nand_COMAR_type_1 */
    nand_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_14_U16 ( .common_out(common_out), .a ({new_AGEMA_signal_2001, Midori_rounds_sub_sBox_PRINCE_14_n11}), .b ({new_AGEMA_signal_2134, Midori_rounds_roundReg_out[57]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2136, Midori_rounds_sub_sBox_PRINCE_14_n12}) ) ; /* nand_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_14_U12 ( .common_out(common_out), .a ({common_and[0], Midori_rounds_sub_sBox_PRINCE_14_n6}), .b ({common_and[1], Midori_rounds_sub_sBox_PRINCE_14_n5}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2202, Midori_rounds_SR_Result[33]}) ) ; /* nand_COMAR_type_1 */
    nor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_14_U7 ( .common_out(common_out), .a ({new_AGEMA_signal_2134, Midori_rounds_roundReg_out[57]}), .b ({new_AGEMA_signal_2005, Midori_rounds_sub_sBox_PRINCE_14_n2}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2138, Midori_rounds_sub_sBox_PRINCE_14_n3}) ) ; /* nor_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_15_U19 ( .common_out(common_out), .a ({common_and[0], Midori_rounds_sub_sBox_PRINCE_15_n15}), .b ({common_and[1], Midori_rounds_sub_sBox_PRINCE_15_n14}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2204, Midori_rounds_SR_Result[63]}) ) ; /* nand_COMAR_type_1 */
    nand_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_15_U16 ( .common_out(common_out), .a ({new_AGEMA_signal_2007, Midori_rounds_sub_sBox_PRINCE_15_n11}), .b ({new_AGEMA_signal_2139, Midori_rounds_roundReg_out[61]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2141, Midori_rounds_sub_sBox_PRINCE_15_n12}) ) ; /* nand_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_15_U12 ( .common_out(common_out), .a ({common_and[0], Midori_rounds_sub_sBox_PRINCE_15_n6}), .b ({common_and[1], Midori_rounds_sub_sBox_PRINCE_15_n5}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2206, Midori_rounds_SR_Result[61]}) ) ; /* nand_COMAR_type_1 */
    nor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_sub_sBox_PRINCE_15_U7 ( .common_out(common_out), .a ({new_AGEMA_signal_2139, Midori_rounds_roundReg_out[61]}), .b ({new_AGEMA_signal_2011, Midori_rounds_sub_sBox_PRINCE_15_n2}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2143, Midori_rounds_sub_sBox_PRINCE_15_n3}) ) ; /* nor_COMAR_type_3 */

    /* cells in depth 7 */

    /* cells in depth 8 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U128 ( .common_out(common_out), .a ({common_xor[0], wk[9]}), .b ({common_xor[1], Midori_rounds_SR_Result[9]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({DataOut_s1[9], DataOut_s0[9]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U126 ( .common_out(common_out), .a ({common_xor[0], wk[7]}), .b ({common_xor[1], Midori_rounds_SR_Result[47]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({DataOut_s1[7], DataOut_s0[7]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U124 ( .common_out(common_out), .a ({common_xor[0], wk[63]}), .b ({common_xor[1], Midori_rounds_SR_Result[63]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({DataOut_s1[63], DataOut_s0[63]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U122 ( .common_out(common_out), .a ({common_xor[0], wk[61]}), .b ({common_xor[1], Midori_rounds_SR_Result[61]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({DataOut_s1[61], DataOut_s0[61]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U120 ( .common_out(common_out), .a ({common_xor[0], wk[5]}), .b ({common_xor[1], Midori_rounds_SR_Result[45]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({DataOut_s1[5], DataOut_s0[5]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U119 ( .common_out(common_out), .a ({common_xor[0], wk[59]}), .b ({common_xor[1], Midori_rounds_SR_Result[35]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({DataOut_s1[59], DataOut_s0[59]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U117 ( .common_out(common_out), .a ({common_xor[0], wk[57]}), .b ({common_xor[1], Midori_rounds_SR_Result[33]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({DataOut_s1[57], DataOut_s0[57]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U115 ( .common_out(common_out), .a ({common_xor[0], wk[55]}), .b ({common_xor[1], Midori_rounds_SR_Result[7]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({DataOut_s1[55], DataOut_s0[55]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U113 ( .common_out(common_out), .a ({common_xor[0], wk[53]}), .b ({common_xor[1], Midori_rounds_SR_Result[5]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({DataOut_s1[53], DataOut_s0[53]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U111 ( .common_out(common_out), .a ({common_xor[0], wk[51]}), .b ({common_xor[1], Midori_rounds_SR_Result[27]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({DataOut_s1[51], DataOut_s0[51]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U108 ( .common_out(common_out), .a ({common_xor[0], wk[49]}), .b ({common_xor[1], Midori_rounds_SR_Result[25]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({DataOut_s1[49], DataOut_s0[49]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U106 ( .common_out(common_out), .a ({common_xor[0], wk[47]}), .b ({common_xor[1], Midori_rounds_SR_Result[43]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({DataOut_s1[47], DataOut_s0[47]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U104 ( .common_out(common_out), .a ({common_xor[0], wk[45]}), .b ({common_xor[1], Midori_rounds_SR_Result[41]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({DataOut_s1[45], DataOut_s0[45]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U102 ( .common_out(common_out), .a ({common_xor[0], wk[43]}), .b ({common_xor[1], Midori_rounds_SR_Result[55]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({DataOut_s1[43], DataOut_s0[43]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U100 ( .common_out(common_out), .a ({common_xor[0], wk[41]}), .b ({common_xor[1], Midori_rounds_SR_Result[53]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({DataOut_s1[41], DataOut_s0[41]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U98 ( .common_out(common_out), .a ({common_xor[0], wk[3]}), .b ({common_xor[1], Midori_rounds_SR_Result[51]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({DataOut_s1[3], DataOut_s0[3]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U97 ( .common_out(common_out), .a ({common_xor[0], wk[39]}), .b ({common_xor[1], Midori_rounds_SR_Result[19]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({DataOut_s1[39], DataOut_s0[39]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U95 ( .common_out(common_out), .a ({common_xor[0], wk[37]}), .b ({common_xor[1], Midori_rounds_SR_Result[17]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({DataOut_s1[37], DataOut_s0[37]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U93 ( .common_out(common_out), .a ({common_xor[0], wk[35]}), .b ({common_xor[1], Midori_rounds_SR_Result[15]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({DataOut_s1[35], DataOut_s0[35]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U91 ( .common_out(common_out), .a ({common_xor[0], wk[33]}), .b ({common_xor[1], Midori_rounds_SR_Result[13]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({DataOut_s1[33], DataOut_s0[33]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U89 ( .common_out(common_out), .a ({common_xor[0], wk[31]}), .b ({common_xor[1], Midori_rounds_SR_Result[3]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({DataOut_s1[31], DataOut_s0[31]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U86 ( .common_out(common_out), .a ({common_xor[0], wk[29]}), .b ({common_xor[1], Midori_rounds_SR_Result[1]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({DataOut_s1[29], DataOut_s0[29]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U84 ( .common_out(common_out), .a ({common_xor[0], wk[27]}), .b ({common_xor[1], Midori_rounds_SR_Result[31]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({DataOut_s1[27], DataOut_s0[27]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U82 ( .common_out(common_out), .a ({common_xor[0], wk[25]}), .b ({common_xor[1], Midori_rounds_SR_Result[29]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({DataOut_s1[25], DataOut_s0[25]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U80 ( .common_out(common_out), .a ({common_xor[0], wk[23]}), .b ({common_xor[1], Midori_rounds_SR_Result[59]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({DataOut_s1[23], DataOut_s0[23]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U78 ( .common_out(common_out), .a ({common_xor[0], wk[21]}), .b ({common_xor[1], Midori_rounds_SR_Result[57]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({DataOut_s1[21], DataOut_s0[21]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U76 ( .common_out(common_out), .a ({common_xor[0], wk[1]}), .b ({common_xor[1], Midori_rounds_SR_Result[49]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({DataOut_s1[1], DataOut_s0[1]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U75 ( .common_out(common_out), .a ({common_xor[0], wk[19]}), .b ({common_xor[1], Midori_rounds_SR_Result[39]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({DataOut_s1[19], DataOut_s0[19]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U73 ( .common_out(common_out), .a ({common_xor[0], wk[17]}), .b ({common_xor[1], Midori_rounds_SR_Result[37]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({DataOut_s1[17], DataOut_s0[17]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U71 ( .common_out(common_out), .a ({common_xor[0], wk[15]}), .b ({common_xor[1], Midori_rounds_SR_Result[23]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({DataOut_s1[15], DataOut_s0[15]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U69 ( .common_out(common_out), .a ({common_xor[0], wk[13]}), .b ({common_xor[1], Midori_rounds_SR_Result[21]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({DataOut_s1[13], DataOut_s0[13]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U67 ( .common_out(common_out), .a ({common_xor[0], wk[11]}), .b ({common_xor[1], Midori_rounds_SR_Result[11]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({DataOut_s1[11], DataOut_s0[11]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U144 ( .common_out(common_out), .a ({new_AGEMA_signal_1654, Midori_rounds_SelectedKey_9_}), .b ({new_AGEMA_signal_2154, Midori_rounds_SR_Result[9]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2272, Midori_rounds_sub_ResultXORkey[9]}) ) ; /* xor_COMAR_type_3 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U142 ( .common_out(common_out), .a ({new_AGEMA_signal_2015, Midori_rounds_SelectedKey_7_}), .b ({new_AGEMA_signal_2148, Midori_rounds_SR_Result[47]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2273, Midori_rounds_sub_ResultXORkey[7]}) ) ; /* xor_COMAR_type_3 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U140 ( .common_out(common_out), .a ({new_AGEMA_signal_2063, Midori_rounds_SelectedKey_63_}), .b ({new_AGEMA_signal_2204, Midori_rounds_SR_Result[63]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2275, Midori_rounds_sub_ResultXORkey[63]}) ) ; /* xor_COMAR_type_3 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U138 ( .common_out(common_out), .a ({new_AGEMA_signal_2061, Midori_rounds_SelectedKey_61_}), .b ({new_AGEMA_signal_2206, Midori_rounds_SR_Result[61]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2277, Midori_rounds_sub_ResultXORkey[61]}) ) ; /* xor_COMAR_type_3 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U136 ( .common_out(common_out), .a ({new_AGEMA_signal_2013, Midori_rounds_SelectedKey_5_}), .b ({new_AGEMA_signal_2150, Midori_rounds_SR_Result[45]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2278, Midori_rounds_sub_ResultXORkey[5]}) ) ; /* xor_COMAR_type_3 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U135 ( .common_out(common_out), .a ({new_AGEMA_signal_2059, Midori_rounds_SelectedKey_59_}), .b ({new_AGEMA_signal_2200, Midori_rounds_SR_Result[35]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2279, Midori_rounds_sub_ResultXORkey[59]}) ) ; /* xor_COMAR_type_3 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U133 ( .common_out(common_out), .a ({new_AGEMA_signal_2057, Midori_rounds_SelectedKey_57_}), .b ({new_AGEMA_signal_2202, Midori_rounds_SR_Result[33]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2281, Midori_rounds_sub_ResultXORkey[57]}) ) ; /* xor_COMAR_type_3 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U131 ( .common_out(common_out), .a ({new_AGEMA_signal_2055, Midori_rounds_SelectedKey_55_}), .b ({new_AGEMA_signal_2196, Midori_rounds_SR_Result[7]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2282, Midori_rounds_sub_ResultXORkey[55]}) ) ; /* xor_COMAR_type_3 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U129 ( .common_out(common_out), .a ({new_AGEMA_signal_2053, Midori_rounds_SelectedKey_53_}), .b ({new_AGEMA_signal_2198, Midori_rounds_SR_Result[5]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2284, Midori_rounds_sub_ResultXORkey[53]}) ) ; /* xor_COMAR_type_3 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U127 ( .common_out(common_out), .a ({new_AGEMA_signal_2051, Midori_rounds_SelectedKey_51_}), .b ({new_AGEMA_signal_2192, Midori_rounds_SR_Result[27]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2285, Midori_rounds_sub_ResultXORkey[51]}) ) ; /* xor_COMAR_type_3 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U124 ( .common_out(common_out), .a ({new_AGEMA_signal_2049, Midori_rounds_SelectedKey_49_}), .b ({new_AGEMA_signal_2194, Midori_rounds_SR_Result[25]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2287, Midori_rounds_sub_ResultXORkey[49]}) ) ; /* xor_COMAR_type_3 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U122 ( .common_out(common_out), .a ({new_AGEMA_signal_2047, Midori_rounds_SelectedKey_47_}), .b ({new_AGEMA_signal_2188, Midori_rounds_SR_Result[43]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2288, Midori_rounds_sub_ResultXORkey[47]}) ) ; /* xor_COMAR_type_3 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U120 ( .common_out(common_out), .a ({new_AGEMA_signal_2045, Midori_rounds_SelectedKey_45_}), .b ({new_AGEMA_signal_2190, Midori_rounds_SR_Result[41]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2290, Midori_rounds_sub_ResultXORkey[45]}) ) ; /* xor_COMAR_type_3 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U118 ( .common_out(common_out), .a ({new_AGEMA_signal_2043, Midori_rounds_SelectedKey_43_}), .b ({new_AGEMA_signal_2184, Midori_rounds_SR_Result[55]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2291, Midori_rounds_sub_ResultXORkey[43]}) ) ; /* xor_COMAR_type_3 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U116 ( .common_out(common_out), .a ({new_AGEMA_signal_2041, Midori_rounds_SelectedKey_41_}), .b ({new_AGEMA_signal_2186, Midori_rounds_SR_Result[53]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2293, Midori_rounds_sub_ResultXORkey[41]}) ) ; /* xor_COMAR_type_3 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U114 ( .common_out(common_out), .a ({new_AGEMA_signal_1651, Midori_rounds_SelectedKey_3_}), .b ({new_AGEMA_signal_2144, Midori_rounds_SR_Result[51]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2294, Midori_rounds_sub_ResultXORkey[3]}) ) ; /* xor_COMAR_type_3 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U113 ( .common_out(common_out), .a ({new_AGEMA_signal_2039, Midori_rounds_SelectedKey_39_}), .b ({new_AGEMA_signal_2180, Midori_rounds_SR_Result[19]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2295, Midori_rounds_sub_ResultXORkey[39]}) ) ; /* xor_COMAR_type_3 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U111 ( .common_out(common_out), .a ({new_AGEMA_signal_2037, Midori_rounds_SelectedKey_37_}), .b ({new_AGEMA_signal_2182, Midori_rounds_SR_Result[17]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2297, Midori_rounds_sub_ResultXORkey[37]}) ) ; /* xor_COMAR_type_3 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U109 ( .common_out(common_out), .a ({new_AGEMA_signal_2035, Midori_rounds_SelectedKey_35_}), .b ({new_AGEMA_signal_2176, Midori_rounds_SR_Result[15]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2298, Midori_rounds_sub_ResultXORkey[35]}) ) ; /* xor_COMAR_type_3 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U107 ( .common_out(common_out), .a ({new_AGEMA_signal_2033, Midori_rounds_SelectedKey_33_}), .b ({new_AGEMA_signal_2178, Midori_rounds_SR_Result[13]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2300, Midori_rounds_sub_ResultXORkey[33]}) ) ; /* xor_COMAR_type_3 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U105 ( .common_out(common_out), .a ({new_AGEMA_signal_2031, Midori_rounds_SelectedKey_31_}), .b ({new_AGEMA_signal_2172, Midori_rounds_SR_Result[3]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2301, Midori_rounds_sub_ResultXORkey[31]}) ) ; /* xor_COMAR_type_3 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U102 ( .common_out(common_out), .a ({new_AGEMA_signal_2029, Midori_rounds_SelectedKey_29_}), .b ({new_AGEMA_signal_2174, Midori_rounds_SR_Result[1]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2304, Midori_rounds_sub_ResultXORkey[29]}) ) ; /* xor_COMAR_type_3 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U100 ( .common_out(common_out), .a ({new_AGEMA_signal_2027, Midori_rounds_SelectedKey_27_}), .b ({new_AGEMA_signal_2168, Midori_rounds_SR_Result[31]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2305, Midori_rounds_sub_ResultXORkey[27]}) ) ; /* xor_COMAR_type_3 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U98 ( .common_out(common_out), .a ({new_AGEMA_signal_2026, Midori_rounds_SelectedKey_25_}), .b ({new_AGEMA_signal_2170, Midori_rounds_SR_Result[29]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2307, Midori_rounds_sub_ResultXORkey[25]}) ) ; /* xor_COMAR_type_3 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U96 ( .common_out(common_out), .a ({new_AGEMA_signal_2024, Midori_rounds_SelectedKey_23_}), .b ({new_AGEMA_signal_2164, Midori_rounds_SR_Result[59]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2308, Midori_rounds_sub_ResultXORkey[23]}) ) ; /* xor_COMAR_type_3 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U94 ( .common_out(common_out), .a ({new_AGEMA_signal_2022, Midori_rounds_SelectedKey_21_}), .b ({new_AGEMA_signal_2166, Midori_rounds_SR_Result[57]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2310, Midori_rounds_sub_ResultXORkey[21]}) ) ; /* xor_COMAR_type_3 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U92 ( .common_out(common_out), .a ({new_AGEMA_signal_1649, Midori_rounds_SelectedKey_1_}), .b ({new_AGEMA_signal_2146, Midori_rounds_SR_Result[49]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2311, Midori_rounds_sub_ResultXORkey[1]}) ) ; /* xor_COMAR_type_3 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U91 ( .common_out(common_out), .a ({new_AGEMA_signal_2020, Midori_rounds_SelectedKey_19_}), .b ({new_AGEMA_signal_2160, Midori_rounds_SR_Result[39]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2312, Midori_rounds_sub_ResultXORkey[19]}) ) ; /* xor_COMAR_type_3 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U89 ( .common_out(common_out), .a ({new_AGEMA_signal_2018, Midori_rounds_SelectedKey_17_}), .b ({new_AGEMA_signal_2162, Midori_rounds_SR_Result[37]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2314, Midori_rounds_sub_ResultXORkey[17]}) ) ; /* xor_COMAR_type_3 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U87 ( .common_out(common_out), .a ({new_AGEMA_signal_1659, Midori_rounds_SelectedKey_15_}), .b ({new_AGEMA_signal_2156, Midori_rounds_SR_Result[23]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2315, Midori_rounds_sub_ResultXORkey[15]}) ) ; /* xor_COMAR_type_3 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U85 ( .common_out(common_out), .a ({new_AGEMA_signal_1657, Midori_rounds_SelectedKey_13_}), .b ({new_AGEMA_signal_2158, Midori_rounds_SR_Result[21]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2317, Midori_rounds_sub_ResultXORkey[13]}) ) ; /* xor_COMAR_type_3 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U83 ( .common_out(common_out), .a ({new_AGEMA_signal_1656, Midori_rounds_SelectedKey_11_}), .b ({new_AGEMA_signal_2152, Midori_rounds_SR_Result[11]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2318, Midori_rounds_sub_ResultXORkey[11]}) ) ; /* xor_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_0_U17 ( .common_out(common_out), .a ({common_and[0], Midori_rounds_sub_sBox_PRINCE_0_n15}), .b ({common_and[1], Midori_rounds_sub_sBox_PRINCE_0_n12}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2145, Midori_rounds_SR_Result[50]}) ) ; /* nand_COMAR_type_1 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_0_U8 ( .common_out(common_out), .a ({common_and[0], Midori_rounds_sub_sBox_PRINCE_0_n13}), .b ({common_and[1], Midori_rounds_sub_sBox_PRINCE_0_n3}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2147, Midori_rounds_SR_Result[48]}) ) ; /* nor_COMAR_type_1 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_1_U17 ( .common_out(common_out), .a ({common_and[0], Midori_rounds_sub_sBox_PRINCE_1_n15}), .b ({common_and[1], Midori_rounds_sub_sBox_PRINCE_1_n12}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2149, Midori_rounds_SR_Result[46]}) ) ; /* nand_COMAR_type_1 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_1_U8 ( .common_out(common_out), .a ({common_and[0], Midori_rounds_sub_sBox_PRINCE_1_n13}), .b ({common_and[1], Midori_rounds_sub_sBox_PRINCE_1_n3}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2151, Midori_rounds_SR_Result[44]}) ) ; /* nor_COMAR_type_1 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_2_U17 ( .common_out(common_out), .a ({common_and[0], Midori_rounds_sub_sBox_PRINCE_2_n15}), .b ({common_and[1], Midori_rounds_sub_sBox_PRINCE_2_n12}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2153, Midori_rounds_SR_Result[10]}) ) ; /* nand_COMAR_type_1 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_2_U8 ( .common_out(common_out), .a ({common_and[0], Midori_rounds_sub_sBox_PRINCE_2_n13}), .b ({common_and[1], Midori_rounds_sub_sBox_PRINCE_2_n3}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2155, Midori_rounds_SR_Result[8]}) ) ; /* nor_COMAR_type_1 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_3_U17 ( .common_out(common_out), .a ({common_and[0], Midori_rounds_sub_sBox_PRINCE_3_n15}), .b ({common_and[1], Midori_rounds_sub_sBox_PRINCE_3_n12}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2157, Midori_rounds_SR_Result[22]}) ) ; /* nand_COMAR_type_1 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_3_U8 ( .common_out(common_out), .a ({common_and[0], Midori_rounds_sub_sBox_PRINCE_3_n13}), .b ({common_and[1], Midori_rounds_sub_sBox_PRINCE_3_n3}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2159, Midori_rounds_SR_Result[20]}) ) ; /* nor_COMAR_type_1 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_4_U17 ( .common_out(common_out), .a ({common_and[0], Midori_rounds_sub_sBox_PRINCE_4_n15}), .b ({common_and[1], Midori_rounds_sub_sBox_PRINCE_4_n12}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2161, Midori_rounds_SR_Result[38]}) ) ; /* nand_COMAR_type_1 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_4_U8 ( .common_out(common_out), .a ({common_and[0], Midori_rounds_sub_sBox_PRINCE_4_n13}), .b ({common_and[1], Midori_rounds_sub_sBox_PRINCE_4_n3}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2163, Midori_rounds_SR_Result[36]}) ) ; /* nor_COMAR_type_1 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_5_U17 ( .common_out(common_out), .a ({common_and[0], Midori_rounds_sub_sBox_PRINCE_5_n15}), .b ({common_and[1], Midori_rounds_sub_sBox_PRINCE_5_n12}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2165, Midori_rounds_SR_Result[58]}) ) ; /* nand_COMAR_type_1 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_5_U8 ( .common_out(common_out), .a ({common_and[0], Midori_rounds_sub_sBox_PRINCE_5_n13}), .b ({common_and[1], Midori_rounds_sub_sBox_PRINCE_5_n3}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2167, Midori_rounds_SR_Result[56]}) ) ; /* nor_COMAR_type_1 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_6_U17 ( .common_out(common_out), .a ({common_and[0], Midori_rounds_sub_sBox_PRINCE_6_n15}), .b ({common_and[1], Midori_rounds_sub_sBox_PRINCE_6_n12}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2169, Midori_rounds_SR_Result[30]}) ) ; /* nand_COMAR_type_1 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_6_U8 ( .common_out(common_out), .a ({common_and[0], Midori_rounds_sub_sBox_PRINCE_6_n13}), .b ({common_and[1], Midori_rounds_sub_sBox_PRINCE_6_n3}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2171, Midori_rounds_SR_Result[28]}) ) ; /* nor_COMAR_type_1 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_7_U17 ( .common_out(common_out), .a ({common_and[0], Midori_rounds_sub_sBox_PRINCE_7_n15}), .b ({common_and[1], Midori_rounds_sub_sBox_PRINCE_7_n12}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2173, Midori_rounds_SR_Result[2]}) ) ; /* nand_COMAR_type_1 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_7_U8 ( .common_out(common_out), .a ({common_and[0], Midori_rounds_sub_sBox_PRINCE_7_n13}), .b ({common_and[1], Midori_rounds_sub_sBox_PRINCE_7_n3}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2175, Midori_rounds_SR_Result[0]}) ) ; /* nor_COMAR_type_1 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_8_U17 ( .common_out(common_out), .a ({common_and[0], Midori_rounds_sub_sBox_PRINCE_8_n15}), .b ({common_and[1], Midori_rounds_sub_sBox_PRINCE_8_n12}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2177, Midori_rounds_SR_Result[14]}) ) ; /* nand_COMAR_type_1 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_8_U8 ( .common_out(common_out), .a ({common_and[0], Midori_rounds_sub_sBox_PRINCE_8_n13}), .b ({common_and[1], Midori_rounds_sub_sBox_PRINCE_8_n3}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2179, Midori_rounds_SR_Result[12]}) ) ; /* nor_COMAR_type_1 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_9_U17 ( .common_out(common_out), .a ({common_and[0], Midori_rounds_sub_sBox_PRINCE_9_n15}), .b ({common_and[1], Midori_rounds_sub_sBox_PRINCE_9_n12}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2181, Midori_rounds_SR_Result[18]}) ) ; /* nand_COMAR_type_1 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_9_U8 ( .common_out(common_out), .a ({common_and[0], Midori_rounds_sub_sBox_PRINCE_9_n13}), .b ({common_and[1], Midori_rounds_sub_sBox_PRINCE_9_n3}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2183, Midori_rounds_SR_Result[16]}) ) ; /* nor_COMAR_type_1 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_10_U17 ( .common_out(common_out), .a ({common_and[0], Midori_rounds_sub_sBox_PRINCE_10_n15}), .b ({common_and[1], Midori_rounds_sub_sBox_PRINCE_10_n12}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2185, Midori_rounds_SR_Result[54]}) ) ; /* nand_COMAR_type_1 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_10_U8 ( .common_out(common_out), .a ({common_and[0], Midori_rounds_sub_sBox_PRINCE_10_n13}), .b ({common_and[1], Midori_rounds_sub_sBox_PRINCE_10_n3}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2187, Midori_rounds_SR_Result[52]}) ) ; /* nor_COMAR_type_1 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_11_U17 ( .common_out(common_out), .a ({common_and[0], Midori_rounds_sub_sBox_PRINCE_11_n15}), .b ({common_and[1], Midori_rounds_sub_sBox_PRINCE_11_n12}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2189, Midori_rounds_SR_Result[42]}) ) ; /* nand_COMAR_type_1 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_11_U8 ( .common_out(common_out), .a ({common_and[0], Midori_rounds_sub_sBox_PRINCE_11_n13}), .b ({common_and[1], Midori_rounds_sub_sBox_PRINCE_11_n3}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2191, Midori_rounds_SR_Result[40]}) ) ; /* nor_COMAR_type_1 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_12_U17 ( .common_out(common_out), .a ({common_and[0], Midori_rounds_sub_sBox_PRINCE_12_n15}), .b ({common_and[1], Midori_rounds_sub_sBox_PRINCE_12_n12}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2193, Midori_rounds_SR_Result[26]}) ) ; /* nand_COMAR_type_1 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_12_U8 ( .common_out(common_out), .a ({common_and[0], Midori_rounds_sub_sBox_PRINCE_12_n13}), .b ({common_and[1], Midori_rounds_sub_sBox_PRINCE_12_n3}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2195, Midori_rounds_SR_Result[24]}) ) ; /* nor_COMAR_type_1 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_13_U17 ( .common_out(common_out), .a ({common_and[0], Midori_rounds_sub_sBox_PRINCE_13_n15}), .b ({common_and[1], Midori_rounds_sub_sBox_PRINCE_13_n12}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2197, Midori_rounds_SR_Result[6]}) ) ; /* nand_COMAR_type_1 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_13_U8 ( .common_out(common_out), .a ({common_and[0], Midori_rounds_sub_sBox_PRINCE_13_n13}), .b ({common_and[1], Midori_rounds_sub_sBox_PRINCE_13_n3}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2199, Midori_rounds_SR_Result[4]}) ) ; /* nor_COMAR_type_1 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_14_U17 ( .common_out(common_out), .a ({common_and[0], Midori_rounds_sub_sBox_PRINCE_14_n15}), .b ({common_and[1], Midori_rounds_sub_sBox_PRINCE_14_n12}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2201, Midori_rounds_SR_Result[34]}) ) ; /* nand_COMAR_type_1 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_14_U8 ( .common_out(common_out), .a ({common_and[0], Midori_rounds_sub_sBox_PRINCE_14_n13}), .b ({common_and[1], Midori_rounds_sub_sBox_PRINCE_14_n3}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2203, Midori_rounds_SR_Result[32]}) ) ; /* nor_COMAR_type_1 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_15_U17 ( .common_out(common_out), .a ({common_and[0], Midori_rounds_sub_sBox_PRINCE_15_n15}), .b ({common_and[1], Midori_rounds_sub_sBox_PRINCE_15_n12}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2205, Midori_rounds_SR_Result[62]}) ) ; /* nand_COMAR_type_1 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_sub_sBox_PRINCE_15_U8 ( .common_out(common_out), .a ({common_and[0], Midori_rounds_sub_sBox_PRINCE_15_n13}), .b ({common_and[1], Midori_rounds_sub_sBox_PRINCE_15_n3}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2207, Midori_rounds_SR_Result[60]}) ) ; /* nor_COMAR_type_1 */
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_mul_input_Inst_mux_inst_1_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2174, Midori_rounds_SR_Result[1]}), .a ({new_AGEMA_signal_2311, Midori_rounds_sub_ResultXORkey[1]}), .c ({new_AGEMA_signal_2320, Midori_rounds_mul_input[1]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_mul_input_Inst_mux_inst_3_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2172, Midori_rounds_SR_Result[3]}), .a ({new_AGEMA_signal_2294, Midori_rounds_sub_ResultXORkey[3]}), .c ({new_AGEMA_signal_2322, Midori_rounds_mul_input[3]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_mul_input_Inst_mux_inst_5_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2198, Midori_rounds_SR_Result[5]}), .a ({new_AGEMA_signal_2278, Midori_rounds_sub_ResultXORkey[5]}), .c ({new_AGEMA_signal_2323, Midori_rounds_mul_input[5]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_mul_input_Inst_mux_inst_7_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2196, Midori_rounds_SR_Result[7]}), .a ({new_AGEMA_signal_2273, Midori_rounds_sub_ResultXORkey[7]}), .c ({new_AGEMA_signal_2325, Midori_rounds_mul_input[7]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_mul_input_Inst_mux_inst_9_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2154, Midori_rounds_SR_Result[9]}), .a ({new_AGEMA_signal_2272, Midori_rounds_sub_ResultXORkey[9]}), .c ({new_AGEMA_signal_2326, Midori_rounds_mul_input[9]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_mul_input_Inst_mux_inst_11_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2152, Midori_rounds_SR_Result[11]}), .a ({new_AGEMA_signal_2318, Midori_rounds_sub_ResultXORkey[11]}), .c ({new_AGEMA_signal_2328, Midori_rounds_mul_input[11]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_mul_input_Inst_mux_inst_13_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2178, Midori_rounds_SR_Result[13]}), .a ({new_AGEMA_signal_2317, Midori_rounds_sub_ResultXORkey[13]}), .c ({new_AGEMA_signal_2329, Midori_rounds_mul_input[13]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_mul_input_Inst_mux_inst_15_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2176, Midori_rounds_SR_Result[15]}), .a ({new_AGEMA_signal_2315, Midori_rounds_sub_ResultXORkey[15]}), .c ({new_AGEMA_signal_2331, Midori_rounds_mul_input[15]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_mul_input_Inst_mux_inst_17_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2182, Midori_rounds_SR_Result[17]}), .a ({new_AGEMA_signal_2314, Midori_rounds_sub_ResultXORkey[17]}), .c ({new_AGEMA_signal_2332, Midori_rounds_mul_input[17]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_mul_input_Inst_mux_inst_19_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2180, Midori_rounds_SR_Result[19]}), .a ({new_AGEMA_signal_2312, Midori_rounds_sub_ResultXORkey[19]}), .c ({new_AGEMA_signal_2334, Midori_rounds_mul_input[19]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_mul_input_Inst_mux_inst_21_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2158, Midori_rounds_SR_Result[21]}), .a ({new_AGEMA_signal_2310, Midori_rounds_sub_ResultXORkey[21]}), .c ({new_AGEMA_signal_2335, Midori_rounds_mul_input[21]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_mul_input_Inst_mux_inst_23_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2156, Midori_rounds_SR_Result[23]}), .a ({new_AGEMA_signal_2308, Midori_rounds_sub_ResultXORkey[23]}), .c ({new_AGEMA_signal_2337, Midori_rounds_mul_input[23]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_mul_input_Inst_mux_inst_25_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2194, Midori_rounds_SR_Result[25]}), .a ({new_AGEMA_signal_2307, Midori_rounds_sub_ResultXORkey[25]}), .c ({new_AGEMA_signal_2338, Midori_rounds_mul_input[25]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_mul_input_Inst_mux_inst_27_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2192, Midori_rounds_SR_Result[27]}), .a ({new_AGEMA_signal_2305, Midori_rounds_sub_ResultXORkey[27]}), .c ({new_AGEMA_signal_2340, Midori_rounds_mul_input[27]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_mul_input_Inst_mux_inst_29_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2170, Midori_rounds_SR_Result[29]}), .a ({new_AGEMA_signal_2304, Midori_rounds_sub_ResultXORkey[29]}), .c ({new_AGEMA_signal_2341, Midori_rounds_mul_input[29]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_mul_input_Inst_mux_inst_31_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2168, Midori_rounds_SR_Result[31]}), .a ({new_AGEMA_signal_2301, Midori_rounds_sub_ResultXORkey[31]}), .c ({new_AGEMA_signal_2343, Midori_rounds_mul_input[31]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_mul_input_Inst_mux_inst_33_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2202, Midori_rounds_SR_Result[33]}), .a ({new_AGEMA_signal_2300, Midori_rounds_sub_ResultXORkey[33]}), .c ({new_AGEMA_signal_2344, Midori_rounds_mul_input[33]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_mul_input_Inst_mux_inst_35_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2200, Midori_rounds_SR_Result[35]}), .a ({new_AGEMA_signal_2298, Midori_rounds_sub_ResultXORkey[35]}), .c ({new_AGEMA_signal_2346, Midori_rounds_mul_input[35]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_mul_input_Inst_mux_inst_37_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2162, Midori_rounds_SR_Result[37]}), .a ({new_AGEMA_signal_2297, Midori_rounds_sub_ResultXORkey[37]}), .c ({new_AGEMA_signal_2347, Midori_rounds_mul_input[37]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_mul_input_Inst_mux_inst_39_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2160, Midori_rounds_SR_Result[39]}), .a ({new_AGEMA_signal_2295, Midori_rounds_sub_ResultXORkey[39]}), .c ({new_AGEMA_signal_2349, Midori_rounds_mul_input[39]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_mul_input_Inst_mux_inst_41_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2190, Midori_rounds_SR_Result[41]}), .a ({new_AGEMA_signal_2293, Midori_rounds_sub_ResultXORkey[41]}), .c ({new_AGEMA_signal_2350, Midori_rounds_mul_input[41]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_mul_input_Inst_mux_inst_43_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2188, Midori_rounds_SR_Result[43]}), .a ({new_AGEMA_signal_2291, Midori_rounds_sub_ResultXORkey[43]}), .c ({new_AGEMA_signal_2352, Midori_rounds_mul_input[43]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_mul_input_Inst_mux_inst_45_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2150, Midori_rounds_SR_Result[45]}), .a ({new_AGEMA_signal_2290, Midori_rounds_sub_ResultXORkey[45]}), .c ({new_AGEMA_signal_2353, Midori_rounds_mul_input[45]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_mul_input_Inst_mux_inst_47_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2148, Midori_rounds_SR_Result[47]}), .a ({new_AGEMA_signal_2288, Midori_rounds_sub_ResultXORkey[47]}), .c ({new_AGEMA_signal_2355, Midori_rounds_mul_input[47]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_mul_input_Inst_mux_inst_49_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2146, Midori_rounds_SR_Result[49]}), .a ({new_AGEMA_signal_2287, Midori_rounds_sub_ResultXORkey[49]}), .c ({new_AGEMA_signal_2356, Midori_rounds_mul_input[49]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_mul_input_Inst_mux_inst_51_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2144, Midori_rounds_SR_Result[51]}), .a ({new_AGEMA_signal_2285, Midori_rounds_sub_ResultXORkey[51]}), .c ({new_AGEMA_signal_2358, Midori_rounds_mul_input[51]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_mul_input_Inst_mux_inst_53_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2186, Midori_rounds_SR_Result[53]}), .a ({new_AGEMA_signal_2284, Midori_rounds_sub_ResultXORkey[53]}), .c ({new_AGEMA_signal_2359, Midori_rounds_mul_input[53]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_mul_input_Inst_mux_inst_55_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2184, Midori_rounds_SR_Result[55]}), .a ({new_AGEMA_signal_2282, Midori_rounds_sub_ResultXORkey[55]}), .c ({new_AGEMA_signal_2361, Midori_rounds_mul_input[55]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_mul_input_Inst_mux_inst_57_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2166, Midori_rounds_SR_Result[57]}), .a ({new_AGEMA_signal_2281, Midori_rounds_sub_ResultXORkey[57]}), .c ({new_AGEMA_signal_2362, Midori_rounds_mul_input[57]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_mul_input_Inst_mux_inst_59_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2164, Midori_rounds_SR_Result[59]}), .a ({new_AGEMA_signal_2279, Midori_rounds_sub_ResultXORkey[59]}), .c ({new_AGEMA_signal_2364, Midori_rounds_mul_input[59]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_mul_input_Inst_mux_inst_61_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2206, Midori_rounds_SR_Result[61]}), .a ({new_AGEMA_signal_2277, Midori_rounds_sub_ResultXORkey[61]}), .c ({new_AGEMA_signal_2365, Midori_rounds_mul_input[61]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_mul_input_Inst_mux_inst_63_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2204, Midori_rounds_SR_Result[63]}), .a ({new_AGEMA_signal_2275, Midori_rounds_sub_ResultXORkey[63]}), .c ({new_AGEMA_signal_2367, Midori_rounds_mul_input[63]}) ) ;

    /* cells in depth 9 */

    /* cells in depth 10 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U127 ( .common_out(common_out), .a ({common_xor[0], wk[8]}), .b ({common_xor[1], Midori_rounds_SR_Result[8]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({DataOut_s1[8], DataOut_s0[8]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U125 ( .common_out(common_out), .a ({common_xor[0], wk[6]}), .b ({common_xor[1], Midori_rounds_SR_Result[46]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({DataOut_s1[6], DataOut_s0[6]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U123 ( .common_out(common_out), .a ({common_xor[0], wk[62]}), .b ({common_xor[1], Midori_rounds_SR_Result[62]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({DataOut_s1[62], DataOut_s0[62]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U121 ( .common_out(common_out), .a ({common_xor[0], wk[60]}), .b ({common_xor[1], Midori_rounds_SR_Result[60]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({DataOut_s1[60], DataOut_s0[60]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U118 ( .common_out(common_out), .a ({common_xor[0], wk[58]}), .b ({common_xor[1], Midori_rounds_SR_Result[34]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({DataOut_s1[58], DataOut_s0[58]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U116 ( .common_out(common_out), .a ({common_xor[0], wk[56]}), .b ({common_xor[1], Midori_rounds_SR_Result[32]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({DataOut_s1[56], DataOut_s0[56]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U114 ( .common_out(common_out), .a ({common_xor[0], wk[54]}), .b ({common_xor[1], Midori_rounds_SR_Result[6]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({DataOut_s1[54], DataOut_s0[54]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U112 ( .common_out(common_out), .a ({common_xor[0], wk[52]}), .b ({common_xor[1], Midori_rounds_SR_Result[4]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({DataOut_s1[52], DataOut_s0[52]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U110 ( .common_out(common_out), .a ({common_xor[0], wk[50]}), .b ({common_xor[1], Midori_rounds_SR_Result[26]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({DataOut_s1[50], DataOut_s0[50]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U109 ( .common_out(common_out), .a ({common_xor[0], wk[4]}), .b ({common_xor[1], Midori_rounds_SR_Result[44]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({DataOut_s1[4], DataOut_s0[4]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U107 ( .common_out(common_out), .a ({common_xor[0], wk[48]}), .b ({common_xor[1], Midori_rounds_SR_Result[24]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({DataOut_s1[48], DataOut_s0[48]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U105 ( .common_out(common_out), .a ({common_xor[0], wk[46]}), .b ({common_xor[1], Midori_rounds_SR_Result[42]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({DataOut_s1[46], DataOut_s0[46]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U103 ( .common_out(common_out), .a ({common_xor[0], wk[44]}), .b ({common_xor[1], Midori_rounds_SR_Result[40]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({DataOut_s1[44], DataOut_s0[44]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U101 ( .common_out(common_out), .a ({common_xor[0], wk[42]}), .b ({common_xor[1], Midori_rounds_SR_Result[54]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({DataOut_s1[42], DataOut_s0[42]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U99 ( .common_out(common_out), .a ({common_xor[0], wk[40]}), .b ({common_xor[1], Midori_rounds_SR_Result[52]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({DataOut_s1[40], DataOut_s0[40]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U96 ( .common_out(common_out), .a ({common_xor[0], wk[38]}), .b ({common_xor[1], Midori_rounds_SR_Result[18]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({DataOut_s1[38], DataOut_s0[38]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U94 ( .common_out(common_out), .a ({common_xor[0], wk[36]}), .b ({common_xor[1], Midori_rounds_SR_Result[16]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({DataOut_s1[36], DataOut_s0[36]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U92 ( .common_out(common_out), .a ({common_xor[0], wk[34]}), .b ({common_xor[1], Midori_rounds_SR_Result[14]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({DataOut_s1[34], DataOut_s0[34]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U90 ( .common_out(common_out), .a ({common_xor[0], wk[32]}), .b ({common_xor[1], Midori_rounds_SR_Result[12]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({DataOut_s1[32], DataOut_s0[32]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U88 ( .common_out(common_out), .a ({common_xor[0], wk[30]}), .b ({common_xor[1], Midori_rounds_SR_Result[2]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({DataOut_s1[30], DataOut_s0[30]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U87 ( .common_out(common_out), .a ({common_xor[0], wk[2]}), .b ({common_xor[1], Midori_rounds_SR_Result[50]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({DataOut_s1[2], DataOut_s0[2]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U85 ( .common_out(common_out), .a ({common_xor[0], wk[28]}), .b ({common_xor[1], Midori_rounds_SR_Result[0]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({DataOut_s1[28], DataOut_s0[28]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U83 ( .common_out(common_out), .a ({common_xor[0], wk[26]}), .b ({common_xor[1], Midori_rounds_SR_Result[30]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({DataOut_s1[26], DataOut_s0[26]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U81 ( .common_out(common_out), .a ({common_xor[0], wk[24]}), .b ({common_xor[1], Midori_rounds_SR_Result[28]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({DataOut_s1[24], DataOut_s0[24]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U79 ( .common_out(common_out), .a ({common_xor[0], wk[22]}), .b ({common_xor[1], Midori_rounds_SR_Result[58]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({DataOut_s1[22], DataOut_s0[22]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U77 ( .common_out(common_out), .a ({common_xor[0], wk[20]}), .b ({common_xor[1], Midori_rounds_SR_Result[56]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({DataOut_s1[20], DataOut_s0[20]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U74 ( .common_out(common_out), .a ({common_xor[0], wk[18]}), .b ({common_xor[1], Midori_rounds_SR_Result[38]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({DataOut_s1[18], DataOut_s0[18]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U72 ( .common_out(common_out), .a ({common_xor[0], wk[16]}), .b ({common_xor[1], Midori_rounds_SR_Result[36]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({DataOut_s1[16], DataOut_s0[16]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U70 ( .common_out(common_out), .a ({common_xor[0], wk[14]}), .b ({common_xor[1], Midori_rounds_SR_Result[22]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({DataOut_s1[14], DataOut_s0[14]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U68 ( .common_out(common_out), .a ({common_xor[0], wk[12]}), .b ({common_xor[1], Midori_rounds_SR_Result[20]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({DataOut_s1[12], DataOut_s0[12]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U66 ( .common_out(common_out), .a ({common_xor[0], wk[10]}), .b ({common_xor[1], Midori_rounds_SR_Result[10]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({DataOut_s1[10], DataOut_s0[10]}) ) ; /* xor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_U65 ( .common_out(common_out), .a ({common_xor[0], wk[0]}), .b ({common_xor[1], Midori_rounds_SR_Result[48]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({DataOut_s1[0], DataOut_s0[0]}) ) ; /* xor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_U143 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_SR_Result[8]}), .b ({common_xor[1], Midori_rounds_n16}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2492, Midori_rounds_sub_ResultXORkey[8]}) ) ; /* xnor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U141 ( .common_out(common_out), .a ({new_AGEMA_signal_2014, Midori_rounds_SelectedKey_6_}), .b ({new_AGEMA_signal_2149, Midori_rounds_SR_Result[46]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2274, Midori_rounds_sub_ResultXORkey[6]}) ) ; /* xor_COMAR_type_3 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U139 ( .common_out(common_out), .a ({new_AGEMA_signal_2062, Midori_rounds_SelectedKey_62_}), .b ({new_AGEMA_signal_2205, Midori_rounds_SR_Result[62]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2276, Midori_rounds_sub_ResultXORkey[62]}) ) ; /* xor_COMAR_type_3 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_U137 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_SR_Result[60]}), .b ({common_xor[1], Midori_rounds_n15}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2554, Midori_rounds_sub_ResultXORkey[60]}) ) ; /* xnor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U134 ( .common_out(common_out), .a ({new_AGEMA_signal_2058, Midori_rounds_SelectedKey_58_}), .b ({new_AGEMA_signal_2201, Midori_rounds_SR_Result[34]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2280, Midori_rounds_sub_ResultXORkey[58]}) ) ; /* xor_COMAR_type_3 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_U132 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_SR_Result[32]}), .b ({common_xor[1], Midori_rounds_n14}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2555, Midori_rounds_sub_ResultXORkey[56]}) ) ; /* xnor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U130 ( .common_out(common_out), .a ({new_AGEMA_signal_2054, Midori_rounds_SelectedKey_54_}), .b ({new_AGEMA_signal_2197, Midori_rounds_SR_Result[6]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2283, Midori_rounds_sub_ResultXORkey[54]}) ) ; /* xor_COMAR_type_3 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_U128 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_SR_Result[4]}), .b ({common_xor[1], Midori_rounds_n13}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2556, Midori_rounds_sub_ResultXORkey[52]}) ) ; /* xnor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U126 ( .common_out(common_out), .a ({new_AGEMA_signal_2050, Midori_rounds_SelectedKey_50_}), .b ({new_AGEMA_signal_2193, Midori_rounds_SR_Result[26]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2286, Midori_rounds_sub_ResultXORkey[50]}) ) ; /* xor_COMAR_type_3 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_U125 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_SR_Result[44]}), .b ({common_xor[1], Midori_rounds_n12}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2557, Midori_rounds_sub_ResultXORkey[4]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_U123 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_SR_Result[24]}), .b ({common_xor[1], Midori_rounds_n11}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2629, Midori_rounds_sub_ResultXORkey[48]}) ) ; /* xnor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U121 ( .common_out(common_out), .a ({new_AGEMA_signal_2046, Midori_rounds_SelectedKey_46_}), .b ({new_AGEMA_signal_2189, Midori_rounds_SR_Result[42]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2289, Midori_rounds_sub_ResultXORkey[46]}) ) ; /* xor_COMAR_type_3 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_U119 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_SR_Result[40]}), .b ({common_xor[1], Midori_rounds_n10}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2493, Midori_rounds_sub_ResultXORkey[44]}) ) ; /* xnor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U117 ( .common_out(common_out), .a ({new_AGEMA_signal_2042, Midori_rounds_SelectedKey_42_}), .b ({new_AGEMA_signal_2185, Midori_rounds_SR_Result[54]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2292, Midori_rounds_sub_ResultXORkey[42]}) ) ; /* xor_COMAR_type_3 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_U115 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_SR_Result[52]}), .b ({common_xor[1], Midori_rounds_n9}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2558, Midori_rounds_sub_ResultXORkey[40]}) ) ; /* xnor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U112 ( .common_out(common_out), .a ({new_AGEMA_signal_2038, Midori_rounds_SelectedKey_38_}), .b ({new_AGEMA_signal_2181, Midori_rounds_SR_Result[18]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2296, Midori_rounds_sub_ResultXORkey[38]}) ) ; /* xor_COMAR_type_3 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_U110 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_SR_Result[16]}), .b ({common_xor[1], Midori_rounds_n8}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2494, Midori_rounds_sub_ResultXORkey[36]}) ) ; /* xnor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U108 ( .common_out(common_out), .a ({new_AGEMA_signal_2034, Midori_rounds_SelectedKey_34_}), .b ({new_AGEMA_signal_2177, Midori_rounds_SR_Result[14]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2299, Midori_rounds_sub_ResultXORkey[34]}) ) ; /* xor_COMAR_type_3 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_U106 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_SR_Result[12]}), .b ({common_xor[1], Midori_rounds_n7}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2559, Midori_rounds_sub_ResultXORkey[32]}) ) ; /* xnor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U104 ( .common_out(common_out), .a ({new_AGEMA_signal_2030, Midori_rounds_SelectedKey_30_}), .b ({new_AGEMA_signal_2173, Midori_rounds_SR_Result[2]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2302, Midori_rounds_sub_ResultXORkey[30]}) ) ; /* xor_COMAR_type_3 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U103 ( .common_out(common_out), .a ({new_AGEMA_signal_1650, Midori_rounds_SelectedKey_2_}), .b ({new_AGEMA_signal_2145, Midori_rounds_SR_Result[50]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2303, Midori_rounds_sub_ResultXORkey[2]}) ) ; /* xor_COMAR_type_3 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_U101 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_SR_Result[0]}), .b ({common_xor[1], Midori_rounds_n6}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2617, Midori_rounds_sub_ResultXORkey[28]}) ) ; /* xnor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U99 ( .common_out(common_out), .a ({new_AGEMA_signal_1660, Midori_rounds_SelectedKey_26_}), .b ({new_AGEMA_signal_2169, Midori_rounds_SR_Result[30]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2306, Midori_rounds_sub_ResultXORkey[26]}) ) ; /* xor_COMAR_type_3 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_U97 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_SR_Result[28]}), .b ({common_xor[1], Midori_rounds_n5}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2560, Midori_rounds_sub_ResultXORkey[24]}) ) ; /* xnor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U95 ( .common_out(common_out), .a ({new_AGEMA_signal_2023, Midori_rounds_SelectedKey_22_}), .b ({new_AGEMA_signal_2165, Midori_rounds_SR_Result[58]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2309, Midori_rounds_sub_ResultXORkey[22]}) ) ; /* xor_COMAR_type_3 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_U93 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_SR_Result[56]}), .b ({common_xor[1], Midori_rounds_n4}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2495, Midori_rounds_sub_ResultXORkey[20]}) ) ; /* xnor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U90 ( .common_out(common_out), .a ({new_AGEMA_signal_2019, Midori_rounds_SelectedKey_18_}), .b ({new_AGEMA_signal_2161, Midori_rounds_SR_Result[38]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2313, Midori_rounds_sub_ResultXORkey[18]}) ) ; /* xor_COMAR_type_3 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_U88 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_SR_Result[36]}), .b ({common_xor[1], Midori_rounds_n3}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2561, Midori_rounds_sub_ResultXORkey[16]}) ) ; /* xnor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U86 ( .common_out(common_out), .a ({new_AGEMA_signal_1658, Midori_rounds_SelectedKey_14_}), .b ({new_AGEMA_signal_2157, Midori_rounds_SR_Result[22]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2316, Midori_rounds_sub_ResultXORkey[14]}) ) ; /* xor_COMAR_type_3 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_U84 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_SR_Result[20]}), .b ({common_xor[1], Midori_rounds_n2}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2562, Midori_rounds_sub_ResultXORkey[12]}) ) ; /* xnor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U82 ( .common_out(common_out), .a ({new_AGEMA_signal_1655, Midori_rounds_SelectedKey_10_}), .b ({new_AGEMA_signal_2153, Midori_rounds_SR_Result[10]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2319, Midori_rounds_sub_ResultXORkey[10]}) ) ; /* xor_COMAR_type_3 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_U81 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_SR_Result[48]}), .b ({common_xor[1], Midori_rounds_n1}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2563, Midori_rounds_sub_ResultXORkey[0]}) ) ; /* xnor_COMAR_type_1 */
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_mul_input_Inst_mux_inst_0_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2175, Midori_rounds_SR_Result[0]}), .a ({new_AGEMA_signal_2563, Midori_rounds_sub_ResultXORkey[0]}), .c ({new_AGEMA_signal_2619, Midori_rounds_mul_input[0]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_mul_input_Inst_mux_inst_2_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2173, Midori_rounds_SR_Result[2]}), .a ({new_AGEMA_signal_2303, Midori_rounds_sub_ResultXORkey[2]}), .c ({new_AGEMA_signal_2321, Midori_rounds_mul_input[2]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_mul_input_Inst_mux_inst_4_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2199, Midori_rounds_SR_Result[4]}), .a ({new_AGEMA_signal_2557, Midori_rounds_sub_ResultXORkey[4]}), .c ({new_AGEMA_signal_2620, Midori_rounds_mul_input[4]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_mul_input_Inst_mux_inst_6_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2197, Midori_rounds_SR_Result[6]}), .a ({new_AGEMA_signal_2274, Midori_rounds_sub_ResultXORkey[6]}), .c ({new_AGEMA_signal_2324, Midori_rounds_mul_input[6]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_mul_input_Inst_mux_inst_8_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2155, Midori_rounds_SR_Result[8]}), .a ({new_AGEMA_signal_2492, Midori_rounds_sub_ResultXORkey[8]}), .c ({new_AGEMA_signal_2613, Midori_rounds_mul_input[8]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_mul_input_Inst_mux_inst_10_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2153, Midori_rounds_SR_Result[10]}), .a ({new_AGEMA_signal_2319, Midori_rounds_sub_ResultXORkey[10]}), .c ({new_AGEMA_signal_2327, Midori_rounds_mul_input[10]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_mul_input_Inst_mux_inst_12_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2179, Midori_rounds_SR_Result[12]}), .a ({new_AGEMA_signal_2562, Midori_rounds_sub_ResultXORkey[12]}), .c ({new_AGEMA_signal_2621, Midori_rounds_mul_input[12]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_mul_input_Inst_mux_inst_14_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2177, Midori_rounds_SR_Result[14]}), .a ({new_AGEMA_signal_2316, Midori_rounds_sub_ResultXORkey[14]}), .c ({new_AGEMA_signal_2330, Midori_rounds_mul_input[14]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_mul_input_Inst_mux_inst_16_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2183, Midori_rounds_SR_Result[16]}), .a ({new_AGEMA_signal_2561, Midori_rounds_sub_ResultXORkey[16]}), .c ({new_AGEMA_signal_2622, Midori_rounds_mul_input[16]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_mul_input_Inst_mux_inst_18_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2181, Midori_rounds_SR_Result[18]}), .a ({new_AGEMA_signal_2313, Midori_rounds_sub_ResultXORkey[18]}), .c ({new_AGEMA_signal_2333, Midori_rounds_mul_input[18]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_mul_input_Inst_mux_inst_20_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2159, Midori_rounds_SR_Result[20]}), .a ({new_AGEMA_signal_2495, Midori_rounds_sub_ResultXORkey[20]}), .c ({new_AGEMA_signal_2614, Midori_rounds_mul_input[20]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_mul_input_Inst_mux_inst_22_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2157, Midori_rounds_SR_Result[22]}), .a ({new_AGEMA_signal_2309, Midori_rounds_sub_ResultXORkey[22]}), .c ({new_AGEMA_signal_2336, Midori_rounds_mul_input[22]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_mul_input_Inst_mux_inst_24_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2195, Midori_rounds_SR_Result[24]}), .a ({new_AGEMA_signal_2560, Midori_rounds_sub_ResultXORkey[24]}), .c ({new_AGEMA_signal_2623, Midori_rounds_mul_input[24]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_mul_input_Inst_mux_inst_26_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2193, Midori_rounds_SR_Result[26]}), .a ({new_AGEMA_signal_2306, Midori_rounds_sub_ResultXORkey[26]}), .c ({new_AGEMA_signal_2339, Midori_rounds_mul_input[26]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_mul_input_Inst_mux_inst_28_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2171, Midori_rounds_SR_Result[28]}), .a ({new_AGEMA_signal_2617, Midori_rounds_sub_ResultXORkey[28]}), .c ({new_AGEMA_signal_2630, Midori_rounds_mul_input[28]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_mul_input_Inst_mux_inst_30_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2169, Midori_rounds_SR_Result[30]}), .a ({new_AGEMA_signal_2302, Midori_rounds_sub_ResultXORkey[30]}), .c ({new_AGEMA_signal_2342, Midori_rounds_mul_input[30]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_mul_input_Inst_mux_inst_32_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2203, Midori_rounds_SR_Result[32]}), .a ({new_AGEMA_signal_2559, Midori_rounds_sub_ResultXORkey[32]}), .c ({new_AGEMA_signal_2624, Midori_rounds_mul_input[32]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_mul_input_Inst_mux_inst_34_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2201, Midori_rounds_SR_Result[34]}), .a ({new_AGEMA_signal_2299, Midori_rounds_sub_ResultXORkey[34]}), .c ({new_AGEMA_signal_2345, Midori_rounds_mul_input[34]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_mul_input_Inst_mux_inst_36_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2163, Midori_rounds_SR_Result[36]}), .a ({new_AGEMA_signal_2494, Midori_rounds_sub_ResultXORkey[36]}), .c ({new_AGEMA_signal_2615, Midori_rounds_mul_input[36]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_mul_input_Inst_mux_inst_38_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2161, Midori_rounds_SR_Result[38]}), .a ({new_AGEMA_signal_2296, Midori_rounds_sub_ResultXORkey[38]}), .c ({new_AGEMA_signal_2348, Midori_rounds_mul_input[38]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_mul_input_Inst_mux_inst_40_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2191, Midori_rounds_SR_Result[40]}), .a ({new_AGEMA_signal_2558, Midori_rounds_sub_ResultXORkey[40]}), .c ({new_AGEMA_signal_2625, Midori_rounds_mul_input[40]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_mul_input_Inst_mux_inst_42_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2189, Midori_rounds_SR_Result[42]}), .a ({new_AGEMA_signal_2292, Midori_rounds_sub_ResultXORkey[42]}), .c ({new_AGEMA_signal_2351, Midori_rounds_mul_input[42]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_mul_input_Inst_mux_inst_44_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2151, Midori_rounds_SR_Result[44]}), .a ({new_AGEMA_signal_2493, Midori_rounds_sub_ResultXORkey[44]}), .c ({new_AGEMA_signal_2616, Midori_rounds_mul_input[44]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_mul_input_Inst_mux_inst_46_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2149, Midori_rounds_SR_Result[46]}), .a ({new_AGEMA_signal_2289, Midori_rounds_sub_ResultXORkey[46]}), .c ({new_AGEMA_signal_2354, Midori_rounds_mul_input[46]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_mul_input_Inst_mux_inst_48_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2147, Midori_rounds_SR_Result[48]}), .a ({new_AGEMA_signal_2629, Midori_rounds_sub_ResultXORkey[48]}), .c ({new_AGEMA_signal_2637, Midori_rounds_mul_input[48]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_mul_input_Inst_mux_inst_50_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2145, Midori_rounds_SR_Result[50]}), .a ({new_AGEMA_signal_2286, Midori_rounds_sub_ResultXORkey[50]}), .c ({new_AGEMA_signal_2357, Midori_rounds_mul_input[50]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_mul_input_Inst_mux_inst_52_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2187, Midori_rounds_SR_Result[52]}), .a ({new_AGEMA_signal_2556, Midori_rounds_sub_ResultXORkey[52]}), .c ({new_AGEMA_signal_2626, Midori_rounds_mul_input[52]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_mul_input_Inst_mux_inst_54_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2185, Midori_rounds_SR_Result[54]}), .a ({new_AGEMA_signal_2283, Midori_rounds_sub_ResultXORkey[54]}), .c ({new_AGEMA_signal_2360, Midori_rounds_mul_input[54]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_mul_input_Inst_mux_inst_56_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2167, Midori_rounds_SR_Result[56]}), .a ({new_AGEMA_signal_2555, Midori_rounds_sub_ResultXORkey[56]}), .c ({new_AGEMA_signal_2627, Midori_rounds_mul_input[56]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_mul_input_Inst_mux_inst_58_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2165, Midori_rounds_SR_Result[58]}), .a ({new_AGEMA_signal_2280, Midori_rounds_sub_ResultXORkey[58]}), .c ({new_AGEMA_signal_2363, Midori_rounds_mul_input[58]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_mul_input_Inst_mux_inst_60_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2207, Midori_rounds_SR_Result[60]}), .a ({new_AGEMA_signal_2554, Midori_rounds_sub_ResultXORkey[60]}), .c ({new_AGEMA_signal_2628, Midori_rounds_mul_input[60]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_mul_input_Inst_mux_inst_62_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2205, Midori_rounds_SR_Result[62]}), .a ({new_AGEMA_signal_2276, Midori_rounds_sub_ResultXORkey[62]}), .c ({new_AGEMA_signal_2366, Midori_rounds_mul_input[62]}) ) ;
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC1_U17 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[63]}), .b ({common_xor[1], Midori_rounds_mul_input[59]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2368, Midori_rounds_mul_MC1_n6}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC1_U13 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[57]}), .b ({common_xor[1], Midori_rounds_mul_input[61]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2370, Midori_rounds_mul_MC1_n4}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC1_U9 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[49]}), .b ({common_xor[1], Midori_rounds_mul_input[53]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2371, Midori_rounds_mul_MC1_n8}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC1_U5 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[51]}), .b ({common_xor[1], Midori_rounds_mul_input[55]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2372, Midori_rounds_mul_MC1_n2}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC2_U17 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[47]}), .b ({common_xor[1], Midori_rounds_mul_input[43]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2374, Midori_rounds_mul_MC2_n6}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC2_U13 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[41]}), .b ({common_xor[1], Midori_rounds_mul_input[45]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2376, Midori_rounds_mul_MC2_n4}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC2_U9 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[33]}), .b ({common_xor[1], Midori_rounds_mul_input[37]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2377, Midori_rounds_mul_MC2_n8}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC2_U5 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[35]}), .b ({common_xor[1], Midori_rounds_mul_input[39]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2378, Midori_rounds_mul_MC2_n2}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC3_U17 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[31]}), .b ({common_xor[1], Midori_rounds_mul_input[27]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2380, Midori_rounds_mul_MC3_n6}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC3_U13 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[25]}), .b ({common_xor[1], Midori_rounds_mul_input[29]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2382, Midori_rounds_mul_MC3_n4}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC3_U9 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[17]}), .b ({common_xor[1], Midori_rounds_mul_input[21]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2383, Midori_rounds_mul_MC3_n8}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC3_U5 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[19]}), .b ({common_xor[1], Midori_rounds_mul_input[23]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2384, Midori_rounds_mul_MC3_n2}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC4_U17 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[15]}), .b ({common_xor[1], Midori_rounds_mul_input[11]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2386, Midori_rounds_mul_MC4_n6}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC4_U13 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[9]}), .b ({common_xor[1], Midori_rounds_mul_input[13]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2388, Midori_rounds_mul_MC4_n4}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC4_U9 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[1]}), .b ({common_xor[1], Midori_rounds_mul_input[5]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2389, Midori_rounds_mul_MC4_n8}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC4_U5 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[3]}), .b ({common_xor[1], Midori_rounds_mul_input[7]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2390, Midori_rounds_mul_MC4_n2}) ) ; /* xnor_COMAR_type_1 */

    /* cells in depth 11 */

    /* cells in depth 12 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC1_U24 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[61]}), .b ({common_xor[1], Midori_rounds_mul_MC1_n8}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2392, Midori_rounds_SR_Inv_Result[21]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC1_U22 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[51]}), .b ({common_xor[1], Midori_rounds_mul_MC1_n6}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2393, Midori_rounds_SR_Inv_Result[43]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC1_U20 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[49]}), .b ({common_xor[1], Midori_rounds_mul_MC1_n4}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2395, Midori_rounds_SR_Inv_Result[41]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC1_U18 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[55]}), .b ({common_xor[1], Midori_rounds_mul_MC1_n6}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2396, Midori_rounds_SR_Inv_Result[3]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC1_U15 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[62]}), .b ({common_xor[1], Midori_rounds_mul_input[58]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2369, Midori_rounds_mul_MC1_n5}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC1_U14 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[53]}), .b ({common_xor[1], Midori_rounds_mul_MC1_n4}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2398, Midori_rounds_SR_Inv_Result[1]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC1_U12 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[59]}), .b ({common_xor[1], Midori_rounds_mul_MC1_n2}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2399, Midori_rounds_SR_Inv_Result[63]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC1_U10 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[57]}), .b ({common_xor[1], Midori_rounds_mul_MC1_n8}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2401, Midori_rounds_SR_Inv_Result[61]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC1_U7 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[52]}), .b ({common_xor[1], Midori_rounds_mul_input[48]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2662, Midori_rounds_mul_MC1_n7}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC1_U6 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[63]}), .b ({common_xor[1], Midori_rounds_mul_MC1_n2}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2402, Midori_rounds_SR_Inv_Result[23]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC1_U3 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[50]}), .b ({common_xor[1], Midori_rounds_mul_input[54]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2373, Midori_rounds_mul_MC1_n1}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC1_U1 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[60]}), .b ({common_xor[1], Midori_rounds_mul_input[56]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2631, Midori_rounds_mul_MC1_n3}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC2_U24 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[45]}), .b ({common_xor[1], Midori_rounds_mul_MC2_n8}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2404, Midori_rounds_SR_Inv_Result[45]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC2_U22 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[35]}), .b ({common_xor[1], Midori_rounds_mul_MC2_n6}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2405, Midori_rounds_SR_Inv_Result[19]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC2_U20 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[33]}), .b ({common_xor[1], Midori_rounds_mul_MC2_n4}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2407, Midori_rounds_SR_Inv_Result[17]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC2_U18 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[39]}), .b ({common_xor[1], Midori_rounds_mul_MC2_n6}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2408, Midori_rounds_SR_Inv_Result[59]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC2_U15 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[46]}), .b ({common_xor[1], Midori_rounds_mul_input[42]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2375, Midori_rounds_mul_MC2_n5}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC2_U14 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[37]}), .b ({common_xor[1], Midori_rounds_mul_MC2_n4}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2410, Midori_rounds_SR_Inv_Result[57]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC2_U12 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[43]}), .b ({common_xor[1], Midori_rounds_mul_MC2_n2}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2411, Midori_rounds_SR_Inv_Result[7]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC2_U10 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[41]}), .b ({common_xor[1], Midori_rounds_mul_MC2_n8}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2413, Midori_rounds_SR_Inv_Result[5]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC2_U7 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[36]}), .b ({common_xor[1], Midori_rounds_mul_input[32]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2632, Midori_rounds_mul_MC2_n7}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC2_U6 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[47]}), .b ({common_xor[1], Midori_rounds_mul_MC2_n2}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2414, Midori_rounds_SR_Inv_Result[47]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC2_U3 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[34]}), .b ({common_xor[1], Midori_rounds_mul_input[38]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2379, Midori_rounds_mul_MC2_n1}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC2_U1 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[44]}), .b ({common_xor[1], Midori_rounds_mul_input[40]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2633, Midori_rounds_mul_MC2_n3}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC3_U24 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[29]}), .b ({common_xor[1], Midori_rounds_mul_MC3_n8}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2416, Midori_rounds_SR_Inv_Result[49]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC3_U22 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[19]}), .b ({common_xor[1], Midori_rounds_mul_MC3_n6}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2417, Midori_rounds_SR_Inv_Result[15]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC3_U20 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[17]}), .b ({common_xor[1], Midori_rounds_mul_MC3_n4}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2419, Midori_rounds_SR_Inv_Result[13]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC3_U18 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[23]}), .b ({common_xor[1], Midori_rounds_mul_MC3_n6}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2420, Midori_rounds_SR_Inv_Result[39]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC3_U15 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[30]}), .b ({common_xor[1], Midori_rounds_mul_input[26]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2381, Midori_rounds_mul_MC3_n5}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC3_U14 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[21]}), .b ({common_xor[1], Midori_rounds_mul_MC3_n4}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2422, Midori_rounds_SR_Inv_Result[37]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC3_U12 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[27]}), .b ({common_xor[1], Midori_rounds_mul_MC3_n2}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2423, Midori_rounds_SR_Inv_Result[27]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC3_U10 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[25]}), .b ({common_xor[1], Midori_rounds_mul_MC3_n8}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2425, Midori_rounds_SR_Inv_Result[25]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC3_U7 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[20]}), .b ({common_xor[1], Midori_rounds_mul_input[16]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2634, Midori_rounds_mul_MC3_n7}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC3_U6 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[31]}), .b ({common_xor[1], Midori_rounds_mul_MC3_n2}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2426, Midori_rounds_SR_Inv_Result[51]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC3_U3 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[18]}), .b ({common_xor[1], Midori_rounds_mul_input[22]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2385, Midori_rounds_mul_MC3_n1}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC3_U1 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[28]}), .b ({common_xor[1], Midori_rounds_mul_input[24]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2645, Midori_rounds_mul_MC3_n3}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC4_U24 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[13]}), .b ({common_xor[1], Midori_rounds_mul_MC4_n8}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2428, Midori_rounds_SR_Inv_Result[9]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC4_U22 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[3]}), .b ({common_xor[1], Midori_rounds_mul_MC4_n6}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2429, Midori_rounds_SR_Inv_Result[55]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC4_U20 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[1]}), .b ({common_xor[1], Midori_rounds_mul_MC4_n4}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2431, Midori_rounds_SR_Inv_Result[53]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC4_U18 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[7]}), .b ({common_xor[1], Midori_rounds_mul_MC4_n6}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2432, Midori_rounds_SR_Inv_Result[31]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC4_U15 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[14]}), .b ({common_xor[1], Midori_rounds_mul_input[10]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2387, Midori_rounds_mul_MC4_n5}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC4_U14 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[5]}), .b ({common_xor[1], Midori_rounds_mul_MC4_n4}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2434, Midori_rounds_SR_Inv_Result[29]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC4_U12 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[11]}), .b ({common_xor[1], Midori_rounds_mul_MC4_n2}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2435, Midori_rounds_SR_Inv_Result[35]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC4_U10 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[9]}), .b ({common_xor[1], Midori_rounds_mul_MC4_n8}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2437, Midori_rounds_SR_Inv_Result[33]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC4_U7 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[4]}), .b ({common_xor[1], Midori_rounds_mul_input[0]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2635, Midori_rounds_mul_MC4_n7}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC4_U6 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[15]}), .b ({common_xor[1], Midori_rounds_mul_MC4_n2}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2438, Midori_rounds_SR_Inv_Result[11]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC4_U3 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[2]}), .b ({common_xor[1], Midori_rounds_mul_input[6]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2391, Midori_rounds_mul_MC4_n1}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC4_U1 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[12]}), .b ({common_xor[1], Midori_rounds_mul_input[8]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2636, Midori_rounds_mul_MC4_n3}) ) ; /* xnor_COMAR_type_1 */

    /* cells in depth 13 */

    /* cells in depth 14 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U80 ( .common_out(common_out), .a ({new_AGEMA_signal_1654, Midori_rounds_SelectedKey_9_}), .b ({new_AGEMA_signal_2428, Midori_rounds_SR_Inv_Result[9]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2440, Midori_rounds_mul_ResultXORkey[9]}) ) ; /* xor_COMAR_type_3 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U77 ( .common_out(common_out), .a ({new_AGEMA_signal_2015, Midori_rounds_SelectedKey_7_}), .b ({new_AGEMA_signal_2429, Midori_rounds_SR_Inv_Result[55]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2442, Midori_rounds_mul_ResultXORkey[7]}) ) ; /* xor_COMAR_type_3 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U75 ( .common_out(common_out), .a ({new_AGEMA_signal_2063, Midori_rounds_SelectedKey_63_}), .b ({new_AGEMA_signal_2399, Midori_rounds_SR_Inv_Result[63]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2444, Midori_rounds_mul_ResultXORkey[63]}) ) ; /* xor_COMAR_type_3 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U73 ( .common_out(common_out), .a ({new_AGEMA_signal_2061, Midori_rounds_SelectedKey_61_}), .b ({new_AGEMA_signal_2401, Midori_rounds_SR_Inv_Result[61]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2446, Midori_rounds_mul_ResultXORkey[61]}) ) ; /* xor_COMAR_type_3 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U70 ( .common_out(common_out), .a ({new_AGEMA_signal_2013, Midori_rounds_SelectedKey_5_}), .b ({new_AGEMA_signal_2431, Midori_rounds_SR_Inv_Result[53]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2447, Midori_rounds_mul_ResultXORkey[5]}) ) ; /* xor_COMAR_type_3 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U69 ( .common_out(common_out), .a ({new_AGEMA_signal_2059, Midori_rounds_SelectedKey_59_}), .b ({new_AGEMA_signal_2402, Midori_rounds_SR_Inv_Result[23]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2448, Midori_rounds_mul_ResultXORkey[59]}) ) ; /* xor_COMAR_type_3 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U67 ( .common_out(common_out), .a ({new_AGEMA_signal_2057, Midori_rounds_SelectedKey_57_}), .b ({new_AGEMA_signal_2392, Midori_rounds_SR_Inv_Result[21]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2450, Midori_rounds_mul_ResultXORkey[57]}) ) ; /* xor_COMAR_type_3 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U64 ( .common_out(common_out), .a ({new_AGEMA_signal_2055, Midori_rounds_SelectedKey_55_}), .b ({new_AGEMA_signal_2393, Midori_rounds_SR_Inv_Result[43]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2451, Midori_rounds_mul_ResultXORkey[55]}) ) ; /* xor_COMAR_type_3 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U62 ( .common_out(common_out), .a ({new_AGEMA_signal_2053, Midori_rounds_SelectedKey_53_}), .b ({new_AGEMA_signal_2395, Midori_rounds_SR_Inv_Result[41]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2453, Midori_rounds_mul_ResultXORkey[53]}) ) ; /* xor_COMAR_type_3 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U59 ( .common_out(common_out), .a ({new_AGEMA_signal_2051, Midori_rounds_SelectedKey_51_}), .b ({new_AGEMA_signal_2396, Midori_rounds_SR_Inv_Result[3]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2454, Midori_rounds_mul_ResultXORkey[51]}) ) ; /* xor_COMAR_type_3 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U55 ( .common_out(common_out), .a ({new_AGEMA_signal_2049, Midori_rounds_SelectedKey_49_}), .b ({new_AGEMA_signal_2398, Midori_rounds_SR_Inv_Result[1]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2456, Midori_rounds_mul_ResultXORkey[49]}) ) ; /* xor_COMAR_type_3 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U52 ( .common_out(common_out), .a ({new_AGEMA_signal_2047, Midori_rounds_SelectedKey_47_}), .b ({new_AGEMA_signal_2411, Midori_rounds_SR_Inv_Result[7]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2457, Midori_rounds_mul_ResultXORkey[47]}) ) ; /* xor_COMAR_type_3 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U50 ( .common_out(common_out), .a ({new_AGEMA_signal_2045, Midori_rounds_SelectedKey_45_}), .b ({new_AGEMA_signal_2413, Midori_rounds_SR_Inv_Result[5]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2459, Midori_rounds_mul_ResultXORkey[45]}) ) ; /* xor_COMAR_type_3 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U47 ( .common_out(common_out), .a ({new_AGEMA_signal_2043, Midori_rounds_SelectedKey_43_}), .b ({new_AGEMA_signal_2414, Midori_rounds_SR_Inv_Result[47]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2461, Midori_rounds_mul_ResultXORkey[43]}) ) ; /* xor_COMAR_type_3 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U45 ( .common_out(common_out), .a ({new_AGEMA_signal_2041, Midori_rounds_SelectedKey_41_}), .b ({new_AGEMA_signal_2404, Midori_rounds_SR_Inv_Result[45]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2463, Midori_rounds_mul_ResultXORkey[41]}) ) ; /* xor_COMAR_type_3 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U42 ( .common_out(common_out), .a ({new_AGEMA_signal_1651, Midori_rounds_SelectedKey_3_}), .b ({new_AGEMA_signal_2432, Midori_rounds_SR_Inv_Result[31]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2464, Midori_rounds_mul_ResultXORkey[3]}) ) ; /* xor_COMAR_type_3 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U41 ( .common_out(common_out), .a ({new_AGEMA_signal_2039, Midori_rounds_SelectedKey_39_}), .b ({new_AGEMA_signal_2405, Midori_rounds_SR_Inv_Result[19]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2465, Midori_rounds_mul_ResultXORkey[39]}) ) ; /* xor_COMAR_type_3 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U39 ( .common_out(common_out), .a ({new_AGEMA_signal_2037, Midori_rounds_SelectedKey_37_}), .b ({new_AGEMA_signal_2407, Midori_rounds_SR_Inv_Result[17]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2467, Midori_rounds_mul_ResultXORkey[37]}) ) ; /* xor_COMAR_type_3 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U36 ( .common_out(common_out), .a ({new_AGEMA_signal_2035, Midori_rounds_SelectedKey_35_}), .b ({new_AGEMA_signal_2408, Midori_rounds_SR_Inv_Result[59]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2469, Midori_rounds_mul_ResultXORkey[35]}) ) ; /* xor_COMAR_type_3 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U34 ( .common_out(common_out), .a ({new_AGEMA_signal_2033, Midori_rounds_SelectedKey_33_}), .b ({new_AGEMA_signal_2410, Midori_rounds_SR_Inv_Result[57]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2471, Midori_rounds_mul_ResultXORkey[33]}) ) ; /* xor_COMAR_type_3 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U31 ( .common_out(common_out), .a ({new_AGEMA_signal_2031, Midori_rounds_SelectedKey_31_}), .b ({new_AGEMA_signal_2423, Midori_rounds_SR_Inv_Result[27]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2472, Midori_rounds_mul_ResultXORkey[31]}) ) ; /* xor_COMAR_type_3 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U28 ( .common_out(common_out), .a ({new_AGEMA_signal_2029, Midori_rounds_SelectedKey_29_}), .b ({new_AGEMA_signal_2425, Midori_rounds_SR_Inv_Result[25]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2475, Midori_rounds_mul_ResultXORkey[29]}) ) ; /* xor_COMAR_type_3 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U25 ( .common_out(common_out), .a ({new_AGEMA_signal_2027, Midori_rounds_SelectedKey_27_}), .b ({new_AGEMA_signal_2426, Midori_rounds_SR_Inv_Result[51]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2476, Midori_rounds_mul_ResultXORkey[27]}) ) ; /* xor_COMAR_type_3 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U23 ( .common_out(common_out), .a ({new_AGEMA_signal_2026, Midori_rounds_SelectedKey_25_}), .b ({new_AGEMA_signal_2416, Midori_rounds_SR_Inv_Result[49]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2478, Midori_rounds_mul_ResultXORkey[25]}) ) ; /* xor_COMAR_type_3 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U20 ( .common_out(common_out), .a ({new_AGEMA_signal_2024, Midori_rounds_SelectedKey_23_}), .b ({new_AGEMA_signal_2417, Midori_rounds_SR_Inv_Result[15]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2479, Midori_rounds_mul_ResultXORkey[23]}) ) ; /* xor_COMAR_type_3 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U18 ( .common_out(common_out), .a ({new_AGEMA_signal_2022, Midori_rounds_SelectedKey_21_}), .b ({new_AGEMA_signal_2419, Midori_rounds_SR_Inv_Result[13]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2481, Midori_rounds_mul_ResultXORkey[21]}) ) ; /* xor_COMAR_type_3 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U15 ( .common_out(common_out), .a ({new_AGEMA_signal_1649, Midori_rounds_SelectedKey_1_}), .b ({new_AGEMA_signal_2434, Midori_rounds_SR_Inv_Result[29]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2483, Midori_rounds_mul_ResultXORkey[1]}) ) ; /* xor_COMAR_type_3 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U14 ( .common_out(common_out), .a ({new_AGEMA_signal_2020, Midori_rounds_SelectedKey_19_}), .b ({new_AGEMA_signal_2420, Midori_rounds_SR_Inv_Result[39]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2484, Midori_rounds_mul_ResultXORkey[19]}) ) ; /* xor_COMAR_type_3 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U12 ( .common_out(common_out), .a ({new_AGEMA_signal_2018, Midori_rounds_SelectedKey_17_}), .b ({new_AGEMA_signal_2422, Midori_rounds_SR_Inv_Result[37]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2486, Midori_rounds_mul_ResultXORkey[17]}) ) ; /* xor_COMAR_type_3 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U9 ( .common_out(common_out), .a ({new_AGEMA_signal_1659, Midori_rounds_SelectedKey_15_}), .b ({new_AGEMA_signal_2435, Midori_rounds_SR_Inv_Result[35]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2487, Midori_rounds_mul_ResultXORkey[15]}) ) ; /* xor_COMAR_type_3 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U7 ( .common_out(common_out), .a ({new_AGEMA_signal_1657, Midori_rounds_SelectedKey_13_}), .b ({new_AGEMA_signal_2437, Midori_rounds_SR_Inv_Result[33]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2489, Midori_rounds_mul_ResultXORkey[13]}) ) ; /* xor_COMAR_type_3 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U4 ( .common_out(common_out), .a ({new_AGEMA_signal_1656, Midori_rounds_SelectedKey_11_}), .b ({new_AGEMA_signal_2438, Midori_rounds_SR_Inv_Result[11]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2490, Midori_rounds_mul_ResultXORkey[11]}) ) ; /* xor_COMAR_type_3 */
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_roundResult_Reg_SFF_1_MUXInst_U1 ( .s (correct_reset), .b ({new_AGEMA_signal_2506, Midori_rounds_round_Result[1]}), .a ({new_AGEMA_signal_1894, Midori_add_Result_Start[1]}), .c ({new_AGEMA_signal_2565, Midori_rounds_roundResult_Reg_SFF_1_DQ}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_roundResult_Reg_SFF_3_MUXInst_U1 ( .s (correct_reset), .b ({new_AGEMA_signal_2508, Midori_rounds_round_Result[3]}), .a ({new_AGEMA_signal_1850, Midori_add_Result_Start[3]}), .c ({new_AGEMA_signal_2567, Midori_rounds_roundResult_Reg_SFF_3_DQ}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_roundResult_Reg_SFF_5_MUXInst_U1 ( .s (correct_reset), .b ({new_AGEMA_signal_2509, Midori_rounds_round_Result[5]}), .a ({new_AGEMA_signal_1806, Midori_add_Result_Start[5]}), .c ({new_AGEMA_signal_2568, Midori_rounds_roundResult_Reg_SFF_5_DQ}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_roundResult_Reg_SFF_7_MUXInst_U1 ( .s (correct_reset), .b ({new_AGEMA_signal_2511, Midori_rounds_round_Result[7]}), .a ({new_AGEMA_signal_1794, Midori_add_Result_Start[7]}), .c ({new_AGEMA_signal_2570, Midori_rounds_roundResult_Reg_SFF_7_DQ}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_roundResult_Reg_SFF_9_MUXInst_U1 ( .s (correct_reset), .b ({new_AGEMA_signal_2512, Midori_rounds_round_Result[9]}), .a ({new_AGEMA_signal_1790, Midori_add_Result_Start[9]}), .c ({new_AGEMA_signal_2571, Midori_rounds_roundResult_Reg_SFF_9_DQ}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_roundResult_Reg_SFF_11_MUXInst_U1 ( .s (correct_reset), .b ({new_AGEMA_signal_2514, Midori_rounds_round_Result[11]}), .a ({new_AGEMA_signal_1912, Midori_add_Result_Start[11]}), .c ({new_AGEMA_signal_2573, Midori_rounds_roundResult_Reg_SFF_11_DQ}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_roundResult_Reg_SFF_13_MUXInst_U1 ( .s (correct_reset), .b ({new_AGEMA_signal_2515, Midori_rounds_round_Result[13]}), .a ({new_AGEMA_signal_1908, Midori_add_Result_Start[13]}), .c ({new_AGEMA_signal_2574, Midori_rounds_roundResult_Reg_SFF_13_DQ}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_roundResult_Reg_SFF_15_MUXInst_U1 ( .s (correct_reset), .b ({new_AGEMA_signal_2517, Midori_rounds_round_Result[15]}), .a ({new_AGEMA_signal_1904, Midori_add_Result_Start[15]}), .c ({new_AGEMA_signal_2576, Midori_rounds_roundResult_Reg_SFF_15_DQ}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_roundResult_Reg_SFF_17_MUXInst_U1 ( .s (correct_reset), .b ({new_AGEMA_signal_2518, Midori_rounds_round_Result[17]}), .a ({new_AGEMA_signal_1900, Midori_add_Result_Start[17]}), .c ({new_AGEMA_signal_2577, Midori_rounds_roundResult_Reg_SFF_17_DQ}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_roundResult_Reg_SFF_19_MUXInst_U1 ( .s (correct_reset), .b ({new_AGEMA_signal_2520, Midori_rounds_round_Result[19]}), .a ({new_AGEMA_signal_1896, Midori_add_Result_Start[19]}), .c ({new_AGEMA_signal_2579, Midori_rounds_roundResult_Reg_SFF_19_DQ}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_roundResult_Reg_SFF_21_MUXInst_U1 ( .s (correct_reset), .b ({new_AGEMA_signal_2521, Midori_rounds_round_Result[21]}), .a ({new_AGEMA_signal_1890, Midori_add_Result_Start[21]}), .c ({new_AGEMA_signal_2580, Midori_rounds_roundResult_Reg_SFF_21_DQ}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_roundResult_Reg_SFF_23_MUXInst_U1 ( .s (correct_reset), .b ({new_AGEMA_signal_2523, Midori_rounds_round_Result[23]}), .a ({new_AGEMA_signal_1886, Midori_add_Result_Start[23]}), .c ({new_AGEMA_signal_2582, Midori_rounds_roundResult_Reg_SFF_23_DQ}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_roundResult_Reg_SFF_25_MUXInst_U1 ( .s (correct_reset), .b ({new_AGEMA_signal_2524, Midori_rounds_round_Result[25]}), .a ({new_AGEMA_signal_1882, Midori_add_Result_Start[25]}), .c ({new_AGEMA_signal_2583, Midori_rounds_roundResult_Reg_SFF_25_DQ}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_roundResult_Reg_SFF_27_MUXInst_U1 ( .s (correct_reset), .b ({new_AGEMA_signal_2526, Midori_rounds_round_Result[27]}), .a ({new_AGEMA_signal_1878, Midori_add_Result_Start[27]}), .c ({new_AGEMA_signal_2585, Midori_rounds_roundResult_Reg_SFF_27_DQ}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_roundResult_Reg_SFF_29_MUXInst_U1 ( .s (correct_reset), .b ({new_AGEMA_signal_2527, Midori_rounds_round_Result[29]}), .a ({new_AGEMA_signal_1874, Midori_add_Result_Start[29]}), .c ({new_AGEMA_signal_2586, Midori_rounds_roundResult_Reg_SFF_29_DQ}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_roundResult_Reg_SFF_31_MUXInst_U1 ( .s (correct_reset), .b ({new_AGEMA_signal_2529, Midori_rounds_round_Result[31]}), .a ({new_AGEMA_signal_1868, Midori_add_Result_Start[31]}), .c ({new_AGEMA_signal_2588, Midori_rounds_roundResult_Reg_SFF_31_DQ}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_roundResult_Reg_SFF_33_MUXInst_U1 ( .s (correct_reset), .b ({new_AGEMA_signal_2530, Midori_rounds_round_Result[33]}), .a ({new_AGEMA_signal_1864, Midori_add_Result_Start[33]}), .c ({new_AGEMA_signal_2589, Midori_rounds_roundResult_Reg_SFF_33_DQ}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_roundResult_Reg_SFF_35_MUXInst_U1 ( .s (correct_reset), .b ({new_AGEMA_signal_2532, Midori_rounds_round_Result[35]}), .a ({new_AGEMA_signal_1860, Midori_add_Result_Start[35]}), .c ({new_AGEMA_signal_2591, Midori_rounds_roundResult_Reg_SFF_35_DQ}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_roundResult_Reg_SFF_37_MUXInst_U1 ( .s (correct_reset), .b ({new_AGEMA_signal_2533, Midori_rounds_round_Result[37]}), .a ({new_AGEMA_signal_1856, Midori_add_Result_Start[37]}), .c ({new_AGEMA_signal_2592, Midori_rounds_roundResult_Reg_SFF_37_DQ}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_roundResult_Reg_SFF_39_MUXInst_U1 ( .s (correct_reset), .b ({new_AGEMA_signal_2535, Midori_rounds_round_Result[39]}), .a ({new_AGEMA_signal_1852, Midori_add_Result_Start[39]}), .c ({new_AGEMA_signal_2594, Midori_rounds_roundResult_Reg_SFF_39_DQ}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_roundResult_Reg_SFF_41_MUXInst_U1 ( .s (correct_reset), .b ({new_AGEMA_signal_2536, Midori_rounds_round_Result[41]}), .a ({new_AGEMA_signal_1846, Midori_add_Result_Start[41]}), .c ({new_AGEMA_signal_2595, Midori_rounds_roundResult_Reg_SFF_41_DQ}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_roundResult_Reg_SFF_43_MUXInst_U1 ( .s (correct_reset), .b ({new_AGEMA_signal_2538, Midori_rounds_round_Result[43]}), .a ({new_AGEMA_signal_1842, Midori_add_Result_Start[43]}), .c ({new_AGEMA_signal_2597, Midori_rounds_roundResult_Reg_SFF_43_DQ}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_roundResult_Reg_SFF_45_MUXInst_U1 ( .s (correct_reset), .b ({new_AGEMA_signal_2539, Midori_rounds_round_Result[45]}), .a ({new_AGEMA_signal_1838, Midori_add_Result_Start[45]}), .c ({new_AGEMA_signal_2598, Midori_rounds_roundResult_Reg_SFF_45_DQ}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_roundResult_Reg_SFF_47_MUXInst_U1 ( .s (correct_reset), .b ({new_AGEMA_signal_2541, Midori_rounds_round_Result[47]}), .a ({new_AGEMA_signal_1834, Midori_add_Result_Start[47]}), .c ({new_AGEMA_signal_2600, Midori_rounds_roundResult_Reg_SFF_47_DQ}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_roundResult_Reg_SFF_49_MUXInst_U1 ( .s (correct_reset), .b ({new_AGEMA_signal_2542, Midori_rounds_round_Result[49]}), .a ({new_AGEMA_signal_1830, Midori_add_Result_Start[49]}), .c ({new_AGEMA_signal_2601, Midori_rounds_roundResult_Reg_SFF_49_DQ}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_roundResult_Reg_SFF_51_MUXInst_U1 ( .s (correct_reset), .b ({new_AGEMA_signal_2544, Midori_rounds_round_Result[51]}), .a ({new_AGEMA_signal_1824, Midori_add_Result_Start[51]}), .c ({new_AGEMA_signal_2603, Midori_rounds_roundResult_Reg_SFF_51_DQ}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_roundResult_Reg_SFF_53_MUXInst_U1 ( .s (correct_reset), .b ({new_AGEMA_signal_2545, Midori_rounds_round_Result[53]}), .a ({new_AGEMA_signal_1820, Midori_add_Result_Start[53]}), .c ({new_AGEMA_signal_2604, Midori_rounds_roundResult_Reg_SFF_53_DQ}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_roundResult_Reg_SFF_55_MUXInst_U1 ( .s (correct_reset), .b ({new_AGEMA_signal_2547, Midori_rounds_round_Result[55]}), .a ({new_AGEMA_signal_1816, Midori_add_Result_Start[55]}), .c ({new_AGEMA_signal_2606, Midori_rounds_roundResult_Reg_SFF_55_DQ}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_roundResult_Reg_SFF_57_MUXInst_U1 ( .s (correct_reset), .b ({new_AGEMA_signal_2548, Midori_rounds_round_Result[57]}), .a ({new_AGEMA_signal_1812, Midori_add_Result_Start[57]}), .c ({new_AGEMA_signal_2607, Midori_rounds_roundResult_Reg_SFF_57_DQ}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_roundResult_Reg_SFF_59_MUXInst_U1 ( .s (correct_reset), .b ({new_AGEMA_signal_2550, Midori_rounds_round_Result[59]}), .a ({new_AGEMA_signal_1808, Midori_add_Result_Start[59]}), .c ({new_AGEMA_signal_2609, Midori_rounds_roundResult_Reg_SFF_59_DQ}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_roundResult_Reg_SFF_61_MUXInst_U1 ( .s (correct_reset), .b ({new_AGEMA_signal_2551, Midori_rounds_round_Result[61]}), .a ({new_AGEMA_signal_1802, Midori_add_Result_Start[61]}), .c ({new_AGEMA_signal_2610, Midori_rounds_roundResult_Reg_SFF_61_DQ}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_roundResult_Reg_SFF_63_MUXInst_U1 ( .s (correct_reset), .b ({new_AGEMA_signal_2553, Midori_rounds_round_Result[63]}), .a ({new_AGEMA_signal_1798, Midori_add_Result_Start[63]}), .c ({new_AGEMA_signal_2612, Midori_rounds_roundResult_Reg_SFF_63_DQ}) ) ;
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC1_U23 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[60]}), .b ({common_xor[1], Midori_rounds_mul_MC1_n7}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2668, Midori_rounds_SR_Inv_Result[20]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC1_U21 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[50]}), .b ({common_xor[1], Midori_rounds_mul_MC1_n5}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2394, Midori_rounds_SR_Inv_Result[42]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC1_U19 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[48]}), .b ({common_xor[1], Midori_rounds_mul_MC1_n3}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2661, Midori_rounds_SR_Inv_Result[40]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC1_U16 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[54]}), .b ({common_xor[1], Midori_rounds_mul_MC1_n5}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2397, Midori_rounds_SR_Inv_Result[2]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC1_U11 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[58]}), .b ({common_xor[1], Midori_rounds_mul_MC1_n1}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2400, Midori_rounds_SR_Inv_Result[62]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC1_U8 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[56]}), .b ({common_xor[1], Midori_rounds_mul_MC1_n7}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2669, Midori_rounds_SR_Inv_Result[60]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC1_U4 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[62]}), .b ({common_xor[1], Midori_rounds_mul_MC1_n1}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2403, Midori_rounds_SR_Inv_Result[22]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC1_U2 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[52]}), .b ({common_xor[1], Midori_rounds_mul_MC1_n3}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2638, Midori_rounds_SR_Inv_Result[0]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC2_U23 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[44]}), .b ({common_xor[1], Midori_rounds_mul_MC2_n7}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2639, Midori_rounds_SR_Inv_Result[44]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC2_U21 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[34]}), .b ({common_xor[1], Midori_rounds_mul_MC2_n5}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2406, Midori_rounds_SR_Inv_Result[18]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC2_U19 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[32]}), .b ({common_xor[1], Midori_rounds_mul_MC2_n3}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2640, Midori_rounds_SR_Inv_Result[16]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC2_U16 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[38]}), .b ({common_xor[1], Midori_rounds_mul_MC2_n5}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2409, Midori_rounds_SR_Inv_Result[58]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC2_U11 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[42]}), .b ({common_xor[1], Midori_rounds_mul_MC2_n1}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2412, Midori_rounds_SR_Inv_Result[6]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC2_U8 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[40]}), .b ({common_xor[1], Midori_rounds_mul_MC2_n7}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2641, Midori_rounds_SR_Inv_Result[4]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC2_U4 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[46]}), .b ({common_xor[1], Midori_rounds_mul_MC2_n1}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2415, Midori_rounds_SR_Inv_Result[46]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC2_U2 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[36]}), .b ({common_xor[1], Midori_rounds_mul_MC2_n3}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2642, Midori_rounds_SR_Inv_Result[56]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC3_U23 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[28]}), .b ({common_xor[1], Midori_rounds_mul_MC3_n7}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2643, Midori_rounds_SR_Inv_Result[48]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC3_U21 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[18]}), .b ({common_xor[1], Midori_rounds_mul_MC3_n5}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2418, Midori_rounds_SR_Inv_Result[14]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC3_U19 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[16]}), .b ({common_xor[1], Midori_rounds_mul_MC3_n3}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2663, Midori_rounds_SR_Inv_Result[12]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC3_U16 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[22]}), .b ({common_xor[1], Midori_rounds_mul_MC3_n5}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2421, Midori_rounds_SR_Inv_Result[38]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC3_U11 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[26]}), .b ({common_xor[1], Midori_rounds_mul_MC3_n1}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2424, Midori_rounds_SR_Inv_Result[26]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC3_U8 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[24]}), .b ({common_xor[1], Midori_rounds_mul_MC3_n7}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2644, Midori_rounds_SR_Inv_Result[24]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC3_U4 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[30]}), .b ({common_xor[1], Midori_rounds_mul_MC3_n1}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2427, Midori_rounds_SR_Inv_Result[50]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC3_U2 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[20]}), .b ({common_xor[1], Midori_rounds_mul_MC3_n3}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2664, Midori_rounds_SR_Inv_Result[36]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC4_U23 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[12]}), .b ({common_xor[1], Midori_rounds_mul_MC4_n7}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2646, Midori_rounds_SR_Inv_Result[8]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC4_U21 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[2]}), .b ({common_xor[1], Midori_rounds_mul_MC4_n5}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2430, Midori_rounds_SR_Inv_Result[54]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC4_U19 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[0]}), .b ({common_xor[1], Midori_rounds_mul_MC4_n3}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2647, Midori_rounds_SR_Inv_Result[52]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC4_U16 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[6]}), .b ({common_xor[1], Midori_rounds_mul_MC4_n5}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2433, Midori_rounds_SR_Inv_Result[30]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC4_U11 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[10]}), .b ({common_xor[1], Midori_rounds_mul_MC4_n1}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2436, Midori_rounds_SR_Inv_Result[34]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC4_U8 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[8]}), .b ({common_xor[1], Midori_rounds_mul_MC4_n7}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2648, Midori_rounds_SR_Inv_Result[32]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC4_U4 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[14]}), .b ({common_xor[1], Midori_rounds_mul_MC4_n1}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2439, Midori_rounds_SR_Inv_Result[10]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_mul_MC4_U2 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_mul_input[4]}), .b ({common_xor[1], Midori_rounds_mul_MC4_n3}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2649, Midori_rounds_SR_Inv_Result[28]}) ) ; /* xnor_COMAR_type_1 */
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_Res_Inst_mux_inst_1_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2483, Midori_rounds_mul_ResultXORkey[1]}), .a ({new_AGEMA_signal_2398, Midori_rounds_SR_Inv_Result[1]}), .c ({new_AGEMA_signal_2506, Midori_rounds_round_Result[1]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_Res_Inst_mux_inst_3_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2464, Midori_rounds_mul_ResultXORkey[3]}), .a ({new_AGEMA_signal_2396, Midori_rounds_SR_Inv_Result[3]}), .c ({new_AGEMA_signal_2508, Midori_rounds_round_Result[3]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_Res_Inst_mux_inst_5_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2447, Midori_rounds_mul_ResultXORkey[5]}), .a ({new_AGEMA_signal_2413, Midori_rounds_SR_Inv_Result[5]}), .c ({new_AGEMA_signal_2509, Midori_rounds_round_Result[5]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_Res_Inst_mux_inst_7_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2442, Midori_rounds_mul_ResultXORkey[7]}), .a ({new_AGEMA_signal_2411, Midori_rounds_SR_Inv_Result[7]}), .c ({new_AGEMA_signal_2511, Midori_rounds_round_Result[7]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_Res_Inst_mux_inst_9_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2440, Midori_rounds_mul_ResultXORkey[9]}), .a ({new_AGEMA_signal_2428, Midori_rounds_SR_Inv_Result[9]}), .c ({new_AGEMA_signal_2512, Midori_rounds_round_Result[9]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_Res_Inst_mux_inst_11_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2490, Midori_rounds_mul_ResultXORkey[11]}), .a ({new_AGEMA_signal_2438, Midori_rounds_SR_Inv_Result[11]}), .c ({new_AGEMA_signal_2514, Midori_rounds_round_Result[11]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_Res_Inst_mux_inst_13_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2489, Midori_rounds_mul_ResultXORkey[13]}), .a ({new_AGEMA_signal_2419, Midori_rounds_SR_Inv_Result[13]}), .c ({new_AGEMA_signal_2515, Midori_rounds_round_Result[13]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_Res_Inst_mux_inst_15_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2487, Midori_rounds_mul_ResultXORkey[15]}), .a ({new_AGEMA_signal_2417, Midori_rounds_SR_Inv_Result[15]}), .c ({new_AGEMA_signal_2517, Midori_rounds_round_Result[15]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_Res_Inst_mux_inst_17_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2486, Midori_rounds_mul_ResultXORkey[17]}), .a ({new_AGEMA_signal_2407, Midori_rounds_SR_Inv_Result[17]}), .c ({new_AGEMA_signal_2518, Midori_rounds_round_Result[17]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_Res_Inst_mux_inst_19_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2484, Midori_rounds_mul_ResultXORkey[19]}), .a ({new_AGEMA_signal_2405, Midori_rounds_SR_Inv_Result[19]}), .c ({new_AGEMA_signal_2520, Midori_rounds_round_Result[19]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_Res_Inst_mux_inst_21_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2481, Midori_rounds_mul_ResultXORkey[21]}), .a ({new_AGEMA_signal_2392, Midori_rounds_SR_Inv_Result[21]}), .c ({new_AGEMA_signal_2521, Midori_rounds_round_Result[21]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_Res_Inst_mux_inst_23_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2479, Midori_rounds_mul_ResultXORkey[23]}), .a ({new_AGEMA_signal_2402, Midori_rounds_SR_Inv_Result[23]}), .c ({new_AGEMA_signal_2523, Midori_rounds_round_Result[23]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_Res_Inst_mux_inst_25_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2478, Midori_rounds_mul_ResultXORkey[25]}), .a ({new_AGEMA_signal_2425, Midori_rounds_SR_Inv_Result[25]}), .c ({new_AGEMA_signal_2524, Midori_rounds_round_Result[25]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_Res_Inst_mux_inst_27_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2476, Midori_rounds_mul_ResultXORkey[27]}), .a ({new_AGEMA_signal_2423, Midori_rounds_SR_Inv_Result[27]}), .c ({new_AGEMA_signal_2526, Midori_rounds_round_Result[27]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_Res_Inst_mux_inst_29_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2475, Midori_rounds_mul_ResultXORkey[29]}), .a ({new_AGEMA_signal_2434, Midori_rounds_SR_Inv_Result[29]}), .c ({new_AGEMA_signal_2527, Midori_rounds_round_Result[29]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_Res_Inst_mux_inst_31_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2472, Midori_rounds_mul_ResultXORkey[31]}), .a ({new_AGEMA_signal_2432, Midori_rounds_SR_Inv_Result[31]}), .c ({new_AGEMA_signal_2529, Midori_rounds_round_Result[31]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_Res_Inst_mux_inst_33_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2471, Midori_rounds_mul_ResultXORkey[33]}), .a ({new_AGEMA_signal_2437, Midori_rounds_SR_Inv_Result[33]}), .c ({new_AGEMA_signal_2530, Midori_rounds_round_Result[33]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_Res_Inst_mux_inst_35_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2469, Midori_rounds_mul_ResultXORkey[35]}), .a ({new_AGEMA_signal_2435, Midori_rounds_SR_Inv_Result[35]}), .c ({new_AGEMA_signal_2532, Midori_rounds_round_Result[35]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_Res_Inst_mux_inst_37_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2467, Midori_rounds_mul_ResultXORkey[37]}), .a ({new_AGEMA_signal_2422, Midori_rounds_SR_Inv_Result[37]}), .c ({new_AGEMA_signal_2533, Midori_rounds_round_Result[37]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_Res_Inst_mux_inst_39_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2465, Midori_rounds_mul_ResultXORkey[39]}), .a ({new_AGEMA_signal_2420, Midori_rounds_SR_Inv_Result[39]}), .c ({new_AGEMA_signal_2535, Midori_rounds_round_Result[39]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_Res_Inst_mux_inst_41_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2463, Midori_rounds_mul_ResultXORkey[41]}), .a ({new_AGEMA_signal_2395, Midori_rounds_SR_Inv_Result[41]}), .c ({new_AGEMA_signal_2536, Midori_rounds_round_Result[41]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_Res_Inst_mux_inst_43_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2461, Midori_rounds_mul_ResultXORkey[43]}), .a ({new_AGEMA_signal_2393, Midori_rounds_SR_Inv_Result[43]}), .c ({new_AGEMA_signal_2538, Midori_rounds_round_Result[43]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_Res_Inst_mux_inst_45_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2459, Midori_rounds_mul_ResultXORkey[45]}), .a ({new_AGEMA_signal_2404, Midori_rounds_SR_Inv_Result[45]}), .c ({new_AGEMA_signal_2539, Midori_rounds_round_Result[45]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_Res_Inst_mux_inst_47_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2457, Midori_rounds_mul_ResultXORkey[47]}), .a ({new_AGEMA_signal_2414, Midori_rounds_SR_Inv_Result[47]}), .c ({new_AGEMA_signal_2541, Midori_rounds_round_Result[47]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_Res_Inst_mux_inst_49_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2456, Midori_rounds_mul_ResultXORkey[49]}), .a ({new_AGEMA_signal_2416, Midori_rounds_SR_Inv_Result[49]}), .c ({new_AGEMA_signal_2542, Midori_rounds_round_Result[49]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_Res_Inst_mux_inst_51_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2454, Midori_rounds_mul_ResultXORkey[51]}), .a ({new_AGEMA_signal_2426, Midori_rounds_SR_Inv_Result[51]}), .c ({new_AGEMA_signal_2544, Midori_rounds_round_Result[51]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_Res_Inst_mux_inst_53_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2453, Midori_rounds_mul_ResultXORkey[53]}), .a ({new_AGEMA_signal_2431, Midori_rounds_SR_Inv_Result[53]}), .c ({new_AGEMA_signal_2545, Midori_rounds_round_Result[53]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_Res_Inst_mux_inst_55_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2451, Midori_rounds_mul_ResultXORkey[55]}), .a ({new_AGEMA_signal_2429, Midori_rounds_SR_Inv_Result[55]}), .c ({new_AGEMA_signal_2547, Midori_rounds_round_Result[55]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_Res_Inst_mux_inst_57_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2450, Midori_rounds_mul_ResultXORkey[57]}), .a ({new_AGEMA_signal_2410, Midori_rounds_SR_Inv_Result[57]}), .c ({new_AGEMA_signal_2548, Midori_rounds_round_Result[57]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_Res_Inst_mux_inst_59_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2448, Midori_rounds_mul_ResultXORkey[59]}), .a ({new_AGEMA_signal_2408, Midori_rounds_SR_Inv_Result[59]}), .c ({new_AGEMA_signal_2550, Midori_rounds_round_Result[59]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_Res_Inst_mux_inst_61_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2446, Midori_rounds_mul_ResultXORkey[61]}), .a ({new_AGEMA_signal_2401, Midori_rounds_SR_Inv_Result[61]}), .c ({new_AGEMA_signal_2551, Midori_rounds_round_Result[61]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_Res_Inst_mux_inst_63_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2444, Midori_rounds_mul_ResultXORkey[63]}), .a ({new_AGEMA_signal_2399, Midori_rounds_SR_Inv_Result[63]}), .c ({new_AGEMA_signal_2553, Midori_rounds_round_Result[63]}) ) ;

    /* cells in depth 15 */

    /* cells in depth 16 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_U79 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_SR_Inv_Result[8]}), .b ({common_xor[1], Midori_rounds_n16}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2650, Midori_rounds_mul_ResultXORkey[8]}) ) ; /* xnor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U76 ( .common_out(common_out), .a ({new_AGEMA_signal_2014, Midori_rounds_SelectedKey_6_}), .b ({new_AGEMA_signal_2430, Midori_rounds_SR_Inv_Result[54]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2443, Midori_rounds_mul_ResultXORkey[6]}) ) ; /* xor_COMAR_type_3 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U74 ( .common_out(common_out), .a ({new_AGEMA_signal_2062, Midori_rounds_SelectedKey_62_}), .b ({new_AGEMA_signal_2400, Midori_rounds_SR_Inv_Result[62]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2445, Midori_rounds_mul_ResultXORkey[62]}) ) ; /* xor_COMAR_type_3 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_U72 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_SR_Inv_Result[60]}), .b ({common_xor[1], Midori_rounds_n15}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2681, Midori_rounds_mul_ResultXORkey[60]}) ) ; /* xnor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U68 ( .common_out(common_out), .a ({new_AGEMA_signal_2058, Midori_rounds_SelectedKey_58_}), .b ({new_AGEMA_signal_2403, Midori_rounds_SR_Inv_Result[22]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2449, Midori_rounds_mul_ResultXORkey[58]}) ) ; /* xor_COMAR_type_3 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_U66 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_SR_Inv_Result[20]}), .b ({common_xor[1], Midori_rounds_n14}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2682, Midori_rounds_mul_ResultXORkey[56]}) ) ; /* xnor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U63 ( .common_out(common_out), .a ({new_AGEMA_signal_2054, Midori_rounds_SelectedKey_54_}), .b ({new_AGEMA_signal_2394, Midori_rounds_SR_Inv_Result[42]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2452, Midori_rounds_mul_ResultXORkey[54]}) ) ; /* xor_COMAR_type_3 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_U61 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_SR_Inv_Result[40]}), .b ({common_xor[1], Midori_rounds_n13}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2665, Midori_rounds_mul_ResultXORkey[52]}) ) ; /* xnor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U58 ( .common_out(common_out), .a ({new_AGEMA_signal_2050, Midori_rounds_SelectedKey_50_}), .b ({new_AGEMA_signal_2397, Midori_rounds_SR_Inv_Result[2]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2455, Midori_rounds_mul_ResultXORkey[50]}) ) ; /* xor_COMAR_type_3 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_U57 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_SR_Inv_Result[52]}), .b ({common_xor[1], Midori_rounds_n12}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2651, Midori_rounds_mul_ResultXORkey[4]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_U54 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_SR_Inv_Result[0]}), .b ({common_xor[1], Midori_rounds_n11}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2652, Midori_rounds_mul_ResultXORkey[48]}) ) ; /* xnor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U51 ( .common_out(common_out), .a ({new_AGEMA_signal_2046, Midori_rounds_SelectedKey_46_}), .b ({new_AGEMA_signal_2412, Midori_rounds_SR_Inv_Result[6]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2458, Midori_rounds_mul_ResultXORkey[46]}) ) ; /* xor_COMAR_type_3 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_U49 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_SR_Inv_Result[4]}), .b ({common_xor[1], Midori_rounds_n10}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2653, Midori_rounds_mul_ResultXORkey[44]}) ) ; /* xnor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U46 ( .common_out(common_out), .a ({new_AGEMA_signal_2042, Midori_rounds_SelectedKey_42_}), .b ({new_AGEMA_signal_2415, Midori_rounds_SR_Inv_Result[46]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2462, Midori_rounds_mul_ResultXORkey[42]}) ) ; /* xor_COMAR_type_3 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_U44 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_SR_Inv_Result[44]}), .b ({common_xor[1], Midori_rounds_n9}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2654, Midori_rounds_mul_ResultXORkey[40]}) ) ; /* xnor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U40 ( .common_out(common_out), .a ({new_AGEMA_signal_2038, Midori_rounds_SelectedKey_38_}), .b ({new_AGEMA_signal_2406, Midori_rounds_SR_Inv_Result[18]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2466, Midori_rounds_mul_ResultXORkey[38]}) ) ; /* xor_COMAR_type_3 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_U38 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_SR_Inv_Result[16]}), .b ({common_xor[1], Midori_rounds_n8}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2655, Midori_rounds_mul_ResultXORkey[36]}) ) ; /* xnor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U35 ( .common_out(common_out), .a ({new_AGEMA_signal_2034, Midori_rounds_SelectedKey_34_}), .b ({new_AGEMA_signal_2409, Midori_rounds_SR_Inv_Result[58]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2470, Midori_rounds_mul_ResultXORkey[34]}) ) ; /* xor_COMAR_type_3 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_U33 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_SR_Inv_Result[56]}), .b ({common_xor[1], Midori_rounds_n7}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2656, Midori_rounds_mul_ResultXORkey[32]}) ) ; /* xnor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U30 ( .common_out(common_out), .a ({new_AGEMA_signal_2030, Midori_rounds_SelectedKey_30_}), .b ({new_AGEMA_signal_2424, Midori_rounds_SR_Inv_Result[26]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2473, Midori_rounds_mul_ResultXORkey[30]}) ) ; /* xor_COMAR_type_3 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U29 ( .common_out(common_out), .a ({new_AGEMA_signal_1650, Midori_rounds_SelectedKey_2_}), .b ({new_AGEMA_signal_2433, Midori_rounds_SR_Inv_Result[30]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2474, Midori_rounds_mul_ResultXORkey[2]}) ) ; /* xor_COMAR_type_3 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_U27 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_SR_Inv_Result[24]}), .b ({common_xor[1], Midori_rounds_n6}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2657, Midori_rounds_mul_ResultXORkey[28]}) ) ; /* xnor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U24 ( .common_out(common_out), .a ({new_AGEMA_signal_1660, Midori_rounds_SelectedKey_26_}), .b ({new_AGEMA_signal_2427, Midori_rounds_SR_Inv_Result[50]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2477, Midori_rounds_mul_ResultXORkey[26]}) ) ; /* xor_COMAR_type_3 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_U22 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_SR_Inv_Result[48]}), .b ({common_xor[1], Midori_rounds_n5}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2658, Midori_rounds_mul_ResultXORkey[24]}) ) ; /* xnor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U19 ( .common_out(common_out), .a ({new_AGEMA_signal_2023, Midori_rounds_SelectedKey_22_}), .b ({new_AGEMA_signal_2418, Midori_rounds_SR_Inv_Result[14]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2480, Midori_rounds_mul_ResultXORkey[22]}) ) ; /* xor_COMAR_type_3 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_U17 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_SR_Inv_Result[12]}), .b ({common_xor[1], Midori_rounds_n4}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2666, Midori_rounds_mul_ResultXORkey[20]}) ) ; /* xnor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U13 ( .common_out(common_out), .a ({new_AGEMA_signal_2019, Midori_rounds_SelectedKey_18_}), .b ({new_AGEMA_signal_2421, Midori_rounds_SR_Inv_Result[38]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2485, Midori_rounds_mul_ResultXORkey[18]}) ) ; /* xor_COMAR_type_3 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_U11 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_SR_Inv_Result[36]}), .b ({common_xor[1], Midori_rounds_n3}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2667, Midori_rounds_mul_ResultXORkey[16]}) ) ; /* xnor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U8 ( .common_out(common_out), .a ({new_AGEMA_signal_1658, Midori_rounds_SelectedKey_14_}), .b ({new_AGEMA_signal_2436, Midori_rounds_SR_Inv_Result[34]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2488, Midori_rounds_mul_ResultXORkey[14]}) ) ; /* xor_COMAR_type_3 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_U6 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_SR_Inv_Result[32]}), .b ({common_xor[1], Midori_rounds_n2}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2659, Midori_rounds_mul_ResultXORkey[12]}) ) ; /* xnor_COMAR_type_1 */
    xor_COMAR #(.security_order(1), .pipeline(0)) Midori_rounds_U3 ( .common_out(common_out), .a ({new_AGEMA_signal_1655, Midori_rounds_SelectedKey_10_}), .b ({new_AGEMA_signal_2439, Midori_rounds_SR_Inv_Result[10]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2491, Midori_rounds_mul_ResultXORkey[10]}) ) ; /* xor_COMAR_type_3 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_U2 ( .common_out(common_out), .a ({common_xor[0], Midori_rounds_SR_Inv_Result[28]}), .b ({common_xor[1], Midori_rounds_n1}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_2660, Midori_rounds_mul_ResultXORkey[0]}) ) ; /* xnor_COMAR_type_1 */
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_roundResult_Reg_SFF_0_MUXInst_U1 ( .s (correct_reset), .b ({new_AGEMA_signal_2670, Midori_rounds_round_Result[0]}), .a ({new_AGEMA_signal_1916, Midori_add_Result_Start[0]}), .c ({new_AGEMA_signal_2683, Midori_rounds_roundResult_Reg_SFF_0_DQ}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_roundResult_Reg_SFF_2_MUXInst_U1 ( .s (correct_reset), .b ({new_AGEMA_signal_2507, Midori_rounds_round_Result[2]}), .a ({new_AGEMA_signal_1872, Midori_add_Result_Start[2]}), .c ({new_AGEMA_signal_2566, Midori_rounds_roundResult_Reg_SFF_2_DQ}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_roundResult_Reg_SFF_4_MUXInst_U1 ( .s (correct_reset), .b ({new_AGEMA_signal_2671, Midori_rounds_round_Result[4]}), .a ({new_AGEMA_signal_1828, Midori_add_Result_Start[4]}), .c ({new_AGEMA_signal_2684, Midori_rounds_roundResult_Reg_SFF_4_DQ}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_roundResult_Reg_SFF_6_MUXInst_U1 ( .s (correct_reset), .b ({new_AGEMA_signal_2510, Midori_rounds_round_Result[6]}), .a ({new_AGEMA_signal_1796, Midori_add_Result_Start[6]}), .c ({new_AGEMA_signal_2569, Midori_rounds_roundResult_Reg_SFF_6_DQ}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_roundResult_Reg_SFF_8_MUXInst_U1 ( .s (correct_reset), .b ({new_AGEMA_signal_2672, Midori_rounds_round_Result[8]}), .a ({new_AGEMA_signal_1792, Midori_add_Result_Start[8]}), .c ({new_AGEMA_signal_2685, Midori_rounds_roundResult_Reg_SFF_8_DQ}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_roundResult_Reg_SFF_10_MUXInst_U1 ( .s (correct_reset), .b ({new_AGEMA_signal_2513, Midori_rounds_round_Result[10]}), .a ({new_AGEMA_signal_1914, Midori_add_Result_Start[10]}), .c ({new_AGEMA_signal_2572, Midori_rounds_roundResult_Reg_SFF_10_DQ}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_roundResult_Reg_SFF_12_MUXInst_U1 ( .s (correct_reset), .b ({new_AGEMA_signal_2673, Midori_rounds_round_Result[12]}), .a ({new_AGEMA_signal_1910, Midori_add_Result_Start[12]}), .c ({new_AGEMA_signal_2686, Midori_rounds_roundResult_Reg_SFF_12_DQ}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_roundResult_Reg_SFF_14_MUXInst_U1 ( .s (correct_reset), .b ({new_AGEMA_signal_2516, Midori_rounds_round_Result[14]}), .a ({new_AGEMA_signal_1906, Midori_add_Result_Start[14]}), .c ({new_AGEMA_signal_2575, Midori_rounds_roundResult_Reg_SFF_14_DQ}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_roundResult_Reg_SFF_16_MUXInst_U1 ( .s (correct_reset), .b ({new_AGEMA_signal_2694, Midori_rounds_round_Result[16]}), .a ({new_AGEMA_signal_1902, Midori_add_Result_Start[16]}), .c ({new_AGEMA_signal_2697, Midori_rounds_roundResult_Reg_SFF_16_DQ}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_roundResult_Reg_SFF_18_MUXInst_U1 ( .s (correct_reset), .b ({new_AGEMA_signal_2519, Midori_rounds_round_Result[18]}), .a ({new_AGEMA_signal_1898, Midori_add_Result_Start[18]}), .c ({new_AGEMA_signal_2578, Midori_rounds_roundResult_Reg_SFF_18_DQ}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_roundResult_Reg_SFF_20_MUXInst_U1 ( .s (correct_reset), .b ({new_AGEMA_signal_2695, Midori_rounds_round_Result[20]}), .a ({new_AGEMA_signal_1892, Midori_add_Result_Start[20]}), .c ({new_AGEMA_signal_2698, Midori_rounds_roundResult_Reg_SFF_20_DQ}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_roundResult_Reg_SFF_22_MUXInst_U1 ( .s (correct_reset), .b ({new_AGEMA_signal_2522, Midori_rounds_round_Result[22]}), .a ({new_AGEMA_signal_1888, Midori_add_Result_Start[22]}), .c ({new_AGEMA_signal_2581, Midori_rounds_roundResult_Reg_SFF_22_DQ}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_roundResult_Reg_SFF_24_MUXInst_U1 ( .s (correct_reset), .b ({new_AGEMA_signal_2674, Midori_rounds_round_Result[24]}), .a ({new_AGEMA_signal_1884, Midori_add_Result_Start[24]}), .c ({new_AGEMA_signal_2687, Midori_rounds_roundResult_Reg_SFF_24_DQ}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_roundResult_Reg_SFF_26_MUXInst_U1 ( .s (correct_reset), .b ({new_AGEMA_signal_2525, Midori_rounds_round_Result[26]}), .a ({new_AGEMA_signal_1880, Midori_add_Result_Start[26]}), .c ({new_AGEMA_signal_2584, Midori_rounds_roundResult_Reg_SFF_26_DQ}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_roundResult_Reg_SFF_28_MUXInst_U1 ( .s (correct_reset), .b ({new_AGEMA_signal_2675, Midori_rounds_round_Result[28]}), .a ({new_AGEMA_signal_1876, Midori_add_Result_Start[28]}), .c ({new_AGEMA_signal_2688, Midori_rounds_roundResult_Reg_SFF_28_DQ}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_roundResult_Reg_SFF_30_MUXInst_U1 ( .s (correct_reset), .b ({new_AGEMA_signal_2528, Midori_rounds_round_Result[30]}), .a ({new_AGEMA_signal_1870, Midori_add_Result_Start[30]}), .c ({new_AGEMA_signal_2587, Midori_rounds_roundResult_Reg_SFF_30_DQ}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_roundResult_Reg_SFF_32_MUXInst_U1 ( .s (correct_reset), .b ({new_AGEMA_signal_2676, Midori_rounds_round_Result[32]}), .a ({new_AGEMA_signal_1866, Midori_add_Result_Start[32]}), .c ({new_AGEMA_signal_2689, Midori_rounds_roundResult_Reg_SFF_32_DQ}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_roundResult_Reg_SFF_34_MUXInst_U1 ( .s (correct_reset), .b ({new_AGEMA_signal_2531, Midori_rounds_round_Result[34]}), .a ({new_AGEMA_signal_1862, Midori_add_Result_Start[34]}), .c ({new_AGEMA_signal_2590, Midori_rounds_roundResult_Reg_SFF_34_DQ}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_roundResult_Reg_SFF_36_MUXInst_U1 ( .s (correct_reset), .b ({new_AGEMA_signal_2677, Midori_rounds_round_Result[36]}), .a ({new_AGEMA_signal_1858, Midori_add_Result_Start[36]}), .c ({new_AGEMA_signal_2690, Midori_rounds_roundResult_Reg_SFF_36_DQ}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_roundResult_Reg_SFF_38_MUXInst_U1 ( .s (correct_reset), .b ({new_AGEMA_signal_2534, Midori_rounds_round_Result[38]}), .a ({new_AGEMA_signal_1854, Midori_add_Result_Start[38]}), .c ({new_AGEMA_signal_2593, Midori_rounds_roundResult_Reg_SFF_38_DQ}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_roundResult_Reg_SFF_40_MUXInst_U1 ( .s (correct_reset), .b ({new_AGEMA_signal_2678, Midori_rounds_round_Result[40]}), .a ({new_AGEMA_signal_1848, Midori_add_Result_Start[40]}), .c ({new_AGEMA_signal_2691, Midori_rounds_roundResult_Reg_SFF_40_DQ}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_roundResult_Reg_SFF_42_MUXInst_U1 ( .s (correct_reset), .b ({new_AGEMA_signal_2537, Midori_rounds_round_Result[42]}), .a ({new_AGEMA_signal_1844, Midori_add_Result_Start[42]}), .c ({new_AGEMA_signal_2596, Midori_rounds_roundResult_Reg_SFF_42_DQ}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_roundResult_Reg_SFF_44_MUXInst_U1 ( .s (correct_reset), .b ({new_AGEMA_signal_2679, Midori_rounds_round_Result[44]}), .a ({new_AGEMA_signal_1840, Midori_add_Result_Start[44]}), .c ({new_AGEMA_signal_2692, Midori_rounds_roundResult_Reg_SFF_44_DQ}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_roundResult_Reg_SFF_46_MUXInst_U1 ( .s (correct_reset), .b ({new_AGEMA_signal_2540, Midori_rounds_round_Result[46]}), .a ({new_AGEMA_signal_1836, Midori_add_Result_Start[46]}), .c ({new_AGEMA_signal_2599, Midori_rounds_roundResult_Reg_SFF_46_DQ}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_roundResult_Reg_SFF_48_MUXInst_U1 ( .s (correct_reset), .b ({new_AGEMA_signal_2680, Midori_rounds_round_Result[48]}), .a ({new_AGEMA_signal_1832, Midori_add_Result_Start[48]}), .c ({new_AGEMA_signal_2693, Midori_rounds_roundResult_Reg_SFF_48_DQ}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_roundResult_Reg_SFF_50_MUXInst_U1 ( .s (correct_reset), .b ({new_AGEMA_signal_2543, Midori_rounds_round_Result[50]}), .a ({new_AGEMA_signal_1826, Midori_add_Result_Start[50]}), .c ({new_AGEMA_signal_2602, Midori_rounds_roundResult_Reg_SFF_50_DQ}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_roundResult_Reg_SFF_52_MUXInst_U1 ( .s (correct_reset), .b ({new_AGEMA_signal_2696, Midori_rounds_round_Result[52]}), .a ({new_AGEMA_signal_1822, Midori_add_Result_Start[52]}), .c ({new_AGEMA_signal_2699, Midori_rounds_roundResult_Reg_SFF_52_DQ}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_roundResult_Reg_SFF_54_MUXInst_U1 ( .s (correct_reset), .b ({new_AGEMA_signal_2546, Midori_rounds_round_Result[54]}), .a ({new_AGEMA_signal_1818, Midori_add_Result_Start[54]}), .c ({new_AGEMA_signal_2605, Midori_rounds_roundResult_Reg_SFF_54_DQ}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_roundResult_Reg_SFF_56_MUXInst_U1 ( .s (correct_reset), .b ({new_AGEMA_signal_2700, Midori_rounds_round_Result[56]}), .a ({new_AGEMA_signal_1814, Midori_add_Result_Start[56]}), .c ({new_AGEMA_signal_2702, Midori_rounds_roundResult_Reg_SFF_56_DQ}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_roundResult_Reg_SFF_58_MUXInst_U1 ( .s (correct_reset), .b ({new_AGEMA_signal_2549, Midori_rounds_round_Result[58]}), .a ({new_AGEMA_signal_1810, Midori_add_Result_Start[58]}), .c ({new_AGEMA_signal_2608, Midori_rounds_roundResult_Reg_SFF_58_DQ}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_roundResult_Reg_SFF_60_MUXInst_U1 ( .s (correct_reset), .b ({new_AGEMA_signal_2701, Midori_rounds_round_Result[60]}), .a ({new_AGEMA_signal_1804, Midori_add_Result_Start[60]}), .c ({new_AGEMA_signal_2703, Midori_rounds_roundResult_Reg_SFF_60_DQ}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_roundResult_Reg_SFF_62_MUXInst_U1 ( .s (correct_reset), .b ({new_AGEMA_signal_2552, Midori_rounds_round_Result[62]}), .a ({new_AGEMA_signal_1800, Midori_add_Result_Start[62]}), .c ({new_AGEMA_signal_2611, Midori_rounds_roundResult_Reg_SFF_62_DQ}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_Res_Inst_mux_inst_0_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2660, Midori_rounds_mul_ResultXORkey[0]}), .a ({new_AGEMA_signal_2638, Midori_rounds_SR_Inv_Result[0]}), .c ({new_AGEMA_signal_2670, Midori_rounds_round_Result[0]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_Res_Inst_mux_inst_2_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2474, Midori_rounds_mul_ResultXORkey[2]}), .a ({new_AGEMA_signal_2397, Midori_rounds_SR_Inv_Result[2]}), .c ({new_AGEMA_signal_2507, Midori_rounds_round_Result[2]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_Res_Inst_mux_inst_4_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2651, Midori_rounds_mul_ResultXORkey[4]}), .a ({new_AGEMA_signal_2641, Midori_rounds_SR_Inv_Result[4]}), .c ({new_AGEMA_signal_2671, Midori_rounds_round_Result[4]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_Res_Inst_mux_inst_6_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2443, Midori_rounds_mul_ResultXORkey[6]}), .a ({new_AGEMA_signal_2412, Midori_rounds_SR_Inv_Result[6]}), .c ({new_AGEMA_signal_2510, Midori_rounds_round_Result[6]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_Res_Inst_mux_inst_8_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2650, Midori_rounds_mul_ResultXORkey[8]}), .a ({new_AGEMA_signal_2646, Midori_rounds_SR_Inv_Result[8]}), .c ({new_AGEMA_signal_2672, Midori_rounds_round_Result[8]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_Res_Inst_mux_inst_10_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2491, Midori_rounds_mul_ResultXORkey[10]}), .a ({new_AGEMA_signal_2439, Midori_rounds_SR_Inv_Result[10]}), .c ({new_AGEMA_signal_2513, Midori_rounds_round_Result[10]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_Res_Inst_mux_inst_12_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2659, Midori_rounds_mul_ResultXORkey[12]}), .a ({new_AGEMA_signal_2663, Midori_rounds_SR_Inv_Result[12]}), .c ({new_AGEMA_signal_2673, Midori_rounds_round_Result[12]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_Res_Inst_mux_inst_14_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2488, Midori_rounds_mul_ResultXORkey[14]}), .a ({new_AGEMA_signal_2418, Midori_rounds_SR_Inv_Result[14]}), .c ({new_AGEMA_signal_2516, Midori_rounds_round_Result[14]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_Res_Inst_mux_inst_16_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2667, Midori_rounds_mul_ResultXORkey[16]}), .a ({new_AGEMA_signal_2640, Midori_rounds_SR_Inv_Result[16]}), .c ({new_AGEMA_signal_2694, Midori_rounds_round_Result[16]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_Res_Inst_mux_inst_18_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2485, Midori_rounds_mul_ResultXORkey[18]}), .a ({new_AGEMA_signal_2406, Midori_rounds_SR_Inv_Result[18]}), .c ({new_AGEMA_signal_2519, Midori_rounds_round_Result[18]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_Res_Inst_mux_inst_20_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2666, Midori_rounds_mul_ResultXORkey[20]}), .a ({new_AGEMA_signal_2668, Midori_rounds_SR_Inv_Result[20]}), .c ({new_AGEMA_signal_2695, Midori_rounds_round_Result[20]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_Res_Inst_mux_inst_22_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2480, Midori_rounds_mul_ResultXORkey[22]}), .a ({new_AGEMA_signal_2403, Midori_rounds_SR_Inv_Result[22]}), .c ({new_AGEMA_signal_2522, Midori_rounds_round_Result[22]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_Res_Inst_mux_inst_24_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2658, Midori_rounds_mul_ResultXORkey[24]}), .a ({new_AGEMA_signal_2644, Midori_rounds_SR_Inv_Result[24]}), .c ({new_AGEMA_signal_2674, Midori_rounds_round_Result[24]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_Res_Inst_mux_inst_26_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2477, Midori_rounds_mul_ResultXORkey[26]}), .a ({new_AGEMA_signal_2424, Midori_rounds_SR_Inv_Result[26]}), .c ({new_AGEMA_signal_2525, Midori_rounds_round_Result[26]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_Res_Inst_mux_inst_28_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2657, Midori_rounds_mul_ResultXORkey[28]}), .a ({new_AGEMA_signal_2649, Midori_rounds_SR_Inv_Result[28]}), .c ({new_AGEMA_signal_2675, Midori_rounds_round_Result[28]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_Res_Inst_mux_inst_30_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2473, Midori_rounds_mul_ResultXORkey[30]}), .a ({new_AGEMA_signal_2433, Midori_rounds_SR_Inv_Result[30]}), .c ({new_AGEMA_signal_2528, Midori_rounds_round_Result[30]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_Res_Inst_mux_inst_32_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2656, Midori_rounds_mul_ResultXORkey[32]}), .a ({new_AGEMA_signal_2648, Midori_rounds_SR_Inv_Result[32]}), .c ({new_AGEMA_signal_2676, Midori_rounds_round_Result[32]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_Res_Inst_mux_inst_34_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2470, Midori_rounds_mul_ResultXORkey[34]}), .a ({new_AGEMA_signal_2436, Midori_rounds_SR_Inv_Result[34]}), .c ({new_AGEMA_signal_2531, Midori_rounds_round_Result[34]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_Res_Inst_mux_inst_36_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2655, Midori_rounds_mul_ResultXORkey[36]}), .a ({new_AGEMA_signal_2664, Midori_rounds_SR_Inv_Result[36]}), .c ({new_AGEMA_signal_2677, Midori_rounds_round_Result[36]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_Res_Inst_mux_inst_38_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2466, Midori_rounds_mul_ResultXORkey[38]}), .a ({new_AGEMA_signal_2421, Midori_rounds_SR_Inv_Result[38]}), .c ({new_AGEMA_signal_2534, Midori_rounds_round_Result[38]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_Res_Inst_mux_inst_40_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2654, Midori_rounds_mul_ResultXORkey[40]}), .a ({new_AGEMA_signal_2661, Midori_rounds_SR_Inv_Result[40]}), .c ({new_AGEMA_signal_2678, Midori_rounds_round_Result[40]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_Res_Inst_mux_inst_42_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2462, Midori_rounds_mul_ResultXORkey[42]}), .a ({new_AGEMA_signal_2394, Midori_rounds_SR_Inv_Result[42]}), .c ({new_AGEMA_signal_2537, Midori_rounds_round_Result[42]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_Res_Inst_mux_inst_44_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2653, Midori_rounds_mul_ResultXORkey[44]}), .a ({new_AGEMA_signal_2639, Midori_rounds_SR_Inv_Result[44]}), .c ({new_AGEMA_signal_2679, Midori_rounds_round_Result[44]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_Res_Inst_mux_inst_46_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2458, Midori_rounds_mul_ResultXORkey[46]}), .a ({new_AGEMA_signal_2415, Midori_rounds_SR_Inv_Result[46]}), .c ({new_AGEMA_signal_2540, Midori_rounds_round_Result[46]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_Res_Inst_mux_inst_48_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2652, Midori_rounds_mul_ResultXORkey[48]}), .a ({new_AGEMA_signal_2643, Midori_rounds_SR_Inv_Result[48]}), .c ({new_AGEMA_signal_2680, Midori_rounds_round_Result[48]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_Res_Inst_mux_inst_50_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2455, Midori_rounds_mul_ResultXORkey[50]}), .a ({new_AGEMA_signal_2427, Midori_rounds_SR_Inv_Result[50]}), .c ({new_AGEMA_signal_2543, Midori_rounds_round_Result[50]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_Res_Inst_mux_inst_52_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2665, Midori_rounds_mul_ResultXORkey[52]}), .a ({new_AGEMA_signal_2647, Midori_rounds_SR_Inv_Result[52]}), .c ({new_AGEMA_signal_2696, Midori_rounds_round_Result[52]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_Res_Inst_mux_inst_54_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2452, Midori_rounds_mul_ResultXORkey[54]}), .a ({new_AGEMA_signal_2430, Midori_rounds_SR_Inv_Result[54]}), .c ({new_AGEMA_signal_2546, Midori_rounds_round_Result[54]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_Res_Inst_mux_inst_56_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2682, Midori_rounds_mul_ResultXORkey[56]}), .a ({new_AGEMA_signal_2642, Midori_rounds_SR_Inv_Result[56]}), .c ({new_AGEMA_signal_2700, Midori_rounds_round_Result[56]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_Res_Inst_mux_inst_58_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2449, Midori_rounds_mul_ResultXORkey[58]}), .a ({new_AGEMA_signal_2409, Midori_rounds_SR_Inv_Result[58]}), .c ({new_AGEMA_signal_2549, Midori_rounds_round_Result[58]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_Res_Inst_mux_inst_60_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2681, Midori_rounds_mul_ResultXORkey[60]}), .a ({new_AGEMA_signal_2669, Midori_rounds_SR_Inv_Result[60]}), .c ({new_AGEMA_signal_2701, Midori_rounds_round_Result[60]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) Midori_rounds_Res_Inst_mux_inst_62_U1 ( .s (enc_dec), .b ({new_AGEMA_signal_2445, Midori_rounds_mul_ResultXORkey[62]}), .a ({new_AGEMA_signal_2400, Midori_rounds_SR_Inv_Result[62]}), .c ({new_AGEMA_signal_2552, Midori_rounds_round_Result[62]}) ) ;

    /* register cells */
    DFF_X1 controller_roundCounter_count_reg_0__FF_FF ( .CK (clk_gated), .D (controller_roundCounter_N7), .Q (round_Signal[0]), .QN () ) ;
    DFF_X1 controller_roundCounter_count_reg_1__FF_FF ( .CK (clk_gated), .D (controller_roundCounter_N8), .Q (round_Signal[1]), .QN () ) ;
    DFF_X1 controller_roundCounter_count_reg_2__FF_FF ( .CK (clk_gated), .D (controller_roundCounter_n2), .Q (round_Signal[2]), .QN () ) ;
    DFF_X1 controller_roundCounter_count_reg_3__FF_FF ( .CK (clk_gated), .D (controller_roundCounter_N10), .Q (round_Signal[3]), .QN () ) ;
    reg_masked #(.security_order(1), .pipeline(0)) Midori_rounds_roundResult_Reg_SFF_0_Q_reg_FF_FF ( .clk (clk_gated), .D ({new_AGEMA_signal_2683, Midori_rounds_roundResult_Reg_SFF_0_DQ}), .Q ({new_AGEMA_signal_1661, Midori_rounds_roundReg_out[0]}) ) ; /* reg_masked_type_1 */
    assign common_out2 = new_AGEMA_signal_1661;
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_roundResult_Reg_SFF_1_Q_reg_FF_FF ( .clk (clk_gated), .D ({common_out2, Midori_rounds_roundResult_Reg_SFF_1_DQ}), .Q ({new_AGEMA_signal_2064, Midori_rounds_roundReg_out[1]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_roundResult_Reg_SFF_2_Q_reg_FF_FF ( .clk (clk_gated), .D ({common_out2, Midori_rounds_roundResult_Reg_SFF_2_DQ}), .Q ({new_AGEMA_signal_1664, Midori_rounds_roundReg_out[2]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_roundResult_Reg_SFF_3_Q_reg_FF_FF ( .clk (clk_gated), .D ({common_out2, Midori_rounds_roundResult_Reg_SFF_3_DQ}), .Q ({new_AGEMA_signal_1662, Midori_rounds_roundReg_out[3]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_roundResult_Reg_SFF_4_Q_reg_FF_FF ( .clk (clk_gated), .D ({common_out2, Midori_rounds_roundResult_Reg_SFF_4_DQ}), .Q ({new_AGEMA_signal_1669, Midori_rounds_roundReg_out[4]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_roundResult_Reg_SFF_5_Q_reg_FF_FF ( .clk (clk_gated), .D ({common_out2, Midori_rounds_roundResult_Reg_SFF_5_DQ}), .Q ({new_AGEMA_signal_2069, Midori_rounds_roundReg_out[5]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_roundResult_Reg_SFF_6_Q_reg_FF_FF ( .clk (clk_gated), .D ({common_out2, Midori_rounds_roundResult_Reg_SFF_6_DQ}), .Q ({new_AGEMA_signal_1672, Midori_rounds_roundReg_out[6]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_roundResult_Reg_SFF_7_Q_reg_FF_FF ( .clk (clk_gated), .D ({common_out2, Midori_rounds_roundResult_Reg_SFF_7_DQ}), .Q ({new_AGEMA_signal_1670, Midori_rounds_roundReg_out[7]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_roundResult_Reg_SFF_8_Q_reg_FF_FF ( .clk (clk_gated), .D ({common_out2, Midori_rounds_roundResult_Reg_SFF_8_DQ}), .Q ({new_AGEMA_signal_1677, Midori_rounds_roundReg_out[8]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_roundResult_Reg_SFF_9_Q_reg_FF_FF ( .clk (clk_gated), .D ({common_out2, Midori_rounds_roundResult_Reg_SFF_9_DQ}), .Q ({new_AGEMA_signal_2074, Midori_rounds_roundReg_out[9]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_roundResult_Reg_SFF_10_Q_reg_FF_FF ( .clk (clk_gated), .D ({common_out2, Midori_rounds_roundResult_Reg_SFF_10_DQ}), .Q ({new_AGEMA_signal_1680, Midori_rounds_roundReg_out[10]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_roundResult_Reg_SFF_11_Q_reg_FF_FF ( .clk (clk_gated), .D ({common_out2, Midori_rounds_roundResult_Reg_SFF_11_DQ}), .Q ({new_AGEMA_signal_1678, Midori_rounds_roundReg_out[11]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_roundResult_Reg_SFF_12_Q_reg_FF_FF ( .clk (clk_gated), .D ({common_out2, Midori_rounds_roundResult_Reg_SFF_12_DQ}), .Q ({new_AGEMA_signal_1685, Midori_rounds_roundReg_out[12]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_roundResult_Reg_SFF_13_Q_reg_FF_FF ( .clk (clk_gated), .D ({common_out2, Midori_rounds_roundResult_Reg_SFF_13_DQ}), .Q ({new_AGEMA_signal_2079, Midori_rounds_roundReg_out[13]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_roundResult_Reg_SFF_14_Q_reg_FF_FF ( .clk (clk_gated), .D ({common_out2, Midori_rounds_roundResult_Reg_SFF_14_DQ}), .Q ({new_AGEMA_signal_1688, Midori_rounds_roundReg_out[14]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_roundResult_Reg_SFF_15_Q_reg_FF_FF ( .clk (clk_gated), .D ({common_out2, Midori_rounds_roundResult_Reg_SFF_15_DQ}), .Q ({new_AGEMA_signal_1686, Midori_rounds_roundReg_out[15]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_roundResult_Reg_SFF_16_Q_reg_FF_FF ( .clk (clk_gated), .D ({common_out2, Midori_rounds_roundResult_Reg_SFF_16_DQ}), .Q ({new_AGEMA_signal_1693, Midori_rounds_roundReg_out[16]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_roundResult_Reg_SFF_17_Q_reg_FF_FF ( .clk (clk_gated), .D ({common_out2, Midori_rounds_roundResult_Reg_SFF_17_DQ}), .Q ({new_AGEMA_signal_2084, Midori_rounds_roundReg_out[17]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_roundResult_Reg_SFF_18_Q_reg_FF_FF ( .clk (clk_gated), .D ({common_out2, Midori_rounds_roundResult_Reg_SFF_18_DQ}), .Q ({new_AGEMA_signal_1696, Midori_rounds_roundReg_out[18]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_roundResult_Reg_SFF_19_Q_reg_FF_FF ( .clk (clk_gated), .D ({common_out2, Midori_rounds_roundResult_Reg_SFF_19_DQ}), .Q ({new_AGEMA_signal_1694, Midori_rounds_roundReg_out[19]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_roundResult_Reg_SFF_20_Q_reg_FF_FF ( .clk (clk_gated), .D ({common_out2, Midori_rounds_roundResult_Reg_SFF_20_DQ}), .Q ({new_AGEMA_signal_1701, Midori_rounds_roundReg_out[20]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_roundResult_Reg_SFF_21_Q_reg_FF_FF ( .clk (clk_gated), .D ({common_out2, Midori_rounds_roundResult_Reg_SFF_21_DQ}), .Q ({new_AGEMA_signal_2089, Midori_rounds_roundReg_out[21]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_roundResult_Reg_SFF_22_Q_reg_FF_FF ( .clk (clk_gated), .D ({common_out2, Midori_rounds_roundResult_Reg_SFF_22_DQ}), .Q ({new_AGEMA_signal_1704, Midori_rounds_roundReg_out[22]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_roundResult_Reg_SFF_23_Q_reg_FF_FF ( .clk (clk_gated), .D ({common_out2, Midori_rounds_roundResult_Reg_SFF_23_DQ}), .Q ({new_AGEMA_signal_1702, Midori_rounds_roundReg_out[23]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_roundResult_Reg_SFF_24_Q_reg_FF_FF ( .clk (clk_gated), .D ({common_out2, Midori_rounds_roundResult_Reg_SFF_24_DQ}), .Q ({new_AGEMA_signal_1709, Midori_rounds_roundReg_out[24]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_roundResult_Reg_SFF_25_Q_reg_FF_FF ( .clk (clk_gated), .D ({common_out2, Midori_rounds_roundResult_Reg_SFF_25_DQ}), .Q ({new_AGEMA_signal_2094, Midori_rounds_roundReg_out[25]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_roundResult_Reg_SFF_26_Q_reg_FF_FF ( .clk (clk_gated), .D ({common_out2, Midori_rounds_roundResult_Reg_SFF_26_DQ}), .Q ({new_AGEMA_signal_1712, Midori_rounds_roundReg_out[26]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_roundResult_Reg_SFF_27_Q_reg_FF_FF ( .clk (clk_gated), .D ({common_out2, Midori_rounds_roundResult_Reg_SFF_27_DQ}), .Q ({new_AGEMA_signal_1710, Midori_rounds_roundReg_out[27]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_roundResult_Reg_SFF_28_Q_reg_FF_FF ( .clk (clk_gated), .D ({common_out2, Midori_rounds_roundResult_Reg_SFF_28_DQ}), .Q ({new_AGEMA_signal_1717, Midori_rounds_roundReg_out[28]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_roundResult_Reg_SFF_29_Q_reg_FF_FF ( .clk (clk_gated), .D ({common_out2, Midori_rounds_roundResult_Reg_SFF_29_DQ}), .Q ({new_AGEMA_signal_2099, Midori_rounds_roundReg_out[29]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_roundResult_Reg_SFF_30_Q_reg_FF_FF ( .clk (clk_gated), .D ({common_out2, Midori_rounds_roundResult_Reg_SFF_30_DQ}), .Q ({new_AGEMA_signal_1720, Midori_rounds_roundReg_out[30]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_roundResult_Reg_SFF_31_Q_reg_FF_FF ( .clk (clk_gated), .D ({common_out2, Midori_rounds_roundResult_Reg_SFF_31_DQ}), .Q ({new_AGEMA_signal_1718, Midori_rounds_roundReg_out[31]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_roundResult_Reg_SFF_32_Q_reg_FF_FF ( .clk (clk_gated), .D ({common_out2, Midori_rounds_roundResult_Reg_SFF_32_DQ}), .Q ({new_AGEMA_signal_1725, Midori_rounds_roundReg_out[32]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_roundResult_Reg_SFF_33_Q_reg_FF_FF ( .clk (clk_gated), .D ({common_out2, Midori_rounds_roundResult_Reg_SFF_33_DQ}), .Q ({new_AGEMA_signal_2104, Midori_rounds_roundReg_out[33]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_roundResult_Reg_SFF_34_Q_reg_FF_FF ( .clk (clk_gated), .D ({common_out2, Midori_rounds_roundResult_Reg_SFF_34_DQ}), .Q ({new_AGEMA_signal_1728, Midori_rounds_roundReg_out[34]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_roundResult_Reg_SFF_35_Q_reg_FF_FF ( .clk (clk_gated), .D ({common_out2, Midori_rounds_roundResult_Reg_SFF_35_DQ}), .Q ({new_AGEMA_signal_1726, Midori_rounds_roundReg_out[35]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_roundResult_Reg_SFF_36_Q_reg_FF_FF ( .clk (clk_gated), .D ({common_out2, Midori_rounds_roundResult_Reg_SFF_36_DQ}), .Q ({new_AGEMA_signal_1733, Midori_rounds_roundReg_out[36]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_roundResult_Reg_SFF_37_Q_reg_FF_FF ( .clk (clk_gated), .D ({common_out2, Midori_rounds_roundResult_Reg_SFF_37_DQ}), .Q ({new_AGEMA_signal_2109, Midori_rounds_roundReg_out[37]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_roundResult_Reg_SFF_38_Q_reg_FF_FF ( .clk (clk_gated), .D ({common_out2, Midori_rounds_roundResult_Reg_SFF_38_DQ}), .Q ({new_AGEMA_signal_1736, Midori_rounds_roundReg_out[38]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_roundResult_Reg_SFF_39_Q_reg_FF_FF ( .clk (clk_gated), .D ({common_out2, Midori_rounds_roundResult_Reg_SFF_39_DQ}), .Q ({new_AGEMA_signal_1734, Midori_rounds_roundReg_out[39]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_roundResult_Reg_SFF_40_Q_reg_FF_FF ( .clk (clk_gated), .D ({common_out2, Midori_rounds_roundResult_Reg_SFF_40_DQ}), .Q ({new_AGEMA_signal_1741, Midori_rounds_roundReg_out[40]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_roundResult_Reg_SFF_41_Q_reg_FF_FF ( .clk (clk_gated), .D ({common_out2, Midori_rounds_roundResult_Reg_SFF_41_DQ}), .Q ({new_AGEMA_signal_2114, Midori_rounds_roundReg_out[41]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_roundResult_Reg_SFF_42_Q_reg_FF_FF ( .clk (clk_gated), .D ({common_out2, Midori_rounds_roundResult_Reg_SFF_42_DQ}), .Q ({new_AGEMA_signal_1744, Midori_rounds_roundReg_out[42]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_roundResult_Reg_SFF_43_Q_reg_FF_FF ( .clk (clk_gated), .D ({common_out2, Midori_rounds_roundResult_Reg_SFF_43_DQ}), .Q ({new_AGEMA_signal_1742, Midori_rounds_roundReg_out[43]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_roundResult_Reg_SFF_44_Q_reg_FF_FF ( .clk (clk_gated), .D ({common_out2, Midori_rounds_roundResult_Reg_SFF_44_DQ}), .Q ({new_AGEMA_signal_1749, Midori_rounds_roundReg_out[44]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_roundResult_Reg_SFF_45_Q_reg_FF_FF ( .clk (clk_gated), .D ({common_out2, Midori_rounds_roundResult_Reg_SFF_45_DQ}), .Q ({new_AGEMA_signal_2119, Midori_rounds_roundReg_out[45]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_roundResult_Reg_SFF_46_Q_reg_FF_FF ( .clk (clk_gated), .D ({common_out2, Midori_rounds_roundResult_Reg_SFF_46_DQ}), .Q ({new_AGEMA_signal_1752, Midori_rounds_roundReg_out[46]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_roundResult_Reg_SFF_47_Q_reg_FF_FF ( .clk (clk_gated), .D ({common_out2, Midori_rounds_roundResult_Reg_SFF_47_DQ}), .Q ({new_AGEMA_signal_1750, Midori_rounds_roundReg_out[47]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_roundResult_Reg_SFF_48_Q_reg_FF_FF ( .clk (clk_gated), .D ({common_out2, Midori_rounds_roundResult_Reg_SFF_48_DQ}), .Q ({new_AGEMA_signal_1757, Midori_rounds_roundReg_out[48]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_roundResult_Reg_SFF_49_Q_reg_FF_FF ( .clk (clk_gated), .D ({common_out2, Midori_rounds_roundResult_Reg_SFF_49_DQ}), .Q ({new_AGEMA_signal_2124, Midori_rounds_roundReg_out[49]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_roundResult_Reg_SFF_50_Q_reg_FF_FF ( .clk (clk_gated), .D ({common_out2, Midori_rounds_roundResult_Reg_SFF_50_DQ}), .Q ({new_AGEMA_signal_1760, Midori_rounds_roundReg_out[50]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_roundResult_Reg_SFF_51_Q_reg_FF_FF ( .clk (clk_gated), .D ({common_out2, Midori_rounds_roundResult_Reg_SFF_51_DQ}), .Q ({new_AGEMA_signal_1758, Midori_rounds_roundReg_out[51]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_roundResult_Reg_SFF_52_Q_reg_FF_FF ( .clk (clk_gated), .D ({common_out2, Midori_rounds_roundResult_Reg_SFF_52_DQ}), .Q ({new_AGEMA_signal_1765, Midori_rounds_roundReg_out[52]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_roundResult_Reg_SFF_53_Q_reg_FF_FF ( .clk (clk_gated), .D ({common_out2, Midori_rounds_roundResult_Reg_SFF_53_DQ}), .Q ({new_AGEMA_signal_2129, Midori_rounds_roundReg_out[53]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_roundResult_Reg_SFF_54_Q_reg_FF_FF ( .clk (clk_gated), .D ({common_out2, Midori_rounds_roundResult_Reg_SFF_54_DQ}), .Q ({new_AGEMA_signal_1768, Midori_rounds_roundReg_out[54]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_roundResult_Reg_SFF_55_Q_reg_FF_FF ( .clk (clk_gated), .D ({common_out2, Midori_rounds_roundResult_Reg_SFF_55_DQ}), .Q ({new_AGEMA_signal_1766, Midori_rounds_roundReg_out[55]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_roundResult_Reg_SFF_56_Q_reg_FF_FF ( .clk (clk_gated), .D ({common_out2, Midori_rounds_roundResult_Reg_SFF_56_DQ}), .Q ({new_AGEMA_signal_1773, Midori_rounds_roundReg_out[56]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_roundResult_Reg_SFF_57_Q_reg_FF_FF ( .clk (clk_gated), .D ({common_out2, Midori_rounds_roundResult_Reg_SFF_57_DQ}), .Q ({new_AGEMA_signal_2134, Midori_rounds_roundReg_out[57]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_roundResult_Reg_SFF_58_Q_reg_FF_FF ( .clk (clk_gated), .D ({common_out2, Midori_rounds_roundResult_Reg_SFF_58_DQ}), .Q ({new_AGEMA_signal_1776, Midori_rounds_roundReg_out[58]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_roundResult_Reg_SFF_59_Q_reg_FF_FF ( .clk (clk_gated), .D ({common_out2, Midori_rounds_roundResult_Reg_SFF_59_DQ}), .Q ({new_AGEMA_signal_1774, Midori_rounds_roundReg_out[59]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_roundResult_Reg_SFF_60_Q_reg_FF_FF ( .clk (clk_gated), .D ({common_out2, Midori_rounds_roundResult_Reg_SFF_60_DQ}), .Q ({new_AGEMA_signal_1781, Midori_rounds_roundReg_out[60]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_roundResult_Reg_SFF_61_Q_reg_FF_FF ( .clk (clk_gated), .D ({common_out2, Midori_rounds_roundResult_Reg_SFF_61_DQ}), .Q ({new_AGEMA_signal_2139, Midori_rounds_roundReg_out[61]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_roundResult_Reg_SFF_62_Q_reg_FF_FF ( .clk (clk_gated), .D ({common_out2, Midori_rounds_roundResult_Reg_SFF_62_DQ}), .Q ({new_AGEMA_signal_1784, Midori_rounds_roundReg_out[62]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) Midori_rounds_roundResult_Reg_SFF_63_Q_reg_FF_FF ( .clk (clk_gated), .D ({common_out2, Midori_rounds_roundResult_Reg_SFF_63_DQ}), .Q ({new_AGEMA_signal_1782, Midori_rounds_roundReg_out[63]}) ) ; /* reg_masked_type_1 */
endmodule