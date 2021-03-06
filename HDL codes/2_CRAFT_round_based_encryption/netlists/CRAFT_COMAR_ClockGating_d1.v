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

/* modified netlist. Source: module CRAFT in file ..\2_CRAFT_round_based_encryption\netlists\CRAFT_.v */
/* clock gating is added to the circuit, the latency increased 14 time(s)  */

module CRAFT_COMAR_ClockGating_d1 (plaintext_s0, key_s0, clk, rst, key_s1, plaintext_s1, Fresh, ciphertext_s0, done, ciphertext_s1, Synch);
    input [63:0] plaintext_s0 ;
    input [127:0] key_s0 ;
    input clk ;
    input rst ;
    input [127:0] key_s1 ;
    input [63:0] plaintext_s1 ;
    input [5:0] Fresh ;
    output [63:0] ciphertext_s0 ;
    output done ;
    output [63:0] ciphertext_s1 ;
    output Synch ;
    
    wire [63:0]  correct_plaintext_s0 ;
    wire [63:0]  correct_plaintext_s1 ;
    wire [127:0] correct_key_s0 ;
    wire [127:0] correct_key_s1 ;

    wire temp_rst;
    wire correct_rst;    
    
    
    wire RoundConstant_4_ ;
    wire RoundConstant_0 ;
    wire done_internal ;
    wire MCInst_XOR_r0_Inst_0_n1 ;
    wire MCInst_XOR_r1_Inst_0_n1 ;
    wire MCInst_XOR_r0_Inst_1_n1 ;
    wire MCInst_XOR_r1_Inst_1_n1 ;
    wire MCInst_XOR_r0_Inst_2_n1 ;
    wire MCInst_XOR_r1_Inst_2_n1 ;
    wire MCInst_XOR_r0_Inst_3_n1 ;
    wire MCInst_XOR_r1_Inst_3_n1 ;
    wire MCInst_XOR_r0_Inst_4_n1 ;
    wire MCInst_XOR_r1_Inst_4_n1 ;
    wire MCInst_XOR_r0_Inst_5_n1 ;
    wire MCInst_XOR_r1_Inst_5_n1 ;
    wire MCInst_XOR_r0_Inst_6_n1 ;
    wire MCInst_XOR_r1_Inst_6_n1 ;
    wire MCInst_XOR_r0_Inst_7_n1 ;
    wire MCInst_XOR_r1_Inst_7_n1 ;
    wire MCInst_XOR_r0_Inst_8_n1 ;
    wire MCInst_XOR_r1_Inst_8_n1 ;
    wire MCInst_XOR_r0_Inst_9_n1 ;
    wire MCInst_XOR_r1_Inst_9_n1 ;
    wire MCInst_XOR_r0_Inst_10_n1 ;
    wire MCInst_XOR_r1_Inst_10_n1 ;
    wire MCInst_XOR_r0_Inst_11_n1 ;
    wire MCInst_XOR_r1_Inst_11_n1 ;
    wire MCInst_XOR_r0_Inst_12_n1 ;
    wire MCInst_XOR_r1_Inst_12_n1 ;
    wire MCInst_XOR_r0_Inst_13_n1 ;
    wire MCInst_XOR_r1_Inst_13_n1 ;
    wire MCInst_XOR_r0_Inst_14_n1 ;
    wire MCInst_XOR_r1_Inst_14_n1 ;
    wire MCInst_XOR_r0_Inst_15_n1 ;
    wire MCInst_XOR_r1_Inst_15_n1 ;
    wire AddKeyXOR1_XORInst_0_0_n1 ;
    wire AddKeyXOR1_XORInst_0_1_n1 ;
    wire AddKeyXOR1_XORInst_0_2_n1 ;
    wire AddKeyXOR1_XORInst_0_3_n1 ;
    wire AddKeyXOR1_XORInst_1_0_n1 ;
    wire AddKeyXOR1_XORInst_1_1_n1 ;
    wire AddKeyXOR1_XORInst_1_2_n1 ;
    wire AddKeyXOR1_XORInst_1_3_n1 ;
    wire AddKeyXOR1_XORInst_2_0_n1 ;
    wire AddKeyXOR1_XORInst_2_1_n1 ;
    wire AddKeyXOR1_XORInst_2_2_n1 ;
    wire AddKeyXOR1_XORInst_2_3_n1 ;
    wire AddKeyXOR1_XORInst_3_0_n1 ;
    wire AddKeyXOR1_XORInst_3_1_n1 ;
    wire AddKeyXOR1_XORInst_3_2_n1 ;
    wire AddKeyXOR1_XORInst_3_3_n1 ;
    wire AddKeyConstXOR_XORInst_0_0_n1 ;
    wire AddKeyConstXOR_XORInst_0_1_n1 ;
    wire AddKeyConstXOR_XORInst_0_2_n1 ;
    wire AddKeyConstXOR_XORInst_0_3_n1 ;
    wire AddKeyConstXOR_XORInst_1_0_n1 ;
    wire AddKeyConstXOR_XORInst_1_1_n1 ;
    wire AddKeyConstXOR_XORInst_1_2_n1 ;
    wire AddKeyConstXOR_XORInst_1_3_n1 ;
    wire AddKeyXOR2_XORInst_0_0_n1 ;
    wire AddKeyXOR2_XORInst_0_1_n1 ;
    wire AddKeyXOR2_XORInst_0_2_n1 ;
    wire AddKeyXOR2_XORInst_0_3_n1 ;
    wire AddKeyXOR2_XORInst_1_0_n1 ;
    wire AddKeyXOR2_XORInst_1_1_n1 ;
    wire AddKeyXOR2_XORInst_1_2_n1 ;
    wire AddKeyXOR2_XORInst_1_3_n1 ;
    wire AddKeyXOR2_XORInst_2_0_n1 ;
    wire AddKeyXOR2_XORInst_2_1_n1 ;
    wire AddKeyXOR2_XORInst_2_2_n1 ;
    wire AddKeyXOR2_XORInst_2_3_n1 ;
    wire AddKeyXOR2_XORInst_3_0_n1 ;
    wire AddKeyXOR2_XORInst_3_1_n1 ;
    wire AddKeyXOR2_XORInst_3_2_n1 ;
    wire AddKeyXOR2_XORInst_3_3_n1 ;
    wire AddKeyXOR2_XORInst_4_0_n1 ;
    wire AddKeyXOR2_XORInst_4_1_n1 ;
    wire AddKeyXOR2_XORInst_4_2_n1 ;
    wire AddKeyXOR2_XORInst_4_3_n1 ;
    wire AddKeyXOR2_XORInst_5_0_n1 ;
    wire AddKeyXOR2_XORInst_5_1_n1 ;
    wire AddKeyXOR2_XORInst_5_2_n1 ;
    wire AddKeyXOR2_XORInst_5_3_n1 ;
    wire AddKeyXOR2_XORInst_6_0_n1 ;
    wire AddKeyXOR2_XORInst_6_1_n1 ;
    wire AddKeyXOR2_XORInst_6_2_n1 ;
    wire AddKeyXOR2_XORInst_6_3_n1 ;
    wire AddKeyXOR2_XORInst_7_0_n1 ;
    wire AddKeyXOR2_XORInst_7_1_n1 ;
    wire AddKeyXOR2_XORInst_7_2_n1 ;
    wire AddKeyXOR2_XORInst_7_3_n1 ;
    wire AddKeyXOR2_XORInst_8_0_n1 ;
    wire AddKeyXOR2_XORInst_8_1_n1 ;
    wire AddKeyXOR2_XORInst_8_2_n1 ;
    wire AddKeyXOR2_XORInst_8_3_n1 ;
    wire AddKeyXOR2_XORInst_9_0_n1 ;
    wire AddKeyXOR2_XORInst_9_1_n1 ;
    wire AddKeyXOR2_XORInst_9_2_n1 ;
    wire AddKeyXOR2_XORInst_9_3_n1 ;
    wire SubCellInst_SboxInst_0_n15 ;
    wire SubCellInst_SboxInst_0_n14 ;
    wire SubCellInst_SboxInst_0_n13 ;
    wire SubCellInst_SboxInst_0_n12 ;
    wire SubCellInst_SboxInst_0_n11 ;
    wire SubCellInst_SboxInst_0_n10 ;
    wire SubCellInst_SboxInst_0_n9 ;
    wire SubCellInst_SboxInst_0_n8 ;
    wire SubCellInst_SboxInst_0_n7 ;
    wire SubCellInst_SboxInst_0_n6 ;
    wire SubCellInst_SboxInst_0_n5 ;
    wire SubCellInst_SboxInst_0_n4 ;
    wire SubCellInst_SboxInst_0_n3 ;
    wire SubCellInst_SboxInst_0_n2 ;
    wire SubCellInst_SboxInst_0_n1 ;
    wire SubCellInst_SboxInst_1_n15 ;
    wire SubCellInst_SboxInst_1_n14 ;
    wire SubCellInst_SboxInst_1_n13 ;
    wire SubCellInst_SboxInst_1_n12 ;
    wire SubCellInst_SboxInst_1_n11 ;
    wire SubCellInst_SboxInst_1_n10 ;
    wire SubCellInst_SboxInst_1_n9 ;
    wire SubCellInst_SboxInst_1_n8 ;
    wire SubCellInst_SboxInst_1_n7 ;
    wire SubCellInst_SboxInst_1_n6 ;
    wire SubCellInst_SboxInst_1_n5 ;
    wire SubCellInst_SboxInst_1_n4 ;
    wire SubCellInst_SboxInst_1_n3 ;
    wire SubCellInst_SboxInst_1_n2 ;
    wire SubCellInst_SboxInst_1_n1 ;
    wire SubCellInst_SboxInst_2_n15 ;
    wire SubCellInst_SboxInst_2_n14 ;
    wire SubCellInst_SboxInst_2_n13 ;
    wire SubCellInst_SboxInst_2_n12 ;
    wire SubCellInst_SboxInst_2_n11 ;
    wire SubCellInst_SboxInst_2_n10 ;
    wire SubCellInst_SboxInst_2_n9 ;
    wire SubCellInst_SboxInst_2_n8 ;
    wire SubCellInst_SboxInst_2_n7 ;
    wire SubCellInst_SboxInst_2_n6 ;
    wire SubCellInst_SboxInst_2_n5 ;
    wire SubCellInst_SboxInst_2_n4 ;
    wire SubCellInst_SboxInst_2_n3 ;
    wire SubCellInst_SboxInst_2_n2 ;
    wire SubCellInst_SboxInst_2_n1 ;
    wire SubCellInst_SboxInst_3_n15 ;
    wire SubCellInst_SboxInst_3_n14 ;
    wire SubCellInst_SboxInst_3_n13 ;
    wire SubCellInst_SboxInst_3_n12 ;
    wire SubCellInst_SboxInst_3_n11 ;
    wire SubCellInst_SboxInst_3_n10 ;
    wire SubCellInst_SboxInst_3_n9 ;
    wire SubCellInst_SboxInst_3_n8 ;
    wire SubCellInst_SboxInst_3_n7 ;
    wire SubCellInst_SboxInst_3_n6 ;
    wire SubCellInst_SboxInst_3_n5 ;
    wire SubCellInst_SboxInst_3_n4 ;
    wire SubCellInst_SboxInst_3_n3 ;
    wire SubCellInst_SboxInst_3_n2 ;
    wire SubCellInst_SboxInst_3_n1 ;
    wire SubCellInst_SboxInst_4_n15 ;
    wire SubCellInst_SboxInst_4_n14 ;
    wire SubCellInst_SboxInst_4_n13 ;
    wire SubCellInst_SboxInst_4_n12 ;
    wire SubCellInst_SboxInst_4_n11 ;
    wire SubCellInst_SboxInst_4_n10 ;
    wire SubCellInst_SboxInst_4_n9 ;
    wire SubCellInst_SboxInst_4_n8 ;
    wire SubCellInst_SboxInst_4_n7 ;
    wire SubCellInst_SboxInst_4_n6 ;
    wire SubCellInst_SboxInst_4_n5 ;
    wire SubCellInst_SboxInst_4_n4 ;
    wire SubCellInst_SboxInst_4_n3 ;
    wire SubCellInst_SboxInst_4_n2 ;
    wire SubCellInst_SboxInst_4_n1 ;
    wire SubCellInst_SboxInst_5_n15 ;
    wire SubCellInst_SboxInst_5_n14 ;
    wire SubCellInst_SboxInst_5_n13 ;
    wire SubCellInst_SboxInst_5_n12 ;
    wire SubCellInst_SboxInst_5_n11 ;
    wire SubCellInst_SboxInst_5_n10 ;
    wire SubCellInst_SboxInst_5_n9 ;
    wire SubCellInst_SboxInst_5_n8 ;
    wire SubCellInst_SboxInst_5_n7 ;
    wire SubCellInst_SboxInst_5_n6 ;
    wire SubCellInst_SboxInst_5_n5 ;
    wire SubCellInst_SboxInst_5_n4 ;
    wire SubCellInst_SboxInst_5_n3 ;
    wire SubCellInst_SboxInst_5_n2 ;
    wire SubCellInst_SboxInst_5_n1 ;
    wire SubCellInst_SboxInst_6_n15 ;
    wire SubCellInst_SboxInst_6_n14 ;
    wire SubCellInst_SboxInst_6_n13 ;
    wire SubCellInst_SboxInst_6_n12 ;
    wire SubCellInst_SboxInst_6_n11 ;
    wire SubCellInst_SboxInst_6_n10 ;
    wire SubCellInst_SboxInst_6_n9 ;
    wire SubCellInst_SboxInst_6_n8 ;
    wire SubCellInst_SboxInst_6_n7 ;
    wire SubCellInst_SboxInst_6_n6 ;
    wire SubCellInst_SboxInst_6_n5 ;
    wire SubCellInst_SboxInst_6_n4 ;
    wire SubCellInst_SboxInst_6_n3 ;
    wire SubCellInst_SboxInst_6_n2 ;
    wire SubCellInst_SboxInst_6_n1 ;
    wire SubCellInst_SboxInst_7_n15 ;
    wire SubCellInst_SboxInst_7_n14 ;
    wire SubCellInst_SboxInst_7_n13 ;
    wire SubCellInst_SboxInst_7_n12 ;
    wire SubCellInst_SboxInst_7_n11 ;
    wire SubCellInst_SboxInst_7_n10 ;
    wire SubCellInst_SboxInst_7_n9 ;
    wire SubCellInst_SboxInst_7_n8 ;
    wire SubCellInst_SboxInst_7_n7 ;
    wire SubCellInst_SboxInst_7_n6 ;
    wire SubCellInst_SboxInst_7_n5 ;
    wire SubCellInst_SboxInst_7_n4 ;
    wire SubCellInst_SboxInst_7_n3 ;
    wire SubCellInst_SboxInst_7_n2 ;
    wire SubCellInst_SboxInst_7_n1 ;
    wire SubCellInst_SboxInst_8_n15 ;
    wire SubCellInst_SboxInst_8_n14 ;
    wire SubCellInst_SboxInst_8_n13 ;
    wire SubCellInst_SboxInst_8_n12 ;
    wire SubCellInst_SboxInst_8_n11 ;
    wire SubCellInst_SboxInst_8_n10 ;
    wire SubCellInst_SboxInst_8_n9 ;
    wire SubCellInst_SboxInst_8_n8 ;
    wire SubCellInst_SboxInst_8_n7 ;
    wire SubCellInst_SboxInst_8_n6 ;
    wire SubCellInst_SboxInst_8_n5 ;
    wire SubCellInst_SboxInst_8_n4 ;
    wire SubCellInst_SboxInst_8_n3 ;
    wire SubCellInst_SboxInst_8_n2 ;
    wire SubCellInst_SboxInst_8_n1 ;
    wire SubCellInst_SboxInst_9_n15 ;
    wire SubCellInst_SboxInst_9_n14 ;
    wire SubCellInst_SboxInst_9_n13 ;
    wire SubCellInst_SboxInst_9_n12 ;
    wire SubCellInst_SboxInst_9_n11 ;
    wire SubCellInst_SboxInst_9_n10 ;
    wire SubCellInst_SboxInst_9_n9 ;
    wire SubCellInst_SboxInst_9_n8 ;
    wire SubCellInst_SboxInst_9_n7 ;
    wire SubCellInst_SboxInst_9_n6 ;
    wire SubCellInst_SboxInst_9_n5 ;
    wire SubCellInst_SboxInst_9_n4 ;
    wire SubCellInst_SboxInst_9_n3 ;
    wire SubCellInst_SboxInst_9_n2 ;
    wire SubCellInst_SboxInst_9_n1 ;
    wire SubCellInst_SboxInst_10_n15 ;
    wire SubCellInst_SboxInst_10_n14 ;
    wire SubCellInst_SboxInst_10_n13 ;
    wire SubCellInst_SboxInst_10_n12 ;
    wire SubCellInst_SboxInst_10_n11 ;
    wire SubCellInst_SboxInst_10_n10 ;
    wire SubCellInst_SboxInst_10_n9 ;
    wire SubCellInst_SboxInst_10_n8 ;
    wire SubCellInst_SboxInst_10_n7 ;
    wire SubCellInst_SboxInst_10_n6 ;
    wire SubCellInst_SboxInst_10_n5 ;
    wire SubCellInst_SboxInst_10_n4 ;
    wire SubCellInst_SboxInst_10_n3 ;
    wire SubCellInst_SboxInst_10_n2 ;
    wire SubCellInst_SboxInst_10_n1 ;
    wire SubCellInst_SboxInst_11_n15 ;
    wire SubCellInst_SboxInst_11_n14 ;
    wire SubCellInst_SboxInst_11_n13 ;
    wire SubCellInst_SboxInst_11_n12 ;
    wire SubCellInst_SboxInst_11_n11 ;
    wire SubCellInst_SboxInst_11_n10 ;
    wire SubCellInst_SboxInst_11_n9 ;
    wire SubCellInst_SboxInst_11_n8 ;
    wire SubCellInst_SboxInst_11_n7 ;
    wire SubCellInst_SboxInst_11_n6 ;
    wire SubCellInst_SboxInst_11_n5 ;
    wire SubCellInst_SboxInst_11_n4 ;
    wire SubCellInst_SboxInst_11_n3 ;
    wire SubCellInst_SboxInst_11_n2 ;
    wire SubCellInst_SboxInst_11_n1 ;
    wire SubCellInst_SboxInst_12_n15 ;
    wire SubCellInst_SboxInst_12_n14 ;
    wire SubCellInst_SboxInst_12_n13 ;
    wire SubCellInst_SboxInst_12_n12 ;
    wire SubCellInst_SboxInst_12_n11 ;
    wire SubCellInst_SboxInst_12_n10 ;
    wire SubCellInst_SboxInst_12_n9 ;
    wire SubCellInst_SboxInst_12_n8 ;
    wire SubCellInst_SboxInst_12_n7 ;
    wire SubCellInst_SboxInst_12_n6 ;
    wire SubCellInst_SboxInst_12_n5 ;
    wire SubCellInst_SboxInst_12_n4 ;
    wire SubCellInst_SboxInst_12_n3 ;
    wire SubCellInst_SboxInst_12_n2 ;
    wire SubCellInst_SboxInst_12_n1 ;
    wire SubCellInst_SboxInst_13_n15 ;
    wire SubCellInst_SboxInst_13_n14 ;
    wire SubCellInst_SboxInst_13_n13 ;
    wire SubCellInst_SboxInst_13_n12 ;
    wire SubCellInst_SboxInst_13_n11 ;
    wire SubCellInst_SboxInst_13_n10 ;
    wire SubCellInst_SboxInst_13_n9 ;
    wire SubCellInst_SboxInst_13_n8 ;
    wire SubCellInst_SboxInst_13_n7 ;
    wire SubCellInst_SboxInst_13_n6 ;
    wire SubCellInst_SboxInst_13_n5 ;
    wire SubCellInst_SboxInst_13_n4 ;
    wire SubCellInst_SboxInst_13_n3 ;
    wire SubCellInst_SboxInst_13_n2 ;
    wire SubCellInst_SboxInst_13_n1 ;
    wire SubCellInst_SboxInst_14_n15 ;
    wire SubCellInst_SboxInst_14_n14 ;
    wire SubCellInst_SboxInst_14_n13 ;
    wire SubCellInst_SboxInst_14_n12 ;
    wire SubCellInst_SboxInst_14_n11 ;
    wire SubCellInst_SboxInst_14_n10 ;
    wire SubCellInst_SboxInst_14_n9 ;
    wire SubCellInst_SboxInst_14_n8 ;
    wire SubCellInst_SboxInst_14_n7 ;
    wire SubCellInst_SboxInst_14_n6 ;
    wire SubCellInst_SboxInst_14_n5 ;
    wire SubCellInst_SboxInst_14_n4 ;
    wire SubCellInst_SboxInst_14_n3 ;
    wire SubCellInst_SboxInst_14_n2 ;
    wire SubCellInst_SboxInst_14_n1 ;
    wire SubCellInst_SboxInst_15_n15 ;
    wire SubCellInst_SboxInst_15_n14 ;
    wire SubCellInst_SboxInst_15_n13 ;
    wire SubCellInst_SboxInst_15_n12 ;
    wire SubCellInst_SboxInst_15_n11 ;
    wire SubCellInst_SboxInst_15_n10 ;
    wire SubCellInst_SboxInst_15_n9 ;
    wire SubCellInst_SboxInst_15_n8 ;
    wire SubCellInst_SboxInst_15_n7 ;
    wire SubCellInst_SboxInst_15_n6 ;
    wire SubCellInst_SboxInst_15_n5 ;
    wire SubCellInst_SboxInst_15_n4 ;
    wire SubCellInst_SboxInst_15_n3 ;
    wire SubCellInst_SboxInst_15_n2 ;
    wire SubCellInst_SboxInst_15_n1 ;
    wire KeyMUX_n9 ;
    wire KeyMUX_n8 ;
    wire KeyMUX_n7 ;
    wire FSMSignalsInst_n5 ;
    wire FSMSignalsInst_n4 ;
    wire FSMSignalsInst_n3 ;
    wire FSMSignalsInst_n2 ;
    wire FSMSignalsInst_n1 ;
    wire selectsUpdateInst_n3 ;
    wire [63:0] Feedback ;
    wire [63:32] MCInput ;
    wire [63:0] MCOutput ;
    wire [63:0] SelectedKey ;
    wire [63:0] AddRoundKeyOutput ;
    wire [1:0] selects ;
    wire [6:0] FSMReg ;
    wire [6:0] FSMUpdate ;
    wire [1:0] selectsReg ;
    wire [1:0] selectsNext ;
    wire new_AGEMA_signal_1021 ;
    wire new_AGEMA_signal_1023 ;
    wire new_AGEMA_signal_1024 ;
    wire new_AGEMA_signal_1025 ;
    wire new_AGEMA_signal_1026 ;
    wire new_AGEMA_signal_1029 ;
    wire new_AGEMA_signal_1031 ;
    wire new_AGEMA_signal_1032 ;
    wire new_AGEMA_signal_1033 ;
    wire new_AGEMA_signal_1034 ;
    wire new_AGEMA_signal_1037 ;
    wire new_AGEMA_signal_1039 ;
    wire new_AGEMA_signal_1040 ;
    wire new_AGEMA_signal_1041 ;
    wire new_AGEMA_signal_1042 ;
    wire new_AGEMA_signal_1045 ;
    wire new_AGEMA_signal_1047 ;
    wire new_AGEMA_signal_1048 ;
    wire new_AGEMA_signal_1049 ;
    wire new_AGEMA_signal_1050 ;
    wire new_AGEMA_signal_1053 ;
    wire new_AGEMA_signal_1055 ;
    wire new_AGEMA_signal_1056 ;
    wire new_AGEMA_signal_1057 ;
    wire new_AGEMA_signal_1058 ;
    wire new_AGEMA_signal_1061 ;
    wire new_AGEMA_signal_1063 ;
    wire new_AGEMA_signal_1064 ;
    wire new_AGEMA_signal_1065 ;
    wire new_AGEMA_signal_1066 ;
    wire new_AGEMA_signal_1069 ;
    wire new_AGEMA_signal_1071 ;
    wire new_AGEMA_signal_1072 ;
    wire new_AGEMA_signal_1073 ;
    wire new_AGEMA_signal_1074 ;
    wire new_AGEMA_signal_1077 ;
    wire new_AGEMA_signal_1079 ;
    wire new_AGEMA_signal_1080 ;
    wire new_AGEMA_signal_1081 ;
    wire new_AGEMA_signal_1082 ;
    wire new_AGEMA_signal_1085 ;
    wire new_AGEMA_signal_1087 ;
    wire new_AGEMA_signal_1088 ;
    wire new_AGEMA_signal_1089 ;
    wire new_AGEMA_signal_1090 ;
    wire new_AGEMA_signal_1093 ;
    wire new_AGEMA_signal_1095 ;
    wire new_AGEMA_signal_1096 ;
    wire new_AGEMA_signal_1097 ;
    wire new_AGEMA_signal_1098 ;
    wire new_AGEMA_signal_1101 ;
    wire new_AGEMA_signal_1103 ;
    wire new_AGEMA_signal_1104 ;
    wire new_AGEMA_signal_1105 ;
    wire new_AGEMA_signal_1106 ;
    wire new_AGEMA_signal_1109 ;
    wire new_AGEMA_signal_1111 ;
    wire new_AGEMA_signal_1112 ;
    wire new_AGEMA_signal_1113 ;
    wire new_AGEMA_signal_1114 ;
    wire new_AGEMA_signal_1117 ;
    wire new_AGEMA_signal_1119 ;
    wire new_AGEMA_signal_1120 ;
    wire new_AGEMA_signal_1121 ;
    wire new_AGEMA_signal_1122 ;
    wire new_AGEMA_signal_1125 ;
    wire new_AGEMA_signal_1127 ;
    wire new_AGEMA_signal_1128 ;
    wire new_AGEMA_signal_1129 ;
    wire new_AGEMA_signal_1130 ;
    wire new_AGEMA_signal_1133 ;
    wire new_AGEMA_signal_1135 ;
    wire new_AGEMA_signal_1136 ;
    wire new_AGEMA_signal_1137 ;
    wire new_AGEMA_signal_1138 ;
    wire new_AGEMA_signal_1141 ;
    wire new_AGEMA_signal_1143 ;
    wire new_AGEMA_signal_1144 ;
    wire new_AGEMA_signal_1145 ;
    wire new_AGEMA_signal_1146 ;
    wire new_AGEMA_signal_1147 ;
    wire new_AGEMA_signal_1148 ;
    wire new_AGEMA_signal_1149 ;
    wire new_AGEMA_signal_1150 ;
    wire new_AGEMA_signal_1151 ;
    wire new_AGEMA_signal_1152 ;
    wire new_AGEMA_signal_1153 ;
    wire new_AGEMA_signal_1154 ;
    wire new_AGEMA_signal_1155 ;
    wire new_AGEMA_signal_1156 ;
    wire new_AGEMA_signal_1157 ;
    wire new_AGEMA_signal_1158 ;
    wire new_AGEMA_signal_1159 ;
    wire new_AGEMA_signal_1160 ;
    wire new_AGEMA_signal_1161 ;
    wire new_AGEMA_signal_1162 ;
    wire new_AGEMA_signal_1163 ;
    wire new_AGEMA_signal_1164 ;
    wire new_AGEMA_signal_1165 ;
    wire new_AGEMA_signal_1166 ;
    wire new_AGEMA_signal_1167 ;
    wire new_AGEMA_signal_1168 ;
    wire new_AGEMA_signal_1169 ;
    wire new_AGEMA_signal_1170 ;
    wire new_AGEMA_signal_1171 ;
    wire new_AGEMA_signal_1172 ;
    wire new_AGEMA_signal_1173 ;
    wire new_AGEMA_signal_1174 ;
    wire new_AGEMA_signal_1175 ;
    wire new_AGEMA_signal_1176 ;
    wire new_AGEMA_signal_1177 ;
    wire new_AGEMA_signal_1178 ;
    wire new_AGEMA_signal_1179 ;
    wire new_AGEMA_signal_1180 ;
    wire new_AGEMA_signal_1181 ;
    wire new_AGEMA_signal_1182 ;
    wire new_AGEMA_signal_1183 ;
    wire new_AGEMA_signal_1184 ;
    wire new_AGEMA_signal_1185 ;
    wire new_AGEMA_signal_1186 ;
    wire new_AGEMA_signal_1187 ;
    wire new_AGEMA_signal_1188 ;
    wire new_AGEMA_signal_1189 ;
    wire new_AGEMA_signal_1190 ;
    wire new_AGEMA_signal_1191 ;
    wire new_AGEMA_signal_1192 ;
    wire new_AGEMA_signal_1193 ;
    wire new_AGEMA_signal_1194 ;
    wire new_AGEMA_signal_1195 ;
    wire new_AGEMA_signal_1196 ;
    wire new_AGEMA_signal_1197 ;
    wire new_AGEMA_signal_1198 ;
    wire new_AGEMA_signal_1199 ;
    wire new_AGEMA_signal_1200 ;
    wire new_AGEMA_signal_1201 ;
    wire new_AGEMA_signal_1202 ;
    wire new_AGEMA_signal_1203 ;
    wire new_AGEMA_signal_1204 ;
    wire new_AGEMA_signal_1205 ;
    wire new_AGEMA_signal_1206 ;
    wire new_AGEMA_signal_1207 ;
    wire new_AGEMA_signal_1208 ;
    wire new_AGEMA_signal_1209 ;
    wire new_AGEMA_signal_1210 ;
    wire new_AGEMA_signal_1211 ;
    wire new_AGEMA_signal_1212 ;
    wire new_AGEMA_signal_1213 ;
    wire new_AGEMA_signal_1214 ;
    wire new_AGEMA_signal_1215 ;
    wire new_AGEMA_signal_1216 ;
    wire new_AGEMA_signal_1217 ;
    wire new_AGEMA_signal_1218 ;
    wire new_AGEMA_signal_1219 ;
    wire new_AGEMA_signal_1220 ;
    wire new_AGEMA_signal_1221 ;
    wire new_AGEMA_signal_1222 ;
    wire new_AGEMA_signal_1223 ;
    wire new_AGEMA_signal_1224 ;
    wire new_AGEMA_signal_1225 ;
    wire new_AGEMA_signal_1226 ;
    wire new_AGEMA_signal_1227 ;
    wire new_AGEMA_signal_1228 ;
    wire new_AGEMA_signal_1229 ;
    wire new_AGEMA_signal_1230 ;
    wire new_AGEMA_signal_1231 ;
    wire new_AGEMA_signal_1232 ;
    wire new_AGEMA_signal_1233 ;
    wire new_AGEMA_signal_1234 ;
    wire new_AGEMA_signal_1235 ;
    wire new_AGEMA_signal_1236 ;
    wire new_AGEMA_signal_1237 ;
    wire new_AGEMA_signal_1238 ;
    wire new_AGEMA_signal_1239 ;
    wire new_AGEMA_signal_1240 ;
    wire new_AGEMA_signal_1241 ;
    wire new_AGEMA_signal_1242 ;
    wire new_AGEMA_signal_1245 ;
    wire new_AGEMA_signal_1248 ;
    wire new_AGEMA_signal_1251 ;
    wire new_AGEMA_signal_1254 ;
    wire new_AGEMA_signal_1257 ;
    wire new_AGEMA_signal_1260 ;
    wire new_AGEMA_signal_1263 ;
    wire new_AGEMA_signal_1266 ;
    wire new_AGEMA_signal_1269 ;
    wire new_AGEMA_signal_1272 ;
    wire new_AGEMA_signal_1275 ;
    wire new_AGEMA_signal_1278 ;
    wire new_AGEMA_signal_1281 ;
    wire new_AGEMA_signal_1284 ;
    wire new_AGEMA_signal_1287 ;
    wire new_AGEMA_signal_1290 ;
    wire new_AGEMA_signal_1292 ;
    wire new_AGEMA_signal_1293 ;
    wire new_AGEMA_signal_1294 ;
    wire new_AGEMA_signal_1295 ;
    wire new_AGEMA_signal_1297 ;
    wire new_AGEMA_signal_1298 ;
    wire new_AGEMA_signal_1299 ;
    wire new_AGEMA_signal_1300 ;
    wire new_AGEMA_signal_1302 ;
    wire new_AGEMA_signal_1303 ;
    wire new_AGEMA_signal_1304 ;
    wire new_AGEMA_signal_1305 ;
    wire new_AGEMA_signal_1307 ;
    wire new_AGEMA_signal_1308 ;
    wire new_AGEMA_signal_1309 ;
    wire new_AGEMA_signal_1310 ;
    wire new_AGEMA_signal_1312 ;
    wire new_AGEMA_signal_1313 ;
    wire new_AGEMA_signal_1314 ;
    wire new_AGEMA_signal_1315 ;
    wire new_AGEMA_signal_1317 ;
    wire new_AGEMA_signal_1318 ;
    wire new_AGEMA_signal_1319 ;
    wire new_AGEMA_signal_1320 ;
    wire new_AGEMA_signal_1322 ;
    wire new_AGEMA_signal_1323 ;
    wire new_AGEMA_signal_1324 ;
    wire new_AGEMA_signal_1325 ;
    wire new_AGEMA_signal_1327 ;
    wire new_AGEMA_signal_1328 ;
    wire new_AGEMA_signal_1329 ;
    wire new_AGEMA_signal_1330 ;
    wire new_AGEMA_signal_1332 ;
    wire new_AGEMA_signal_1333 ;
    wire new_AGEMA_signal_1334 ;
    wire new_AGEMA_signal_1335 ;
    wire new_AGEMA_signal_1337 ;
    wire new_AGEMA_signal_1338 ;
    wire new_AGEMA_signal_1339 ;
    wire new_AGEMA_signal_1340 ;
    wire new_AGEMA_signal_1342 ;
    wire new_AGEMA_signal_1343 ;
    wire new_AGEMA_signal_1344 ;
    wire new_AGEMA_signal_1345 ;
    wire new_AGEMA_signal_1347 ;
    wire new_AGEMA_signal_1348 ;
    wire new_AGEMA_signal_1349 ;
    wire new_AGEMA_signal_1350 ;
    wire new_AGEMA_signal_1352 ;
    wire new_AGEMA_signal_1353 ;
    wire new_AGEMA_signal_1354 ;
    wire new_AGEMA_signal_1355 ;
    wire new_AGEMA_signal_1357 ;
    wire new_AGEMA_signal_1358 ;
    wire new_AGEMA_signal_1359 ;
    wire new_AGEMA_signal_1360 ;
    wire new_AGEMA_signal_1362 ;
    wire new_AGEMA_signal_1363 ;
    wire new_AGEMA_signal_1364 ;
    wire new_AGEMA_signal_1365 ;
    wire new_AGEMA_signal_1367 ;
    wire new_AGEMA_signal_1368 ;
    wire new_AGEMA_signal_1369 ;
    wire new_AGEMA_signal_1370 ;
    wire new_AGEMA_signal_1371 ;
    wire new_AGEMA_signal_1372 ;
    wire new_AGEMA_signal_1373 ;
    wire new_AGEMA_signal_1374 ;
    wire new_AGEMA_signal_1375 ;
    wire new_AGEMA_signal_1376 ;
    wire new_AGEMA_signal_1377 ;
    wire new_AGEMA_signal_1378 ;
    wire new_AGEMA_signal_1379 ;
    wire new_AGEMA_signal_1380 ;
    wire new_AGEMA_signal_1381 ;
    wire new_AGEMA_signal_1382 ;
    wire new_AGEMA_signal_1383 ;
    wire new_AGEMA_signal_1384 ;
    wire new_AGEMA_signal_1385 ;
    wire new_AGEMA_signal_1386 ;
    wire new_AGEMA_signal_1387 ;
    wire new_AGEMA_signal_1388 ;
    wire new_AGEMA_signal_1389 ;
    wire new_AGEMA_signal_1390 ;
    wire new_AGEMA_signal_1391 ;
    wire new_AGEMA_signal_1392 ;
    wire new_AGEMA_signal_1393 ;
    wire new_AGEMA_signal_1394 ;
    wire new_AGEMA_signal_1395 ;
    wire new_AGEMA_signal_1396 ;
    wire new_AGEMA_signal_1397 ;
    wire new_AGEMA_signal_1398 ;
    wire new_AGEMA_signal_1399 ;
    wire new_AGEMA_signal_1400 ;
    wire new_AGEMA_signal_1401 ;
    wire new_AGEMA_signal_1402 ;
    wire new_AGEMA_signal_1403 ;
    wire new_AGEMA_signal_1404 ;
    wire new_AGEMA_signal_1405 ;
    wire new_AGEMA_signal_1406 ;
    wire new_AGEMA_signal_1407 ;
    wire new_AGEMA_signal_1408 ;
    wire new_AGEMA_signal_1409 ;
    wire new_AGEMA_signal_1410 ;
    wire new_AGEMA_signal_1411 ;
    wire new_AGEMA_signal_1412 ;
    wire new_AGEMA_signal_1413 ;
    wire new_AGEMA_signal_1414 ;
    wire new_AGEMA_signal_1415 ;
    wire new_AGEMA_signal_1416 ;
    wire new_AGEMA_signal_1417 ;
    wire new_AGEMA_signal_1418 ;
    wire new_AGEMA_signal_1419 ;
    wire new_AGEMA_signal_1420 ;
    wire new_AGEMA_signal_1421 ;
    wire new_AGEMA_signal_1422 ;
    wire new_AGEMA_signal_1423 ;
    wire new_AGEMA_signal_1424 ;
    wire new_AGEMA_signal_1425 ;
    wire new_AGEMA_signal_1426 ;
    wire new_AGEMA_signal_1427 ;
    wire new_AGEMA_signal_1428 ;
    wire new_AGEMA_signal_1429 ;
    wire new_AGEMA_signal_1430 ;
    wire new_AGEMA_signal_1431 ;
    wire new_AGEMA_signal_1432 ;
    wire new_AGEMA_signal_1433 ;
    wire new_AGEMA_signal_1434 ;
    wire new_AGEMA_signal_1437 ;
    wire new_AGEMA_signal_1440 ;
    wire new_AGEMA_signal_1443 ;
    wire new_AGEMA_signal_1446 ;
    wire new_AGEMA_signal_1449 ;
    wire new_AGEMA_signal_1452 ;
    wire new_AGEMA_signal_1455 ;
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
    wire new_AGEMA_signal_1580 ;
    wire new_AGEMA_signal_1582 ;
    wire new_AGEMA_signal_1584 ;
    wire new_AGEMA_signal_1586 ;
    wire new_AGEMA_signal_1588 ;
    wire new_AGEMA_signal_1590 ;
    wire new_AGEMA_signal_1592 ;
    wire new_AGEMA_signal_1594 ;
    wire new_AGEMA_signal_1596 ;
    wire new_AGEMA_signal_1598 ;
    wire new_AGEMA_signal_1600 ;
    wire new_AGEMA_signal_1602 ;
    wire new_AGEMA_signal_1604 ;
    wire new_AGEMA_signal_1606 ;
    wire new_AGEMA_signal_1608 ;
    wire new_AGEMA_signal_1610 ;
    wire new_AGEMA_signal_1612 ;
    wire new_AGEMA_signal_1614 ;
    wire new_AGEMA_signal_1616 ;
    wire new_AGEMA_signal_1618 ;
    wire new_AGEMA_signal_1620 ;
    wire new_AGEMA_signal_1622 ;
    wire new_AGEMA_signal_1624 ;
    wire new_AGEMA_signal_1626 ;
    wire new_AGEMA_signal_1628 ;
    wire new_AGEMA_signal_1630 ;
    wire new_AGEMA_signal_1632 ;
    wire new_AGEMA_signal_1634 ;
    wire new_AGEMA_signal_1636 ;
    wire new_AGEMA_signal_1638 ;
    wire new_AGEMA_signal_1640 ;
    wire new_AGEMA_signal_1642 ;
    wire new_AGEMA_signal_1644 ;
    wire new_AGEMA_signal_1646 ;
    wire new_AGEMA_signal_1648 ;
    wire new_AGEMA_signal_1650 ;
    wire new_AGEMA_signal_1652 ;
    wire new_AGEMA_signal_1654 ;
    wire new_AGEMA_signal_1656 ;
    wire new_AGEMA_signal_1658 ;
    wire new_AGEMA_signal_1660 ;
    wire new_AGEMA_signal_1662 ;
    wire new_AGEMA_signal_1664 ;
    wire new_AGEMA_signal_1666 ;
    wire new_AGEMA_signal_1668 ;
    wire new_AGEMA_signal_1670 ;
    wire new_AGEMA_signal_1672 ;
    wire new_AGEMA_signal_1674 ;
    wire new_AGEMA_signal_1676 ;
    wire new_AGEMA_signal_1678 ;
    wire new_AGEMA_signal_1680 ;
    wire new_AGEMA_signal_1682 ;
    wire new_AGEMA_signal_1684 ;
    wire new_AGEMA_signal_1686 ;
    wire new_AGEMA_signal_1688 ;
    wire new_AGEMA_signal_1690 ;
    wire new_AGEMA_signal_1692 ;
    wire new_AGEMA_signal_1694 ;
    wire new_AGEMA_signal_1696 ;
    wire new_AGEMA_signal_1698 ;
    wire new_AGEMA_signal_1700 ;
    wire new_AGEMA_signal_1702 ;
    wire new_AGEMA_signal_1704 ;
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
    wire new_AGEMA_signal_1789 ;
    wire new_AGEMA_signal_1790 ;
    wire new_AGEMA_signal_1791 ;
    wire new_AGEMA_signal_1792 ;
    wire new_AGEMA_signal_1793 ;
    wire new_AGEMA_signal_1794 ;
    wire new_AGEMA_signal_1795 ;
    wire new_AGEMA_signal_1796 ;
    wire new_AGEMA_signal_1797 ;
    wire new_AGEMA_signal_1798 ;
    wire new_AGEMA_signal_1799 ;
    wire new_AGEMA_signal_1800 ;
    wire new_AGEMA_signal_1801 ;
    wire new_AGEMA_signal_1802 ;
    wire new_AGEMA_signal_1803 ;
    wire new_AGEMA_signal_1804 ;
    wire new_AGEMA_signal_1805 ;
    wire new_AGEMA_signal_1806 ;
    wire new_AGEMA_signal_1807 ;
    wire new_AGEMA_signal_1808 ;
    wire new_AGEMA_signal_1809 ;
    wire new_AGEMA_signal_1810 ;
    wire new_AGEMA_signal_1811 ;
    wire new_AGEMA_signal_1812 ;
    wire new_AGEMA_signal_1813 ;
    wire new_AGEMA_signal_1814 ;
    wire new_AGEMA_signal_1815 ;
    wire new_AGEMA_signal_1816 ;
    wire new_AGEMA_signal_1817 ;
    wire new_AGEMA_signal_1818 ;
    wire new_AGEMA_signal_1819 ;
    wire new_AGEMA_signal_1820 ;
    wire new_AGEMA_signal_1821 ;
    wire new_AGEMA_signal_1822 ;
    wire new_AGEMA_signal_1823 ;
    wire new_AGEMA_signal_1824 ;
    wire new_AGEMA_signal_1825 ;
    wire new_AGEMA_signal_1826 ;
    wire new_AGEMA_signal_1827 ;
    wire new_AGEMA_signal_1828 ;
    wire new_AGEMA_signal_1829 ;
    wire new_AGEMA_signal_1830 ;
    wire new_AGEMA_signal_1831 ;
    wire new_AGEMA_signal_1832 ;
    wire new_AGEMA_signal_1833 ;
    wire new_AGEMA_signal_1834 ;
    wire new_AGEMA_signal_1835 ;
    wire new_AGEMA_signal_1836 ;
    wire new_AGEMA_signal_1837 ;
    wire new_AGEMA_signal_1838 ;
    wire new_AGEMA_signal_1839 ;
    wire new_AGEMA_signal_1840 ;
    wire new_AGEMA_signal_1841 ;
    wire new_AGEMA_signal_1842 ;
    wire new_AGEMA_signal_1843 ;
    wire new_AGEMA_signal_1844 ;
    wire new_AGEMA_signal_1845 ;
    wire new_AGEMA_signal_1846 ;
    wire new_AGEMA_signal_1847 ;
    wire new_AGEMA_signal_1848 ;
    wire new_AGEMA_signal_1849 ;
    wire new_AGEMA_signal_1850 ;
    wire new_AGEMA_signal_1851 ;
    wire new_AGEMA_signal_1852 ;
    wire new_AGEMA_signal_1853 ;
    wire new_AGEMA_signal_1854 ;
    wire new_AGEMA_signal_1855 ;
    wire new_AGEMA_signal_1856 ;
    wire new_AGEMA_signal_1857 ;
    wire new_AGEMA_signal_1858 ;
    wire new_AGEMA_signal_1859 ;
    wire new_AGEMA_signal_1860 ;
    wire new_AGEMA_signal_1861 ;
    wire new_AGEMA_signal_1862 ;
    wire new_AGEMA_signal_1863 ;
    wire new_AGEMA_signal_1864 ;
    wire new_AGEMA_signal_1865 ;
    wire new_AGEMA_signal_1866 ;
    wire new_AGEMA_signal_1867 ;
    wire new_AGEMA_signal_1868 ;
    wire new_AGEMA_signal_1869 ;
    wire new_AGEMA_signal_1870 ;
    wire new_AGEMA_signal_1871 ;
    wire new_AGEMA_signal_1872 ;
    wire new_AGEMA_signal_1873 ;
    wire new_AGEMA_signal_1874 ;
    wire new_AGEMA_signal_1875 ;
    wire new_AGEMA_signal_1876 ;
    wire new_AGEMA_signal_1877 ;
    wire new_AGEMA_signal_1878 ;
    wire new_AGEMA_signal_1879 ;
    wire new_AGEMA_signal_1880 ;
    wire new_AGEMA_signal_1881 ;
    wire new_AGEMA_signal_1882 ;
    wire new_AGEMA_signal_1883 ;
    wire new_AGEMA_signal_1884 ;
    wire new_AGEMA_signal_1885 ;
    wire new_AGEMA_signal_1886 ;
    wire new_AGEMA_signal_1887 ;
    wire new_AGEMA_signal_1888 ;
    wire new_AGEMA_signal_1889 ;
    wire new_AGEMA_signal_1890 ;
    wire new_AGEMA_signal_1891 ;
    wire new_AGEMA_signal_1892 ;
    wire new_AGEMA_signal_1893 ;
    wire new_AGEMA_signal_1894 ;
    wire new_AGEMA_signal_1895 ;
    wire new_AGEMA_signal_1896 ;
    wire new_AGEMA_signal_1897 ;
    wire new_AGEMA_signal_1898 ;
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
    
    xor_COMAR  in_xor_p00 ( .common_out(common_out), .a ({plaintext_s1[ 0], plaintext_s0[ 0]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_plaintext_s1[ 0], correct_plaintext_s0[ 0]}) ) ;
    xor_COMAR  in_xor_p01 ( .common_out(common_out), .a ({plaintext_s1[ 1], plaintext_s0[ 1]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_plaintext_s1[ 1], correct_plaintext_s0[ 1]}) ) ;
    xor_COMAR  in_xor_p02 ( .common_out(common_out), .a ({plaintext_s1[ 2], plaintext_s0[ 2]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_plaintext_s1[ 2], correct_plaintext_s0[ 2]}) ) ;
    xor_COMAR  in_xor_p03 ( .common_out(common_out), .a ({plaintext_s1[ 3], plaintext_s0[ 3]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_plaintext_s1[ 3], correct_plaintext_s0[ 3]}) ) ;
    xor_COMAR  in_xor_p04 ( .common_out(common_out), .a ({plaintext_s1[ 4], plaintext_s0[ 4]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_plaintext_s1[ 4], correct_plaintext_s0[ 4]}) ) ;
    xor_COMAR  in_xor_p05 ( .common_out(common_out), .a ({plaintext_s1[ 5], plaintext_s0[ 5]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_plaintext_s1[ 5], correct_plaintext_s0[ 5]}) ) ;
    xor_COMAR  in_xor_p06 ( .common_out(common_out), .a ({plaintext_s1[ 6], plaintext_s0[ 6]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_plaintext_s1[ 6], correct_plaintext_s0[ 6]}) ) ;
    xor_COMAR  in_xor_p07 ( .common_out(common_out), .a ({plaintext_s1[ 7], plaintext_s0[ 7]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_plaintext_s1[ 7], correct_plaintext_s0[ 7]}) ) ;
    xor_COMAR  in_xor_p08 ( .common_out(common_out), .a ({plaintext_s1[ 8], plaintext_s0[ 8]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_plaintext_s1[ 8], correct_plaintext_s0[ 8]}) ) ;
    xor_COMAR  in_xor_p09 ( .common_out(common_out), .a ({plaintext_s1[ 9], plaintext_s0[ 9]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_plaintext_s1[ 9], correct_plaintext_s0[ 9]}) ) ;
    xor_COMAR  in_xor_p10 ( .common_out(common_out), .a ({plaintext_s1[10], plaintext_s0[10]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_plaintext_s1[10], correct_plaintext_s0[10]}) ) ;
    xor_COMAR  in_xor_p11 ( .common_out(common_out), .a ({plaintext_s1[11], plaintext_s0[11]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_plaintext_s1[11], correct_plaintext_s0[11]}) ) ;
    xor_COMAR  in_xor_p12 ( .common_out(common_out), .a ({plaintext_s1[12], plaintext_s0[12]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_plaintext_s1[12], correct_plaintext_s0[12]}) ) ;
    xor_COMAR  in_xor_p13 ( .common_out(common_out), .a ({plaintext_s1[13], plaintext_s0[13]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_plaintext_s1[13], correct_plaintext_s0[13]}) ) ;
    xor_COMAR  in_xor_p14 ( .common_out(common_out), .a ({plaintext_s1[14], plaintext_s0[14]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_plaintext_s1[14], correct_plaintext_s0[14]}) ) ;
    xor_COMAR  in_xor_p15 ( .common_out(common_out), .a ({plaintext_s1[15], plaintext_s0[15]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_plaintext_s1[15], correct_plaintext_s0[15]}) ) ;
    xor_COMAR  in_xor_p16 ( .common_out(common_out), .a ({plaintext_s1[16], plaintext_s0[16]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_plaintext_s1[16], correct_plaintext_s0[16]}) ) ;
    xor_COMAR  in_xor_p17 ( .common_out(common_out), .a ({plaintext_s1[17], plaintext_s0[17]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_plaintext_s1[17], correct_plaintext_s0[17]}) ) ;
    xor_COMAR  in_xor_p18 ( .common_out(common_out), .a ({plaintext_s1[18], plaintext_s0[18]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_plaintext_s1[18], correct_plaintext_s0[18]}) ) ;
    xor_COMAR  in_xor_p19 ( .common_out(common_out), .a ({plaintext_s1[19], plaintext_s0[19]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_plaintext_s1[19], correct_plaintext_s0[19]}) ) ;
    xor_COMAR  in_xor_p20 ( .common_out(common_out), .a ({plaintext_s1[20], plaintext_s0[20]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_plaintext_s1[20], correct_plaintext_s0[20]}) ) ;
    xor_COMAR  in_xor_p21 ( .common_out(common_out), .a ({plaintext_s1[21], plaintext_s0[21]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_plaintext_s1[21], correct_plaintext_s0[21]}) ) ;
    xor_COMAR  in_xor_p22 ( .common_out(common_out), .a ({plaintext_s1[22], plaintext_s0[22]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_plaintext_s1[22], correct_plaintext_s0[22]}) ) ;
    xor_COMAR  in_xor_p23 ( .common_out(common_out), .a ({plaintext_s1[23], plaintext_s0[23]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_plaintext_s1[23], correct_plaintext_s0[23]}) ) ;
    xor_COMAR  in_xor_p24 ( .common_out(common_out), .a ({plaintext_s1[24], plaintext_s0[24]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_plaintext_s1[24], correct_plaintext_s0[24]}) ) ;
    xor_COMAR  in_xor_p25 ( .common_out(common_out), .a ({plaintext_s1[25], plaintext_s0[25]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_plaintext_s1[25], correct_plaintext_s0[25]}) ) ;
    xor_COMAR  in_xor_p26 ( .common_out(common_out), .a ({plaintext_s1[26], plaintext_s0[26]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_plaintext_s1[26], correct_plaintext_s0[26]}) ) ;
    xor_COMAR  in_xor_p27 ( .common_out(common_out), .a ({plaintext_s1[27], plaintext_s0[27]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_plaintext_s1[27], correct_plaintext_s0[27]}) ) ;
    xor_COMAR  in_xor_p28 ( .common_out(common_out), .a ({plaintext_s1[28], plaintext_s0[28]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_plaintext_s1[28], correct_plaintext_s0[28]}) ) ;
    xor_COMAR  in_xor_p29 ( .common_out(common_out), .a ({plaintext_s1[29], plaintext_s0[29]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_plaintext_s1[29], correct_plaintext_s0[29]}) ) ;
    xor_COMAR  in_xor_p30 ( .common_out(common_out), .a ({plaintext_s1[30], plaintext_s0[30]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_plaintext_s1[30], correct_plaintext_s0[30]}) ) ;
    xor_COMAR  in_xor_p31 ( .common_out(common_out), .a ({plaintext_s1[31], plaintext_s0[31]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_plaintext_s1[31], correct_plaintext_s0[31]}) ) ;
    xor_COMAR  in_xor_p32 ( .common_out(common_out), .a ({plaintext_s1[32], plaintext_s0[32]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_plaintext_s1[32], correct_plaintext_s0[32]}) ) ;
    xor_COMAR  in_xor_p33 ( .common_out(common_out), .a ({plaintext_s1[33], plaintext_s0[33]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_plaintext_s1[33], correct_plaintext_s0[33]}) ) ;
    xor_COMAR  in_xor_p34 ( .common_out(common_out), .a ({plaintext_s1[34], plaintext_s0[34]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_plaintext_s1[34], correct_plaintext_s0[34]}) ) ;
    xor_COMAR  in_xor_p35 ( .common_out(common_out), .a ({plaintext_s1[35], plaintext_s0[35]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_plaintext_s1[35], correct_plaintext_s0[35]}) ) ;
    xor_COMAR  in_xor_p36 ( .common_out(common_out), .a ({plaintext_s1[36], plaintext_s0[36]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_plaintext_s1[36], correct_plaintext_s0[36]}) ) ;
    xor_COMAR  in_xor_p37 ( .common_out(common_out), .a ({plaintext_s1[37], plaintext_s0[37]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_plaintext_s1[37], correct_plaintext_s0[37]}) ) ;
    xor_COMAR  in_xor_p38 ( .common_out(common_out), .a ({plaintext_s1[38], plaintext_s0[38]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_plaintext_s1[38], correct_plaintext_s0[38]}) ) ;
    xor_COMAR  in_xor_p39 ( .common_out(common_out), .a ({plaintext_s1[39], plaintext_s0[39]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_plaintext_s1[39], correct_plaintext_s0[39]}) ) ;
    xor_COMAR  in_xor_p40 ( .common_out(common_out), .a ({plaintext_s1[40], plaintext_s0[40]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_plaintext_s1[40], correct_plaintext_s0[40]}) ) ;
    xor_COMAR  in_xor_p41 ( .common_out(common_out), .a ({plaintext_s1[41], plaintext_s0[41]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_plaintext_s1[41], correct_plaintext_s0[41]}) ) ;
    xor_COMAR  in_xor_p42 ( .common_out(common_out), .a ({plaintext_s1[42], plaintext_s0[42]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_plaintext_s1[42], correct_plaintext_s0[42]}) ) ;
    xor_COMAR  in_xor_p43 ( .common_out(common_out), .a ({plaintext_s1[43], plaintext_s0[43]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_plaintext_s1[43], correct_plaintext_s0[43]}) ) ;
    xor_COMAR  in_xor_p44 ( .common_out(common_out), .a ({plaintext_s1[44], plaintext_s0[44]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_plaintext_s1[44], correct_plaintext_s0[44]}) ) ;
    xor_COMAR  in_xor_p45 ( .common_out(common_out), .a ({plaintext_s1[45], plaintext_s0[45]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_plaintext_s1[45], correct_plaintext_s0[45]}) ) ;
    xor_COMAR  in_xor_p46 ( .common_out(common_out), .a ({plaintext_s1[46], plaintext_s0[46]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_plaintext_s1[46], correct_plaintext_s0[46]}) ) ;
    xor_COMAR  in_xor_p47 ( .common_out(common_out), .a ({plaintext_s1[47], plaintext_s0[47]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_plaintext_s1[47], correct_plaintext_s0[47]}) ) ;
    xor_COMAR  in_xor_p48 ( .common_out(common_out), .a ({plaintext_s1[48], plaintext_s0[48]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_plaintext_s1[48], correct_plaintext_s0[48]}) ) ;
    xor_COMAR  in_xor_p49 ( .common_out(common_out), .a ({plaintext_s1[49], plaintext_s0[49]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_plaintext_s1[49], correct_plaintext_s0[49]}) ) ;
    xor_COMAR  in_xor_p50 ( .common_out(common_out), .a ({plaintext_s1[50], plaintext_s0[50]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_plaintext_s1[50], correct_plaintext_s0[50]}) ) ;
    xor_COMAR  in_xor_p51 ( .common_out(common_out), .a ({plaintext_s1[51], plaintext_s0[51]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_plaintext_s1[51], correct_plaintext_s0[51]}) ) ;
    xor_COMAR  in_xor_p52 ( .common_out(common_out), .a ({plaintext_s1[52], plaintext_s0[52]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_plaintext_s1[52], correct_plaintext_s0[52]}) ) ;
    xor_COMAR  in_xor_p53 ( .common_out(common_out), .a ({plaintext_s1[53], plaintext_s0[53]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_plaintext_s1[53], correct_plaintext_s0[53]}) ) ;
    xor_COMAR  in_xor_p54 ( .common_out(common_out), .a ({plaintext_s1[54], plaintext_s0[54]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_plaintext_s1[54], correct_plaintext_s0[54]}) ) ;
    xor_COMAR  in_xor_p55 ( .common_out(common_out), .a ({plaintext_s1[55], plaintext_s0[55]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_plaintext_s1[55], correct_plaintext_s0[55]}) ) ;
    xor_COMAR  in_xor_p56 ( .common_out(common_out), .a ({plaintext_s1[56], plaintext_s0[56]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_plaintext_s1[56], correct_plaintext_s0[56]}) ) ;
    xor_COMAR  in_xor_p57 ( .common_out(common_out), .a ({plaintext_s1[57], plaintext_s0[57]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_plaintext_s1[57], correct_plaintext_s0[57]}) ) ;
    xor_COMAR  in_xor_p58 ( .common_out(common_out), .a ({plaintext_s1[58], plaintext_s0[58]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_plaintext_s1[58], correct_plaintext_s0[58]}) ) ;
    xor_COMAR  in_xor_p59 ( .common_out(common_out), .a ({plaintext_s1[59], plaintext_s0[59]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_plaintext_s1[59], correct_plaintext_s0[59]}) ) ;
    xor_COMAR  in_xor_p60 ( .common_out(common_out), .a ({plaintext_s1[60], plaintext_s0[60]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_plaintext_s1[60], correct_plaintext_s0[60]}) ) ;
    xor_COMAR  in_xor_p61 ( .common_out(common_out), .a ({plaintext_s1[61], plaintext_s0[61]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_plaintext_s1[61], correct_plaintext_s0[61]}) ) ;
    xor_COMAR  in_xor_p62 ( .common_out(common_out), .a ({plaintext_s1[62], plaintext_s0[62]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_plaintext_s1[62], correct_plaintext_s0[62]}) ) ;
    xor_COMAR  in_xor_p63 ( .common_out(common_out), .a ({plaintext_s1[63], plaintext_s0[63]}), .b ({1'b0, 1'b0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({correct_plaintext_s1[63], correct_plaintext_s0[63]}) ) ;
    
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

    
    reg1 rst_reg1 (.clk(clk), .d(rst), .q(temp_rst));
    reg1 rst_reg2 (.clk(clk), .d(temp_rst), .q(correct_rst));
    
    //-----------------------------------------------------













    /* cells in depth 0 */
    not_masked #(.security_order(1), .pipeline(0)) AddKeyConstXOR_XORInst_0_3_U2 ( .a ({new_AGEMA_signal_1533, SelectedKey[43]}), .b ({new_AGEMA_signal_1710, AddKeyConstXOR_XORInst_0_3_n1}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_0_U4 ( .a ({ciphertext_s1[60], ciphertext_s0[60]}), .b ({new_AGEMA_signal_1024, SubCellInst_SboxInst_0_n7}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_0_U2 ( .a ({ciphertext_s1[63], ciphertext_s0[63]}), .b ({new_AGEMA_signal_1025, SubCellInst_SboxInst_0_n8}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_0_U1 ( .a ({ciphertext_s1[62], ciphertext_s0[62]}), .b ({new_AGEMA_signal_1026, SubCellInst_SboxInst_0_n9}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_1_U4 ( .a ({ciphertext_s1[48], ciphertext_s0[48]}), .b ({new_AGEMA_signal_1032, SubCellInst_SboxInst_1_n7}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_1_U2 ( .a ({ciphertext_s1[51], ciphertext_s0[51]}), .b ({new_AGEMA_signal_1033, SubCellInst_SboxInst_1_n8}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_1_U1 ( .a ({ciphertext_s1[50], ciphertext_s0[50]}), .b ({new_AGEMA_signal_1034, SubCellInst_SboxInst_1_n9}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_2_U4 ( .a ({ciphertext_s1[52], ciphertext_s0[52]}), .b ({new_AGEMA_signal_1040, SubCellInst_SboxInst_2_n7}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_2_U2 ( .a ({ciphertext_s1[55], ciphertext_s0[55]}), .b ({new_AGEMA_signal_1041, SubCellInst_SboxInst_2_n8}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_2_U1 ( .a ({ciphertext_s1[54], ciphertext_s0[54]}), .b ({new_AGEMA_signal_1042, SubCellInst_SboxInst_2_n9}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_3_U4 ( .a ({ciphertext_s1[56], ciphertext_s0[56]}), .b ({new_AGEMA_signal_1048, SubCellInst_SboxInst_3_n7}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_3_U2 ( .a ({ciphertext_s1[59], ciphertext_s0[59]}), .b ({new_AGEMA_signal_1049, SubCellInst_SboxInst_3_n8}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_3_U1 ( .a ({ciphertext_s1[58], ciphertext_s0[58]}), .b ({new_AGEMA_signal_1050, SubCellInst_SboxInst_3_n9}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_4_U4 ( .a ({ciphertext_s1[32], ciphertext_s0[32]}), .b ({new_AGEMA_signal_1056, SubCellInst_SboxInst_4_n7}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_4_U2 ( .a ({ciphertext_s1[35], ciphertext_s0[35]}), .b ({new_AGEMA_signal_1057, SubCellInst_SboxInst_4_n8}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_4_U1 ( .a ({ciphertext_s1[34], ciphertext_s0[34]}), .b ({new_AGEMA_signal_1058, SubCellInst_SboxInst_4_n9}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_5_U4 ( .a ({ciphertext_s1[44], ciphertext_s0[44]}), .b ({new_AGEMA_signal_1064, SubCellInst_SboxInst_5_n7}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_5_U2 ( .a ({ciphertext_s1[47], ciphertext_s0[47]}), .b ({new_AGEMA_signal_1065, SubCellInst_SboxInst_5_n8}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_5_U1 ( .a ({ciphertext_s1[46], ciphertext_s0[46]}), .b ({new_AGEMA_signal_1066, SubCellInst_SboxInst_5_n9}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_6_U4 ( .a ({ciphertext_s1[40], ciphertext_s0[40]}), .b ({new_AGEMA_signal_1072, SubCellInst_SboxInst_6_n7}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_6_U2 ( .a ({ciphertext_s1[43], ciphertext_s0[43]}), .b ({new_AGEMA_signal_1073, SubCellInst_SboxInst_6_n8}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_6_U1 ( .a ({ciphertext_s1[42], ciphertext_s0[42]}), .b ({new_AGEMA_signal_1074, SubCellInst_SboxInst_6_n9}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_7_U4 ( .a ({ciphertext_s1[36], ciphertext_s0[36]}), .b ({new_AGEMA_signal_1080, SubCellInst_SboxInst_7_n7}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_7_U2 ( .a ({ciphertext_s1[39], ciphertext_s0[39]}), .b ({new_AGEMA_signal_1081, SubCellInst_SboxInst_7_n8}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_7_U1 ( .a ({ciphertext_s1[38], ciphertext_s0[38]}), .b ({new_AGEMA_signal_1082, SubCellInst_SboxInst_7_n9}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_8_U4 ( .a ({ciphertext_s1[16], ciphertext_s0[16]}), .b ({new_AGEMA_signal_1088, SubCellInst_SboxInst_8_n7}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_8_U2 ( .a ({ciphertext_s1[19], ciphertext_s0[19]}), .b ({new_AGEMA_signal_1089, SubCellInst_SboxInst_8_n8}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_8_U1 ( .a ({ciphertext_s1[18], ciphertext_s0[18]}), .b ({new_AGEMA_signal_1090, SubCellInst_SboxInst_8_n9}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_9_U4 ( .a ({ciphertext_s1[28], ciphertext_s0[28]}), .b ({new_AGEMA_signal_1096, SubCellInst_SboxInst_9_n7}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_9_U2 ( .a ({ciphertext_s1[31], ciphertext_s0[31]}), .b ({new_AGEMA_signal_1097, SubCellInst_SboxInst_9_n8}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_9_U1 ( .a ({ciphertext_s1[30], ciphertext_s0[30]}), .b ({new_AGEMA_signal_1098, SubCellInst_SboxInst_9_n9}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_10_U4 ( .a ({ciphertext_s1[24], ciphertext_s0[24]}), .b ({new_AGEMA_signal_1104, SubCellInst_SboxInst_10_n7}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_10_U2 ( .a ({ciphertext_s1[27], ciphertext_s0[27]}), .b ({new_AGEMA_signal_1105, SubCellInst_SboxInst_10_n8}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_10_U1 ( .a ({ciphertext_s1[26], ciphertext_s0[26]}), .b ({new_AGEMA_signal_1106, SubCellInst_SboxInst_10_n9}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_11_U4 ( .a ({ciphertext_s1[20], ciphertext_s0[20]}), .b ({new_AGEMA_signal_1112, SubCellInst_SboxInst_11_n7}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_11_U2 ( .a ({ciphertext_s1[23], ciphertext_s0[23]}), .b ({new_AGEMA_signal_1113, SubCellInst_SboxInst_11_n8}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_11_U1 ( .a ({ciphertext_s1[22], ciphertext_s0[22]}), .b ({new_AGEMA_signal_1114, SubCellInst_SboxInst_11_n9}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_12_U4 ( .a ({ciphertext_s1[4], ciphertext_s0[4]}), .b ({new_AGEMA_signal_1120, SubCellInst_SboxInst_12_n7}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_12_U2 ( .a ({ciphertext_s1[7], ciphertext_s0[7]}), .b ({new_AGEMA_signal_1121, SubCellInst_SboxInst_12_n8}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_12_U1 ( .a ({ciphertext_s1[6], ciphertext_s0[6]}), .b ({new_AGEMA_signal_1122, SubCellInst_SboxInst_12_n9}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_13_U4 ( .a ({ciphertext_s1[8], ciphertext_s0[8]}), .b ({new_AGEMA_signal_1128, SubCellInst_SboxInst_13_n7}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_13_U2 ( .a ({ciphertext_s1[11], ciphertext_s0[11]}), .b ({new_AGEMA_signal_1129, SubCellInst_SboxInst_13_n8}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_13_U1 ( .a ({ciphertext_s1[10], ciphertext_s0[10]}), .b ({new_AGEMA_signal_1130, SubCellInst_SboxInst_13_n9}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_14_U4 ( .a ({ciphertext_s1[12], ciphertext_s0[12]}), .b ({new_AGEMA_signal_1136, SubCellInst_SboxInst_14_n7}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_14_U2 ( .a ({ciphertext_s1[15], ciphertext_s0[15]}), .b ({new_AGEMA_signal_1137, SubCellInst_SboxInst_14_n8}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_14_U1 ( .a ({ciphertext_s1[14], ciphertext_s0[14]}), .b ({new_AGEMA_signal_1138, SubCellInst_SboxInst_14_n9}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_15_U4 ( .a ({ciphertext_s1[0], ciphertext_s0[0]}), .b ({new_AGEMA_signal_1144, SubCellInst_SboxInst_15_n7}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_15_U2 ( .a ({ciphertext_s1[3], ciphertext_s0[3]}), .b ({new_AGEMA_signal_1145, SubCellInst_SboxInst_15_n8}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_15_U1 ( .a ({ciphertext_s1[2], ciphertext_s0[2]}), .b ({new_AGEMA_signal_1146, SubCellInst_SboxInst_15_n9}) ) ;
    INV_X1 KeyMUX_U3 ( .A (selects[0]), .ZN (KeyMUX_n9) ) ;
    INV_X1 KeyMUX_U2 ( .A (KeyMUX_n9), .ZN (KeyMUX_n8) ) ;
    INV_X1 KeyMUX_U1 ( .A (KeyMUX_n9), .ZN (KeyMUX_n7) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) KeyMUX_MUXInst_0_U1 ( .s (selects[0]), .b ({correct_key_s1[64], correct_key_s0[64]}), .a ({correct_key_s1[0], correct_key_s0[0]}), .c ({new_AGEMA_signal_1245, SelectedKey[0]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) KeyMUX_MUXInst_1_U1 ( .s (KeyMUX_n8), .b ({correct_key_s1[65], correct_key_s0[65]}), .a ({correct_key_s1[1], correct_key_s0[1]}), .c ({new_AGEMA_signal_1437, SelectedKey[1]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) KeyMUX_MUXInst_2_U1 ( .s (selects[0]), .b ({correct_key_s1[66], correct_key_s0[66]}), .a ({correct_key_s1[2], correct_key_s0[2]}), .c ({new_AGEMA_signal_1248, SelectedKey[2]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) KeyMUX_MUXInst_3_U1 ( .s (KeyMUX_n8), .b ({correct_key_s1[67], correct_key_s0[67]}), .a ({correct_key_s1[3], correct_key_s0[3]}), .c ({new_AGEMA_signal_1440, SelectedKey[3]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) KeyMUX_MUXInst_4_U1 ( .s (KeyMUX_n8), .b ({correct_key_s1[68], correct_key_s0[68]}), .a ({correct_key_s1[4], correct_key_s0[4]}), .c ({new_AGEMA_signal_1443, SelectedKey[4]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) KeyMUX_MUXInst_5_U1 ( .s (KeyMUX_n8), .b ({correct_key_s1[69], correct_key_s0[69]}), .a ({correct_key_s1[5], correct_key_s0[5]}), .c ({new_AGEMA_signal_1446, SelectedKey[5]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) KeyMUX_MUXInst_6_U1 ( .s (KeyMUX_n8), .b ({correct_key_s1[70], correct_key_s0[70]}), .a ({correct_key_s1[6], correct_key_s0[6]}), .c ({new_AGEMA_signal_1449, SelectedKey[6]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) KeyMUX_MUXInst_7_U1 ( .s (KeyMUX_n8), .b ({correct_key_s1[71], correct_key_s0[71]}), .a ({correct_key_s1[7], correct_key_s0[7]}), .c ({new_AGEMA_signal_1452, SelectedKey[7]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) KeyMUX_MUXInst_8_U1 ( .s (KeyMUX_n8), .b ({correct_key_s1[72], correct_key_s0[72]}), .a ({correct_key_s1[8], correct_key_s0[8]}), .c ({new_AGEMA_signal_1455, SelectedKey[8]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) KeyMUX_MUXInst_9_U1 ( .s (KeyMUX_n8), .b ({correct_key_s1[73], correct_key_s0[73]}), .a ({correct_key_s1[9], correct_key_s0[9]}), .c ({new_AGEMA_signal_1458, SelectedKey[9]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) KeyMUX_MUXInst_10_U1 ( .s (KeyMUX_n8), .b ({correct_key_s1[74], correct_key_s0[74]}), .a ({correct_key_s1[10], correct_key_s0[10]}), .c ({new_AGEMA_signal_1461, SelectedKey[10]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) KeyMUX_MUXInst_11_U1 ( .s (KeyMUX_n8), .b ({correct_key_s1[75], correct_key_s0[75]}), .a ({correct_key_s1[11], correct_key_s0[11]}), .c ({new_AGEMA_signal_1464, SelectedKey[11]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) KeyMUX_MUXInst_12_U1 ( .s (KeyMUX_n8), .b ({correct_key_s1[76], correct_key_s0[76]}), .a ({correct_key_s1[12], correct_key_s0[12]}), .c ({new_AGEMA_signal_1467, SelectedKey[12]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) KeyMUX_MUXInst_13_U1 ( .s (KeyMUX_n8), .b ({correct_key_s1[77], correct_key_s0[77]}), .a ({correct_key_s1[13], correct_key_s0[13]}), .c ({new_AGEMA_signal_1470, SelectedKey[13]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) KeyMUX_MUXInst_14_U1 ( .s (KeyMUX_n8), .b ({correct_key_s1[78], correct_key_s0[78]}), .a ({correct_key_s1[14], correct_key_s0[14]}), .c ({new_AGEMA_signal_1473, SelectedKey[14]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) KeyMUX_MUXInst_15_U1 ( .s (KeyMUX_n8), .b ({correct_key_s1[79], correct_key_s0[79]}), .a ({correct_key_s1[15], correct_key_s0[15]}), .c ({new_AGEMA_signal_1476, SelectedKey[15]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) KeyMUX_MUXInst_16_U1 ( .s (KeyMUX_n8), .b ({correct_key_s1[80], correct_key_s0[80]}), .a ({correct_key_s1[16], correct_key_s0[16]}), .c ({new_AGEMA_signal_1479, SelectedKey[16]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) KeyMUX_MUXInst_17_U1 ( .s (KeyMUX_n8), .b ({correct_key_s1[81], correct_key_s0[81]}), .a ({correct_key_s1[17], correct_key_s0[17]}), .c ({new_AGEMA_signal_1482, SelectedKey[17]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) KeyMUX_MUXInst_18_U1 ( .s (KeyMUX_n8), .b ({correct_key_s1[82], correct_key_s0[82]}), .a ({correct_key_s1[18], correct_key_s0[18]}), .c ({new_AGEMA_signal_1485, SelectedKey[18]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) KeyMUX_MUXInst_19_U1 ( .s (KeyMUX_n8), .b ({correct_key_s1[83], correct_key_s0[83]}), .a ({correct_key_s1[19], correct_key_s0[19]}), .c ({new_AGEMA_signal_1488, SelectedKey[19]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) KeyMUX_MUXInst_20_U1 ( .s (KeyMUX_n8), .b ({correct_key_s1[84], correct_key_s0[84]}), .a ({correct_key_s1[20], correct_key_s0[20]}), .c ({new_AGEMA_signal_1491, SelectedKey[20]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) KeyMUX_MUXInst_21_U1 ( .s (KeyMUX_n8), .b ({correct_key_s1[85], correct_key_s0[85]}), .a ({correct_key_s1[21], correct_key_s0[21]}), .c ({new_AGEMA_signal_1494, SelectedKey[21]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) KeyMUX_MUXInst_22_U1 ( .s (selects[0]), .b ({correct_key_s1[86], correct_key_s0[86]}), .a ({correct_key_s1[22], correct_key_s0[22]}), .c ({new_AGEMA_signal_1251, SelectedKey[22]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) KeyMUX_MUXInst_23_U1 ( .s (selects[0]), .b ({correct_key_s1[87], correct_key_s0[87]}), .a ({correct_key_s1[23], correct_key_s0[23]}), .c ({new_AGEMA_signal_1254, SelectedKey[23]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) KeyMUX_MUXInst_24_U1 ( .s (selects[0]), .b ({correct_key_s1[88], correct_key_s0[88]}), .a ({correct_key_s1[24], correct_key_s0[24]}), .c ({new_AGEMA_signal_1257, SelectedKey[24]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) KeyMUX_MUXInst_25_U1 ( .s (selects[0]), .b ({correct_key_s1[89], correct_key_s0[89]}), .a ({correct_key_s1[25], correct_key_s0[25]}), .c ({new_AGEMA_signal_1260, SelectedKey[25]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) KeyMUX_MUXInst_26_U1 ( .s (selects[0]), .b ({correct_key_s1[90], correct_key_s0[90]}), .a ({correct_key_s1[26], correct_key_s0[26]}), .c ({new_AGEMA_signal_1263, SelectedKey[26]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) KeyMUX_MUXInst_27_U1 ( .s (selects[0]), .b ({correct_key_s1[91], correct_key_s0[91]}), .a ({correct_key_s1[27], correct_key_s0[27]}), .c ({new_AGEMA_signal_1266, SelectedKey[27]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) KeyMUX_MUXInst_28_U1 ( .s (KeyMUX_n7), .b ({correct_key_s1[92], correct_key_s0[92]}), .a ({correct_key_s1[28], correct_key_s0[28]}), .c ({new_AGEMA_signal_1497, SelectedKey[28]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) KeyMUX_MUXInst_29_U1 ( .s (KeyMUX_n7), .b ({correct_key_s1[93], correct_key_s0[93]}), .a ({correct_key_s1[29], correct_key_s0[29]}), .c ({new_AGEMA_signal_1500, SelectedKey[29]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) KeyMUX_MUXInst_30_U1 ( .s (KeyMUX_n7), .b ({correct_key_s1[94], correct_key_s0[94]}), .a ({correct_key_s1[30], correct_key_s0[30]}), .c ({new_AGEMA_signal_1503, SelectedKey[30]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) KeyMUX_MUXInst_31_U1 ( .s (KeyMUX_n7), .b ({correct_key_s1[95], correct_key_s0[95]}), .a ({correct_key_s1[31], correct_key_s0[31]}), .c ({new_AGEMA_signal_1506, SelectedKey[31]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) KeyMUX_MUXInst_32_U1 ( .s (KeyMUX_n7), .b ({correct_key_s1[96], correct_key_s0[96]}), .a ({correct_key_s1[32], correct_key_s0[32]}), .c ({new_AGEMA_signal_1509, SelectedKey[32]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) KeyMUX_MUXInst_33_U1 ( .s (selects[0]), .b ({correct_key_s1[97], correct_key_s0[97]}), .a ({correct_key_s1[33], correct_key_s0[33]}), .c ({new_AGEMA_signal_1269, SelectedKey[33]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) KeyMUX_MUXInst_34_U1 ( .s (KeyMUX_n7), .b ({correct_key_s1[98], correct_key_s0[98]}), .a ({correct_key_s1[34], correct_key_s0[34]}), .c ({new_AGEMA_signal_1512, SelectedKey[34]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) KeyMUX_MUXInst_35_U1 ( .s (KeyMUX_n7), .b ({correct_key_s1[99], correct_key_s0[99]}), .a ({correct_key_s1[35], correct_key_s0[35]}), .c ({new_AGEMA_signal_1515, SelectedKey[35]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) KeyMUX_MUXInst_36_U1 ( .s (selects[0]), .b ({correct_key_s1[100], correct_key_s0[100]}), .a ({correct_key_s1[36], correct_key_s0[36]}), .c ({new_AGEMA_signal_1272, SelectedKey[36]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) KeyMUX_MUXInst_37_U1 ( .s (KeyMUX_n7), .b ({correct_key_s1[101], correct_key_s0[101]}), .a ({correct_key_s1[37], correct_key_s0[37]}), .c ({new_AGEMA_signal_1518, SelectedKey[37]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) KeyMUX_MUXInst_38_U1 ( .s (KeyMUX_n7), .b ({correct_key_s1[102], correct_key_s0[102]}), .a ({correct_key_s1[38], correct_key_s0[38]}), .c ({new_AGEMA_signal_1521, SelectedKey[38]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) KeyMUX_MUXInst_39_U1 ( .s (selects[0]), .b ({correct_key_s1[103], correct_key_s0[103]}), .a ({correct_key_s1[39], correct_key_s0[39]}), .c ({new_AGEMA_signal_1275, SelectedKey[39]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) KeyMUX_MUXInst_40_U1 ( .s (KeyMUX_n7), .b ({correct_key_s1[104], correct_key_s0[104]}), .a ({correct_key_s1[40], correct_key_s0[40]}), .c ({new_AGEMA_signal_1524, SelectedKey[40]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) KeyMUX_MUXInst_41_U1 ( .s (KeyMUX_n7), .b ({correct_key_s1[105], correct_key_s0[105]}), .a ({correct_key_s1[41], correct_key_s0[41]}), .c ({new_AGEMA_signal_1527, SelectedKey[41]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) KeyMUX_MUXInst_42_U1 ( .s (KeyMUX_n7), .b ({correct_key_s1[106], correct_key_s0[106]}), .a ({correct_key_s1[42], correct_key_s0[42]}), .c ({new_AGEMA_signal_1530, SelectedKey[42]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) KeyMUX_MUXInst_43_U1 ( .s (KeyMUX_n7), .b ({correct_key_s1[107], correct_key_s0[107]}), .a ({correct_key_s1[43], correct_key_s0[43]}), .c ({new_AGEMA_signal_1533, SelectedKey[43]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) KeyMUX_MUXInst_44_U1 ( .s (KeyMUX_n7), .b ({correct_key_s1[108], correct_key_s0[108]}), .a ({correct_key_s1[44], correct_key_s0[44]}), .c ({new_AGEMA_signal_1536, SelectedKey[44]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) KeyMUX_MUXInst_45_U1 ( .s (KeyMUX_n7), .b ({correct_key_s1[109], correct_key_s0[109]}), .a ({correct_key_s1[45], correct_key_s0[45]}), .c ({new_AGEMA_signal_1539, SelectedKey[45]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) KeyMUX_MUXInst_46_U1 ( .s (KeyMUX_n7), .b ({correct_key_s1[110], correct_key_s0[110]}), .a ({correct_key_s1[46], correct_key_s0[46]}), .c ({new_AGEMA_signal_1542, SelectedKey[46]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) KeyMUX_MUXInst_47_U1 ( .s (KeyMUX_n7), .b ({correct_key_s1[111], correct_key_s0[111]}), .a ({correct_key_s1[47], correct_key_s0[47]}), .c ({new_AGEMA_signal_1545, SelectedKey[47]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) KeyMUX_MUXInst_48_U1 ( .s (KeyMUX_n7), .b ({correct_key_s1[112], correct_key_s0[112]}), .a ({correct_key_s1[48], correct_key_s0[48]}), .c ({new_AGEMA_signal_1548, SelectedKey[48]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) KeyMUX_MUXInst_49_U1 ( .s (KeyMUX_n7), .b ({correct_key_s1[113], correct_key_s0[113]}), .a ({correct_key_s1[49], correct_key_s0[49]}), .c ({new_AGEMA_signal_1551, SelectedKey[49]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) KeyMUX_MUXInst_50_U1 ( .s (KeyMUX_n7), .b ({correct_key_s1[114], correct_key_s0[114]}), .a ({correct_key_s1[50], correct_key_s0[50]}), .c ({new_AGEMA_signal_1554, SelectedKey[50]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) KeyMUX_MUXInst_51_U1 ( .s (KeyMUX_n7), .b ({correct_key_s1[115], correct_key_s0[115]}), .a ({correct_key_s1[51], correct_key_s0[51]}), .c ({new_AGEMA_signal_1557, SelectedKey[51]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) KeyMUX_MUXInst_52_U1 ( .s (KeyMUX_n7), .b ({correct_key_s1[116], correct_key_s0[116]}), .a ({correct_key_s1[52], correct_key_s0[52]}), .c ({new_AGEMA_signal_1560, SelectedKey[52]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) KeyMUX_MUXInst_53_U1 ( .s (selects[0]), .b ({correct_key_s1[117], correct_key_s0[117]}), .a ({correct_key_s1[53], correct_key_s0[53]}), .c ({new_AGEMA_signal_1278, SelectedKey[53]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) KeyMUX_MUXInst_54_U1 ( .s (selects[0]), .b ({correct_key_s1[118], correct_key_s0[118]}), .a ({correct_key_s1[54], correct_key_s0[54]}), .c ({new_AGEMA_signal_1281, SelectedKey[54]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) KeyMUX_MUXInst_55_U1 ( .s (KeyMUX_n7), .b ({correct_key_s1[119], correct_key_s0[119]}), .a ({correct_key_s1[55], correct_key_s0[55]}), .c ({new_AGEMA_signal_1563, SelectedKey[55]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) KeyMUX_MUXInst_56_U1 ( .s (selects[0]), .b ({correct_key_s1[120], correct_key_s0[120]}), .a ({correct_key_s1[56], correct_key_s0[56]}), .c ({new_AGEMA_signal_1284, SelectedKey[56]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) KeyMUX_MUXInst_57_U1 ( .s (KeyMUX_n7), .b ({correct_key_s1[121], correct_key_s0[121]}), .a ({correct_key_s1[57], correct_key_s0[57]}), .c ({new_AGEMA_signal_1566, SelectedKey[57]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) KeyMUX_MUXInst_58_U1 ( .s (KeyMUX_n7), .b ({correct_key_s1[122], correct_key_s0[122]}), .a ({correct_key_s1[58], correct_key_s0[58]}), .c ({new_AGEMA_signal_1569, SelectedKey[58]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) KeyMUX_MUXInst_59_U1 ( .s (selects[0]), .b ({correct_key_s1[123], correct_key_s0[123]}), .a ({correct_key_s1[59], correct_key_s0[59]}), .c ({new_AGEMA_signal_1287, SelectedKey[59]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) KeyMUX_MUXInst_60_U1 ( .s (KeyMUX_n7), .b ({correct_key_s1[124], correct_key_s0[124]}), .a ({correct_key_s1[60], correct_key_s0[60]}), .c ({new_AGEMA_signal_1572, SelectedKey[60]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) KeyMUX_MUXInst_61_U1 ( .s (KeyMUX_n7), .b ({correct_key_s1[125], correct_key_s0[125]}), .a ({correct_key_s1[61], correct_key_s0[61]}), .c ({new_AGEMA_signal_1575, SelectedKey[61]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) KeyMUX_MUXInst_62_U1 ( .s (selects[0]), .b ({correct_key_s1[126], correct_key_s0[126]}), .a ({correct_key_s1[62], correct_key_s0[62]}), .c ({new_AGEMA_signal_1290, SelectedKey[62]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) KeyMUX_MUXInst_63_U1 ( .s (KeyMUX_n7), .b ({correct_key_s1[127], correct_key_s0[127]}), .a ({correct_key_s1[63], correct_key_s0[63]}), .c ({new_AGEMA_signal_1578, SelectedKey[63]}) ) ;
    MUX2_X1 FSMMUX_MUXInst_0_U1 ( .S (correct_rst), .A (FSMReg[0]), .B (1'b1), .Z (RoundConstant_0) ) ;
    MUX2_X1 FSMMUX_MUXInst_1_U1 ( .S (correct_rst), .A (FSMReg[1]), .B (1'b0), .Z (FSMUpdate[0]) ) ;
    MUX2_X1 FSMMUX_MUXInst_2_U1 ( .S (correct_rst), .A (FSMReg[2]), .B (1'b0), .Z (FSMUpdate[1]) ) ;
    MUX2_X1 FSMMUX_MUXInst_3_U1 ( .S (correct_rst), .A (FSMReg[3]), .B (1'b1), .Z (RoundConstant_4_) ) ;
    MUX2_X1 FSMMUX_MUXInst_4_U1 ( .S (correct_rst), .A (FSMReg[4]), .B (1'b0), .Z (FSMUpdate[3]) ) ;
    MUX2_X1 FSMMUX_MUXInst_5_U1 ( .S (correct_rst), .A (FSMReg[5]), .B (1'b0), .Z (FSMUpdate[4]) ) ;
    MUX2_X1 FSMMUX_MUXInst_6_U1 ( .S (correct_rst), .A (FSMReg[6]), .B (1'b0), .Z (FSMUpdate[5]) ) ;
    XOR2_X1 FSMUpdateInst_U2 ( .A (RoundConstant_4_), .B (FSMUpdate[3]), .Z (FSMUpdate[6]) ) ;
    XOR2_X1 FSMUpdateInst_U1 ( .A (FSMUpdate[0]), .B (RoundConstant_0), .Z (FSMUpdate[2]) ) ;
    AND2_X1 FSMSignalsInst_U6 ( .A1 (FSMUpdate[5]), .A2 (FSMSignalsInst_n5), .ZN (done_internal) ) ;
    NOR2_X1 FSMSignalsInst_U5 ( .A1 (FSMSignalsInst_n4), .A2 (FSMSignalsInst_n3), .ZN (FSMSignalsInst_n5) ) ;
    NAND2_X1 FSMSignalsInst_U4 ( .A1 (FSMSignalsInst_n2), .A2 (FSMSignalsInst_n1), .ZN (FSMSignalsInst_n3) ) ;
    NOR2_X1 FSMSignalsInst_U3 ( .A1 (FSMUpdate[3]), .A2 (FSMUpdate[4]), .ZN (FSMSignalsInst_n1) ) ;
    NOR2_X1 FSMSignalsInst_U2 ( .A1 (FSMUpdate[0]), .A2 (RoundConstant_4_), .ZN (FSMSignalsInst_n2) ) ;
    NAND2_X1 FSMSignalsInst_U1 ( .A1 (RoundConstant_0), .A2 (FSMUpdate[1]), .ZN (FSMSignalsInst_n4) ) ;
    MUX2_X1 selectsMUX_MUXInst_0_U1 ( .S (correct_rst), .A (selectsReg[0]), .B (1'b0), .Z (selects[0]) ) ;
    MUX2_X1 selectsMUX_MUXInst_1_U1 ( .S (correct_rst), .A (selectsReg[1]), .B (1'b0), .Z (selects[1]) ) ;
    XNOR2_X1 selectsUpdateInst_U3 ( .A (selectsUpdateInst_n3), .B (selects[1]), .ZN (selectsNext[1]) ) ;
    INV_X1 selectsUpdateInst_U2 ( .A (selects[0]), .ZN (selectsUpdateInst_n3) ) ;
    INV_X1 selectsUpdateInst_U1 ( .A (selects[0]), .ZN (selectsNext[0]) ) ;
    ClockGatingController #(15) ClockGatingInst ( .clk (clk), .rst (correct_rst), .GatedClk (clk_gated), .Synch (Synch) ) ;

    /* cells in depth 1 */

    /* cells in depth 2 */
    xnor_COMAR #(.security_order(1), .pipeline(0)) AddKeyConstXOR_XORInst_0_0_U2 ( .common_out(common_out), .a ({new_AGEMA_signal_1524, SelectedKey[40]}), .b ({1'b0, RoundConstant_0}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1707, AddKeyConstXOR_XORInst_0_0_n1}) ) ; /* xnor_COMAR_type_3 */
    xnor_COMAR #(.security_order(1), .pipeline(0)) AddKeyConstXOR_XORInst_0_1_U2 ( .common_out(common_out), .a ({new_AGEMA_signal_1527, SelectedKey[41]}), .b ({1'b0, FSMUpdate[0]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1708, AddKeyConstXOR_XORInst_0_1_n1}) ) ; /* xnor_COMAR_type_3 */
    xnor_COMAR #(.security_order(1), .pipeline(0)) AddKeyConstXOR_XORInst_0_2_U2 ( .common_out(common_out), .a ({new_AGEMA_signal_1530, SelectedKey[42]}), .b ({1'b0, FSMUpdate[1]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1709, AddKeyConstXOR_XORInst_0_2_n1}) ) ; /* xnor_COMAR_type_3 */
    xnor_COMAR #(.security_order(1), .pipeline(0)) AddKeyConstXOR_XORInst_1_0_U2 ( .common_out(common_out), .a ({new_AGEMA_signal_1536, SelectedKey[44]}), .b ({1'b0, RoundConstant_4_}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1711, AddKeyConstXOR_XORInst_1_0_n1}) ) ; /* xnor_COMAR_type_3 */
    xnor_COMAR #(.security_order(1), .pipeline(0)) AddKeyConstXOR_XORInst_1_1_U2 ( .common_out(common_out), .a ({new_AGEMA_signal_1539, SelectedKey[45]}), .b ({1'b0, FSMUpdate[3]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1712, AddKeyConstXOR_XORInst_1_1_n1}) ) ; /* xnor_COMAR_type_3 */
    xnor_COMAR #(.security_order(1), .pipeline(0)) AddKeyConstXOR_XORInst_1_2_U2 ( .common_out(common_out), .a ({new_AGEMA_signal_1542, SelectedKey[46]}), .b ({1'b0, FSMUpdate[4]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1713, AddKeyConstXOR_XORInst_1_2_n1}) ) ; /* xnor_COMAR_type_3 */
    xnor_COMAR #(.security_order(1), .pipeline(0)) AddKeyConstXOR_XORInst_1_3_U2 ( .common_out(common_out), .a ({new_AGEMA_signal_1545, SelectedKey[47]}), .b ({1'b0, FSMUpdate[5]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1714, AddKeyConstXOR_XORInst_1_3_n1}) ) ; /* xnor_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_0_U14 ( .common_out(common_out), .a ({common_and2[0], ciphertext_s0[60]}), .b ({common_and2[1], ciphertext_s0[63]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1021, SubCellInst_SboxInst_0_n10}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_0_U13 ( .common_out(common_out), .a ({common_and2[0], SubCellInst_SboxInst_0_n8}), .b ({common_and2[1], SubCellInst_SboxInst_0_n7}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1148, SubCellInst_SboxInst_0_n15}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_0_U10 ( .common_out(common_out), .a ({common_and2[0], ciphertext_s0[63]}), .b ({common_and2[1], SubCellInst_SboxInst_0_n9}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1149, SubCellInst_SboxInst_0_n4}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_0_U9 ( .common_out(common_out), .a ({common_and2[0], ciphertext_s0[62]}), .b ({common_and2[1], SubCellInst_SboxInst_0_n8}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1150, SubCellInst_SboxInst_0_n6}) ) ; /* nand_COMAR_type_2 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_0_U5 ( .common_out(common_out), .a ({common_and2[0], ciphertext_s0[62]}), .b ({common_and2[1], ciphertext_s0[63]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1023, SubCellInst_SboxInst_0_n1}) ) ; /* nor_COMAR_type_2 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_0_U3 ( .common_out(common_out), .a ({common_and2[0], SubCellInst_SboxInst_0_n9}), .b ({common_and2[1], SubCellInst_SboxInst_0_n8}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1152, SubCellInst_SboxInst_0_n13}) ) ; /* nor_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_1_U14 ( .common_out(common_out), .a ({common_and2[0], ciphertext_s0[48]}), .b ({common_and2[1], ciphertext_s0[51]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1029, SubCellInst_SboxInst_1_n10}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_1_U13 ( .common_out(common_out), .a ({common_and2[0], SubCellInst_SboxInst_1_n8}), .b ({common_and2[1], SubCellInst_SboxInst_1_n7}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1154, SubCellInst_SboxInst_1_n15}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_1_U10 ( .common_out(common_out), .a ({common_and2[0], ciphertext_s0[51]}), .b ({common_and2[1], SubCellInst_SboxInst_1_n9}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1155, SubCellInst_SboxInst_1_n4}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_1_U9 ( .common_out(common_out), .a ({common_and2[0], ciphertext_s0[50]}), .b ({common_and2[1], SubCellInst_SboxInst_1_n8}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1156, SubCellInst_SboxInst_1_n6}) ) ; /* nand_COMAR_type_2 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_1_U5 ( .common_out(common_out), .a ({common_and2[0], ciphertext_s0[50]}), .b ({common_and2[1], ciphertext_s0[51]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1031, SubCellInst_SboxInst_1_n1}) ) ; /* nor_COMAR_type_2 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_1_U3 ( .common_out(common_out), .a ({common_and2[0], SubCellInst_SboxInst_1_n9}), .b ({common_and2[1], SubCellInst_SboxInst_1_n8}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1158, SubCellInst_SboxInst_1_n13}) ) ; /* nor_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_2_U14 ( .common_out(common_out), .a ({common_and2[0], ciphertext_s0[52]}), .b ({common_and2[1], ciphertext_s0[55]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1037, SubCellInst_SboxInst_2_n10}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_2_U13 ( .common_out(common_out), .a ({common_and2[0], SubCellInst_SboxInst_2_n8}), .b ({common_and2[1], SubCellInst_SboxInst_2_n7}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1160, SubCellInst_SboxInst_2_n15}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_2_U10 ( .common_out(common_out), .a ({common_and2[0], ciphertext_s0[55]}), .b ({common_and2[1], SubCellInst_SboxInst_2_n9}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1161, SubCellInst_SboxInst_2_n4}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_2_U9 ( .common_out(common_out), .a ({common_and2[0], ciphertext_s0[54]}), .b ({common_and2[1], SubCellInst_SboxInst_2_n8}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1162, SubCellInst_SboxInst_2_n6}) ) ; /* nand_COMAR_type_2 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_2_U5 ( .common_out(common_out), .a ({common_and2[0], ciphertext_s0[54]}), .b ({common_and2[1], ciphertext_s0[55]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1039, SubCellInst_SboxInst_2_n1}) ) ; /* nor_COMAR_type_2 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_2_U3 ( .common_out(common_out), .a ({common_and2[0], SubCellInst_SboxInst_2_n9}), .b ({common_and2[1], SubCellInst_SboxInst_2_n8}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1164, SubCellInst_SboxInst_2_n13}) ) ; /* nor_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_3_U14 ( .common_out(common_out), .a ({common_and2[0], ciphertext_s0[56]}), .b ({common_and2[1], ciphertext_s0[59]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1045, SubCellInst_SboxInst_3_n10}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_3_U13 ( .common_out(common_out), .a ({common_and2[0], SubCellInst_SboxInst_3_n8}), .b ({common_and2[1], SubCellInst_SboxInst_3_n7}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1166, SubCellInst_SboxInst_3_n15}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_3_U10 ( .common_out(common_out), .a ({common_and2[0], ciphertext_s0[59]}), .b ({common_and2[1], SubCellInst_SboxInst_3_n9}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1167, SubCellInst_SboxInst_3_n4}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_3_U9 ( .common_out(common_out), .a ({common_and2[0], ciphertext_s0[58]}), .b ({common_and2[1], SubCellInst_SboxInst_3_n8}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1168, SubCellInst_SboxInst_3_n6}) ) ; /* nand_COMAR_type_2 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_3_U5 ( .common_out(common_out), .a ({common_and2[0], ciphertext_s0[58]}), .b ({common_and2[1], ciphertext_s0[59]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1047, SubCellInst_SboxInst_3_n1}) ) ; /* nor_COMAR_type_2 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_3_U3 ( .common_out(common_out), .a ({common_and2[0], SubCellInst_SboxInst_3_n9}), .b ({common_and2[1], SubCellInst_SboxInst_3_n8}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1170, SubCellInst_SboxInst_3_n13}) ) ; /* nor_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_4_U14 ( .common_out(common_out), .a ({common_and2[0], ciphertext_s0[32]}), .b ({common_and2[1], ciphertext_s0[35]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1053, SubCellInst_SboxInst_4_n10}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_4_U13 ( .common_out(common_out), .a ({common_and2[0], SubCellInst_SboxInst_4_n8}), .b ({common_and2[1], SubCellInst_SboxInst_4_n7}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1172, SubCellInst_SboxInst_4_n15}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_4_U10 ( .common_out(common_out), .a ({common_and2[0], ciphertext_s0[35]}), .b ({common_and2[1], SubCellInst_SboxInst_4_n9}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1173, SubCellInst_SboxInst_4_n4}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_4_U9 ( .common_out(common_out), .a ({common_and2[0], ciphertext_s0[34]}), .b ({common_and2[1], SubCellInst_SboxInst_4_n8}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1174, SubCellInst_SboxInst_4_n6}) ) ; /* nand_COMAR_type_2 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_4_U5 ( .common_out(common_out), .a ({common_and2[0], ciphertext_s0[34]}), .b ({common_and2[1], ciphertext_s0[35]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1055, SubCellInst_SboxInst_4_n1}) ) ; /* nor_COMAR_type_2 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_4_U3 ( .common_out(common_out), .a ({common_and2[0], SubCellInst_SboxInst_4_n9}), .b ({common_and2[1], SubCellInst_SboxInst_4_n8}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1176, SubCellInst_SboxInst_4_n13}) ) ; /* nor_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_5_U14 ( .common_out(common_out), .a ({common_and2[0], ciphertext_s0[44]}), .b ({common_and2[1], ciphertext_s0[47]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1061, SubCellInst_SboxInst_5_n10}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_5_U13 ( .common_out(common_out), .a ({common_and2[0], SubCellInst_SboxInst_5_n8}), .b ({common_and2[1], SubCellInst_SboxInst_5_n7}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1178, SubCellInst_SboxInst_5_n15}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_5_U10 ( .common_out(common_out), .a ({common_and2[0], ciphertext_s0[47]}), .b ({common_and2[1], SubCellInst_SboxInst_5_n9}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1179, SubCellInst_SboxInst_5_n4}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_5_U9 ( .common_out(common_out), .a ({common_and2[0], ciphertext_s0[46]}), .b ({common_and2[1], SubCellInst_SboxInst_5_n8}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1180, SubCellInst_SboxInst_5_n6}) ) ; /* nand_COMAR_type_2 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_5_U5 ( .common_out(common_out), .a ({common_and2[0], ciphertext_s0[46]}), .b ({common_and2[1], ciphertext_s0[47]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1063, SubCellInst_SboxInst_5_n1}) ) ; /* nor_COMAR_type_2 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_5_U3 ( .common_out(common_out), .a ({common_and2[0], SubCellInst_SboxInst_5_n9}), .b ({common_and2[1], SubCellInst_SboxInst_5_n8}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1182, SubCellInst_SboxInst_5_n13}) ) ; /* nor_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_6_U14 ( .common_out(common_out), .a ({common_and2[0], ciphertext_s0[40]}), .b ({common_and2[1], ciphertext_s0[43]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1069, SubCellInst_SboxInst_6_n10}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_6_U13 ( .common_out(common_out), .a ({common_and2[0], SubCellInst_SboxInst_6_n8}), .b ({common_and2[1], SubCellInst_SboxInst_6_n7}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1184, SubCellInst_SboxInst_6_n15}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_6_U10 ( .common_out(common_out), .a ({common_and2[0], ciphertext_s0[43]}), .b ({common_and2[1], SubCellInst_SboxInst_6_n9}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1185, SubCellInst_SboxInst_6_n4}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_6_U9 ( .common_out(common_out), .a ({common_and2[0], ciphertext_s0[42]}), .b ({common_and2[1], SubCellInst_SboxInst_6_n8}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1186, SubCellInst_SboxInst_6_n6}) ) ; /* nand_COMAR_type_2 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_6_U5 ( .common_out(common_out), .a ({common_and2[0], ciphertext_s0[42]}), .b ({common_and2[1], ciphertext_s0[43]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1071, SubCellInst_SboxInst_6_n1}) ) ; /* nor_COMAR_type_2 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_6_U3 ( .common_out(common_out), .a ({common_and2[0], SubCellInst_SboxInst_6_n9}), .b ({common_and2[1], SubCellInst_SboxInst_6_n8}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1188, SubCellInst_SboxInst_6_n13}) ) ; /* nor_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_7_U14 ( .common_out(common_out), .a ({common_and2[0], ciphertext_s0[36]}), .b ({common_and2[1], ciphertext_s0[39]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1077, SubCellInst_SboxInst_7_n10}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_7_U13 ( .common_out(common_out), .a ({common_and2[0], SubCellInst_SboxInst_7_n8}), .b ({common_and2[1], SubCellInst_SboxInst_7_n7}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1190, SubCellInst_SboxInst_7_n15}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_7_U10 ( .common_out(common_out), .a ({common_and2[0], ciphertext_s0[39]}), .b ({common_and2[1], SubCellInst_SboxInst_7_n9}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1191, SubCellInst_SboxInst_7_n4}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_7_U9 ( .common_out(common_out), .a ({common_and2[0], ciphertext_s0[38]}), .b ({common_and2[1], SubCellInst_SboxInst_7_n8}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1192, SubCellInst_SboxInst_7_n6}) ) ; /* nand_COMAR_type_2 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_7_U5 ( .common_out(common_out), .a ({common_and2[0], ciphertext_s0[38]}), .b ({common_and2[1], ciphertext_s0[39]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1079, SubCellInst_SboxInst_7_n1}) ) ; /* nor_COMAR_type_2 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_7_U3 ( .common_out(common_out), .a ({common_and2[0], SubCellInst_SboxInst_7_n9}), .b ({common_and2[1], SubCellInst_SboxInst_7_n8}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1194, SubCellInst_SboxInst_7_n13}) ) ; /* nor_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_8_U14 ( .common_out(common_out), .a ({common_and2[0], ciphertext_s0[16]}), .b ({common_and2[1], ciphertext_s0[19]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1085, SubCellInst_SboxInst_8_n10}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_8_U13 ( .common_out(common_out), .a ({common_and2[0], SubCellInst_SboxInst_8_n8}), .b ({common_and2[1], SubCellInst_SboxInst_8_n7}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1196, SubCellInst_SboxInst_8_n15}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_8_U10 ( .common_out(common_out), .a ({common_and2[0], ciphertext_s0[19]}), .b ({common_and2[1], SubCellInst_SboxInst_8_n9}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1197, SubCellInst_SboxInst_8_n4}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_8_U9 ( .common_out(common_out), .a ({common_and2[0], ciphertext_s0[18]}), .b ({common_and2[1], SubCellInst_SboxInst_8_n8}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1198, SubCellInst_SboxInst_8_n6}) ) ; /* nand_COMAR_type_2 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_8_U5 ( .common_out(common_out), .a ({common_and2[0], ciphertext_s0[18]}), .b ({common_and2[1], ciphertext_s0[19]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1087, SubCellInst_SboxInst_8_n1}) ) ; /* nor_COMAR_type_2 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_8_U3 ( .common_out(common_out), .a ({common_and2[0], SubCellInst_SboxInst_8_n9}), .b ({common_and2[1], SubCellInst_SboxInst_8_n8}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1200, SubCellInst_SboxInst_8_n13}) ) ; /* nor_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_9_U14 ( .common_out(common_out), .a ({common_and2[0], ciphertext_s0[28]}), .b ({common_and2[1], ciphertext_s0[31]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1093, SubCellInst_SboxInst_9_n10}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_9_U13 ( .common_out(common_out), .a ({common_and2[0], SubCellInst_SboxInst_9_n8}), .b ({common_and2[1], SubCellInst_SboxInst_9_n7}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1202, SubCellInst_SboxInst_9_n15}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_9_U10 ( .common_out(common_out), .a ({common_and2[0], ciphertext_s0[31]}), .b ({common_and2[1], SubCellInst_SboxInst_9_n9}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1203, SubCellInst_SboxInst_9_n4}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_9_U9 ( .common_out(common_out), .a ({common_and2[0], ciphertext_s0[30]}), .b ({common_and2[1], SubCellInst_SboxInst_9_n8}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1204, SubCellInst_SboxInst_9_n6}) ) ; /* nand_COMAR_type_2 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_9_U5 ( .common_out(common_out), .a ({common_and2[0], ciphertext_s0[30]}), .b ({common_and2[1], ciphertext_s0[31]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1095, SubCellInst_SboxInst_9_n1}) ) ; /* nor_COMAR_type_2 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_9_U3 ( .common_out(common_out), .a ({common_and2[0], SubCellInst_SboxInst_9_n9}), .b ({common_and2[1], SubCellInst_SboxInst_9_n8}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1206, SubCellInst_SboxInst_9_n13}) ) ; /* nor_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_10_U14 ( .common_out(common_out), .a ({common_and2[0], ciphertext_s0[24]}), .b ({common_and2[1], ciphertext_s0[27]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1101, SubCellInst_SboxInst_10_n10}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_10_U13 ( .common_out(common_out), .a ({common_and2[0], SubCellInst_SboxInst_10_n8}), .b ({common_and2[1], SubCellInst_SboxInst_10_n7}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1208, SubCellInst_SboxInst_10_n15}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_10_U10 ( .common_out(common_out), .a ({common_and2[0], ciphertext_s0[27]}), .b ({common_and2[1], SubCellInst_SboxInst_10_n9}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1209, SubCellInst_SboxInst_10_n4}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_10_U9 ( .common_out(common_out), .a ({common_and2[0], ciphertext_s0[26]}), .b ({common_and2[1], SubCellInst_SboxInst_10_n8}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1210, SubCellInst_SboxInst_10_n6}) ) ; /* nand_COMAR_type_2 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_10_U5 ( .common_out(common_out), .a ({common_and2[0], ciphertext_s0[26]}), .b ({common_and2[1], ciphertext_s0[27]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1103, SubCellInst_SboxInst_10_n1}) ) ; /* nor_COMAR_type_2 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_10_U3 ( .common_out(common_out), .a ({common_and2[0], SubCellInst_SboxInst_10_n9}), .b ({common_and2[1], SubCellInst_SboxInst_10_n8}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1212, SubCellInst_SboxInst_10_n13}) ) ; /* nor_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_11_U14 ( .common_out(common_out), .a ({common_and2[0], ciphertext_s0[20]}), .b ({common_and2[1], ciphertext_s0[23]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1109, SubCellInst_SboxInst_11_n10}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_11_U13 ( .common_out(common_out), .a ({common_and2[0], SubCellInst_SboxInst_11_n8}), .b ({common_and2[1], SubCellInst_SboxInst_11_n7}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1214, SubCellInst_SboxInst_11_n15}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_11_U10 ( .common_out(common_out), .a ({common_and2[0], ciphertext_s0[23]}), .b ({common_and2[1], SubCellInst_SboxInst_11_n9}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1215, SubCellInst_SboxInst_11_n4}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_11_U9 ( .common_out(common_out), .a ({common_and2[0], ciphertext_s0[22]}), .b ({common_and2[1], SubCellInst_SboxInst_11_n8}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1216, SubCellInst_SboxInst_11_n6}) ) ; /* nand_COMAR_type_2 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_11_U5 ( .common_out(common_out), .a ({common_and2[0], ciphertext_s0[22]}), .b ({common_and2[1], ciphertext_s0[23]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1111, SubCellInst_SboxInst_11_n1}) ) ; /* nor_COMAR_type_2 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_11_U3 ( .common_out(common_out), .a ({common_and2[0], SubCellInst_SboxInst_11_n9}), .b ({common_and2[1], SubCellInst_SboxInst_11_n8}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1218, SubCellInst_SboxInst_11_n13}) ) ; /* nor_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_12_U14 ( .common_out(common_out), .a ({common_and2[0], ciphertext_s0[4]}), .b ({common_and2[1], ciphertext_s0[7]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1117, SubCellInst_SboxInst_12_n10}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_12_U13 ( .common_out(common_out), .a ({common_and2[0], SubCellInst_SboxInst_12_n8}), .b ({common_and2[1], SubCellInst_SboxInst_12_n7}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1220, SubCellInst_SboxInst_12_n15}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_12_U10 ( .common_out(common_out), .a ({common_and2[0], ciphertext_s0[7]}), .b ({common_and2[1], SubCellInst_SboxInst_12_n9}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1221, SubCellInst_SboxInst_12_n4}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_12_U9 ( .common_out(common_out), .a ({common_and2[0], ciphertext_s0[6]}), .b ({common_and2[1], SubCellInst_SboxInst_12_n8}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1222, SubCellInst_SboxInst_12_n6}) ) ; /* nand_COMAR_type_2 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_12_U5 ( .common_out(common_out), .a ({common_and2[0], ciphertext_s0[6]}), .b ({common_and2[1], ciphertext_s0[7]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1119, SubCellInst_SboxInst_12_n1}) ) ; /* nor_COMAR_type_2 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_12_U3 ( .common_out(common_out), .a ({common_and2[0], SubCellInst_SboxInst_12_n9}), .b ({common_and2[1], SubCellInst_SboxInst_12_n8}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1224, SubCellInst_SboxInst_12_n13}) ) ; /* nor_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_13_U14 ( .common_out(common_out), .a ({common_and2[0], ciphertext_s0[8]}), .b ({common_and2[1], ciphertext_s0[11]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1125, SubCellInst_SboxInst_13_n10}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_13_U13 ( .common_out(common_out), .a ({common_and2[0], SubCellInst_SboxInst_13_n8}), .b ({common_and2[1], SubCellInst_SboxInst_13_n7}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1226, SubCellInst_SboxInst_13_n15}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_13_U10 ( .common_out(common_out), .a ({common_and2[0], ciphertext_s0[11]}), .b ({common_and2[1], SubCellInst_SboxInst_13_n9}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1227, SubCellInst_SboxInst_13_n4}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_13_U9 ( .common_out(common_out), .a ({common_and2[0], ciphertext_s0[10]}), .b ({common_and2[1], SubCellInst_SboxInst_13_n8}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1228, SubCellInst_SboxInst_13_n6}) ) ; /* nand_COMAR_type_2 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_13_U5 ( .common_out(common_out), .a ({common_and2[0], ciphertext_s0[10]}), .b ({common_and2[1], ciphertext_s0[11]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1127, SubCellInst_SboxInst_13_n1}) ) ; /* nor_COMAR_type_2 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_13_U3 ( .common_out(common_out), .a ({common_and2[0], SubCellInst_SboxInst_13_n9}), .b ({common_and2[1], SubCellInst_SboxInst_13_n8}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1230, SubCellInst_SboxInst_13_n13}) ) ; /* nor_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_14_U14 ( .common_out(common_out), .a ({common_and2[0], ciphertext_s0[12]}), .b ({common_and2[1], ciphertext_s0[15]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1133, SubCellInst_SboxInst_14_n10}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_14_U13 ( .common_out(common_out), .a ({common_and2[0], SubCellInst_SboxInst_14_n8}), .b ({common_and2[1], SubCellInst_SboxInst_14_n7}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1232, SubCellInst_SboxInst_14_n15}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_14_U10 ( .common_out(common_out), .a ({common_and2[0], ciphertext_s0[15]}), .b ({common_and2[1], SubCellInst_SboxInst_14_n9}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1233, SubCellInst_SboxInst_14_n4}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_14_U9 ( .common_out(common_out), .a ({common_and2[0], ciphertext_s0[14]}), .b ({common_and2[1], SubCellInst_SboxInst_14_n8}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1234, SubCellInst_SboxInst_14_n6}) ) ; /* nand_COMAR_type_2 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_14_U5 ( .common_out(common_out), .a ({common_and2[0], ciphertext_s0[14]}), .b ({common_and2[1], ciphertext_s0[15]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1135, SubCellInst_SboxInst_14_n1}) ) ; /* nor_COMAR_type_2 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_14_U3 ( .common_out(common_out), .a ({common_and2[0], SubCellInst_SboxInst_14_n9}), .b ({common_and2[1], SubCellInst_SboxInst_14_n8}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1236, SubCellInst_SboxInst_14_n13}) ) ; /* nor_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_15_U14 ( .common_out(common_out), .a ({common_and2[0], ciphertext_s0[0]}), .b ({common_and2[1], ciphertext_s0[3]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1141, SubCellInst_SboxInst_15_n10}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_15_U13 ( .common_out(common_out), .a ({common_and2[0], SubCellInst_SboxInst_15_n8}), .b ({common_and2[1], SubCellInst_SboxInst_15_n7}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1238, SubCellInst_SboxInst_15_n15}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_15_U10 ( .common_out(common_out), .a ({common_and2[0], ciphertext_s0[3]}), .b ({common_and2[1], SubCellInst_SboxInst_15_n9}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1239, SubCellInst_SboxInst_15_n4}) ) ; /* nand_COMAR_type_2 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_15_U9 ( .common_out(common_out), .a ({common_and2[0], ciphertext_s0[2]}), .b ({common_and2[1], SubCellInst_SboxInst_15_n8}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1240, SubCellInst_SboxInst_15_n6}) ) ; /* nand_COMAR_type_2 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_15_U5 ( .common_out(common_out), .a ({common_and2[0], ciphertext_s0[2]}), .b ({common_and2[1], ciphertext_s0[3]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1143, SubCellInst_SboxInst_15_n1}) ) ; /* nor_COMAR_type_2 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_15_U3 ( .common_out(common_out), .a ({common_and2[0], SubCellInst_SboxInst_15_n9}), .b ({common_and2[1], SubCellInst_SboxInst_15_n8}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1242, SubCellInst_SboxInst_15_n13}) ) ; /* nor_COMAR_type_2 */

    /* cells in depth 3 */

    /* cells in depth 4 */
    or_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_0_U18 ( .common_out(common_out), .a ({new_AGEMA_signal_1152, SubCellInst_SboxInst_0_n13}), .b ({ciphertext_s1[61], ciphertext_s0[61]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1292, SubCellInst_SboxInst_0_n14}) ) ; /* or_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_0_U15 ( .common_out(common_out), .a ({new_AGEMA_signal_1021, SubCellInst_SboxInst_0_n10}), .b ({new_AGEMA_signal_1026, SubCellInst_SboxInst_0_n9}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1147, SubCellInst_SboxInst_0_n11}) ) ; /* nand_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_0_U11 ( .common_out(common_out), .a ({ciphertext_s1[60], ciphertext_s0[60]}), .b ({new_AGEMA_signal_1149, SubCellInst_SboxInst_0_n4}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1294, SubCellInst_SboxInst_0_n5}) ) ; /* nand_COMAR_type_3 */
    nor_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_0_U6 ( .common_out(common_out), .a ({new_AGEMA_signal_1024, SubCellInst_SboxInst_0_n7}), .b ({new_AGEMA_signal_1023, SubCellInst_SboxInst_0_n1}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1151, SubCellInst_SboxInst_0_n2}) ) ; /* nor_COMAR_type_3 */
    or_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_1_U18 ( .common_out(common_out), .a ({new_AGEMA_signal_1158, SubCellInst_SboxInst_1_n13}), .b ({ciphertext_s1[49], ciphertext_s0[49]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1297, SubCellInst_SboxInst_1_n14}) ) ; /* or_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_1_U15 ( .common_out(common_out), .a ({new_AGEMA_signal_1029, SubCellInst_SboxInst_1_n10}), .b ({new_AGEMA_signal_1034, SubCellInst_SboxInst_1_n9}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1153, SubCellInst_SboxInst_1_n11}) ) ; /* nand_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_1_U11 ( .common_out(common_out), .a ({ciphertext_s1[48], ciphertext_s0[48]}), .b ({new_AGEMA_signal_1155, SubCellInst_SboxInst_1_n4}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1299, SubCellInst_SboxInst_1_n5}) ) ; /* nand_COMAR_type_3 */
    nor_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_1_U6 ( .common_out(common_out), .a ({new_AGEMA_signal_1032, SubCellInst_SboxInst_1_n7}), .b ({new_AGEMA_signal_1031, SubCellInst_SboxInst_1_n1}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1157, SubCellInst_SboxInst_1_n2}) ) ; /* nor_COMAR_type_3 */
    or_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_2_U18 ( .common_out(common_out), .a ({new_AGEMA_signal_1164, SubCellInst_SboxInst_2_n13}), .b ({ciphertext_s1[53], ciphertext_s0[53]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1302, SubCellInst_SboxInst_2_n14}) ) ; /* or_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_2_U15 ( .common_out(common_out), .a ({new_AGEMA_signal_1037, SubCellInst_SboxInst_2_n10}), .b ({new_AGEMA_signal_1042, SubCellInst_SboxInst_2_n9}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1159, SubCellInst_SboxInst_2_n11}) ) ; /* nand_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_2_U11 ( .common_out(common_out), .a ({ciphertext_s1[52], ciphertext_s0[52]}), .b ({new_AGEMA_signal_1161, SubCellInst_SboxInst_2_n4}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1304, SubCellInst_SboxInst_2_n5}) ) ; /* nand_COMAR_type_3 */
    nor_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_2_U6 ( .common_out(common_out), .a ({new_AGEMA_signal_1040, SubCellInst_SboxInst_2_n7}), .b ({new_AGEMA_signal_1039, SubCellInst_SboxInst_2_n1}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1163, SubCellInst_SboxInst_2_n2}) ) ; /* nor_COMAR_type_3 */
    or_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_3_U18 ( .common_out(common_out), .a ({new_AGEMA_signal_1170, SubCellInst_SboxInst_3_n13}), .b ({ciphertext_s1[57], ciphertext_s0[57]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1307, SubCellInst_SboxInst_3_n14}) ) ; /* or_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_3_U15 ( .common_out(common_out), .a ({new_AGEMA_signal_1045, SubCellInst_SboxInst_3_n10}), .b ({new_AGEMA_signal_1050, SubCellInst_SboxInst_3_n9}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1165, SubCellInst_SboxInst_3_n11}) ) ; /* nand_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_3_U11 ( .common_out(common_out), .a ({ciphertext_s1[56], ciphertext_s0[56]}), .b ({new_AGEMA_signal_1167, SubCellInst_SboxInst_3_n4}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1309, SubCellInst_SboxInst_3_n5}) ) ; /* nand_COMAR_type_3 */
    nor_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_3_U6 ( .common_out(common_out), .a ({new_AGEMA_signal_1048, SubCellInst_SboxInst_3_n7}), .b ({new_AGEMA_signal_1047, SubCellInst_SboxInst_3_n1}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1169, SubCellInst_SboxInst_3_n2}) ) ; /* nor_COMAR_type_3 */
    or_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_4_U18 ( .common_out(common_out), .a ({new_AGEMA_signal_1176, SubCellInst_SboxInst_4_n13}), .b ({ciphertext_s1[33], ciphertext_s0[33]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1312, SubCellInst_SboxInst_4_n14}) ) ; /* or_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_4_U15 ( .common_out(common_out), .a ({new_AGEMA_signal_1053, SubCellInst_SboxInst_4_n10}), .b ({new_AGEMA_signal_1058, SubCellInst_SboxInst_4_n9}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1171, SubCellInst_SboxInst_4_n11}) ) ; /* nand_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_4_U11 ( .common_out(common_out), .a ({ciphertext_s1[32], ciphertext_s0[32]}), .b ({new_AGEMA_signal_1173, SubCellInst_SboxInst_4_n4}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1314, SubCellInst_SboxInst_4_n5}) ) ; /* nand_COMAR_type_3 */
    nor_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_4_U6 ( .common_out(common_out), .a ({new_AGEMA_signal_1056, SubCellInst_SboxInst_4_n7}), .b ({new_AGEMA_signal_1055, SubCellInst_SboxInst_4_n1}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1175, SubCellInst_SboxInst_4_n2}) ) ; /* nor_COMAR_type_3 */
    or_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_5_U18 ( .common_out(common_out), .a ({new_AGEMA_signal_1182, SubCellInst_SboxInst_5_n13}), .b ({ciphertext_s1[45], ciphertext_s0[45]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1317, SubCellInst_SboxInst_5_n14}) ) ; /* or_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_5_U15 ( .common_out(common_out), .a ({new_AGEMA_signal_1061, SubCellInst_SboxInst_5_n10}), .b ({new_AGEMA_signal_1066, SubCellInst_SboxInst_5_n9}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1177, SubCellInst_SboxInst_5_n11}) ) ; /* nand_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_5_U11 ( .common_out(common_out), .a ({ciphertext_s1[44], ciphertext_s0[44]}), .b ({new_AGEMA_signal_1179, SubCellInst_SboxInst_5_n4}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1319, SubCellInst_SboxInst_5_n5}) ) ; /* nand_COMAR_type_3 */
    nor_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_5_U6 ( .common_out(common_out), .a ({new_AGEMA_signal_1064, SubCellInst_SboxInst_5_n7}), .b ({new_AGEMA_signal_1063, SubCellInst_SboxInst_5_n1}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1181, SubCellInst_SboxInst_5_n2}) ) ; /* nor_COMAR_type_3 */
    or_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_6_U18 ( .common_out(common_out), .a ({new_AGEMA_signal_1188, SubCellInst_SboxInst_6_n13}), .b ({ciphertext_s1[41], ciphertext_s0[41]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1322, SubCellInst_SboxInst_6_n14}) ) ; /* or_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_6_U15 ( .common_out(common_out), .a ({new_AGEMA_signal_1069, SubCellInst_SboxInst_6_n10}), .b ({new_AGEMA_signal_1074, SubCellInst_SboxInst_6_n9}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1183, SubCellInst_SboxInst_6_n11}) ) ; /* nand_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_6_U11 ( .common_out(common_out), .a ({ciphertext_s1[40], ciphertext_s0[40]}), .b ({new_AGEMA_signal_1185, SubCellInst_SboxInst_6_n4}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1324, SubCellInst_SboxInst_6_n5}) ) ; /* nand_COMAR_type_3 */
    nor_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_6_U6 ( .common_out(common_out), .a ({new_AGEMA_signal_1072, SubCellInst_SboxInst_6_n7}), .b ({new_AGEMA_signal_1071, SubCellInst_SboxInst_6_n1}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1187, SubCellInst_SboxInst_6_n2}) ) ; /* nor_COMAR_type_3 */
    or_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_7_U18 ( .common_out(common_out), .a ({new_AGEMA_signal_1194, SubCellInst_SboxInst_7_n13}), .b ({ciphertext_s1[37], ciphertext_s0[37]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1327, SubCellInst_SboxInst_7_n14}) ) ; /* or_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_7_U15 ( .common_out(common_out), .a ({new_AGEMA_signal_1077, SubCellInst_SboxInst_7_n10}), .b ({new_AGEMA_signal_1082, SubCellInst_SboxInst_7_n9}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1189, SubCellInst_SboxInst_7_n11}) ) ; /* nand_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_7_U11 ( .common_out(common_out), .a ({ciphertext_s1[36], ciphertext_s0[36]}), .b ({new_AGEMA_signal_1191, SubCellInst_SboxInst_7_n4}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1329, SubCellInst_SboxInst_7_n5}) ) ; /* nand_COMAR_type_3 */
    nor_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_7_U6 ( .common_out(common_out), .a ({new_AGEMA_signal_1080, SubCellInst_SboxInst_7_n7}), .b ({new_AGEMA_signal_1079, SubCellInst_SboxInst_7_n1}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1193, SubCellInst_SboxInst_7_n2}) ) ; /* nor_COMAR_type_3 */
    or_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_8_U18 ( .common_out(common_out), .a ({new_AGEMA_signal_1200, SubCellInst_SboxInst_8_n13}), .b ({ciphertext_s1[17], ciphertext_s0[17]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1332, SubCellInst_SboxInst_8_n14}) ) ; /* or_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_8_U15 ( .common_out(common_out), .a ({new_AGEMA_signal_1085, SubCellInst_SboxInst_8_n10}), .b ({new_AGEMA_signal_1090, SubCellInst_SboxInst_8_n9}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1195, SubCellInst_SboxInst_8_n11}) ) ; /* nand_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_8_U11 ( .common_out(common_out), .a ({ciphertext_s1[16], ciphertext_s0[16]}), .b ({new_AGEMA_signal_1197, SubCellInst_SboxInst_8_n4}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1334, SubCellInst_SboxInst_8_n5}) ) ; /* nand_COMAR_type_3 */
    nor_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_8_U6 ( .common_out(common_out), .a ({new_AGEMA_signal_1088, SubCellInst_SboxInst_8_n7}), .b ({new_AGEMA_signal_1087, SubCellInst_SboxInst_8_n1}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1199, SubCellInst_SboxInst_8_n2}) ) ; /* nor_COMAR_type_3 */
    or_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_9_U18 ( .common_out(common_out), .a ({new_AGEMA_signal_1206, SubCellInst_SboxInst_9_n13}), .b ({ciphertext_s1[29], ciphertext_s0[29]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1337, SubCellInst_SboxInst_9_n14}) ) ; /* or_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_9_U15 ( .common_out(common_out), .a ({new_AGEMA_signal_1093, SubCellInst_SboxInst_9_n10}), .b ({new_AGEMA_signal_1098, SubCellInst_SboxInst_9_n9}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1201, SubCellInst_SboxInst_9_n11}) ) ; /* nand_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_9_U11 ( .common_out(common_out), .a ({ciphertext_s1[28], ciphertext_s0[28]}), .b ({new_AGEMA_signal_1203, SubCellInst_SboxInst_9_n4}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1339, SubCellInst_SboxInst_9_n5}) ) ; /* nand_COMAR_type_3 */
    nor_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_9_U6 ( .common_out(common_out), .a ({new_AGEMA_signal_1096, SubCellInst_SboxInst_9_n7}), .b ({new_AGEMA_signal_1095, SubCellInst_SboxInst_9_n1}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1205, SubCellInst_SboxInst_9_n2}) ) ; /* nor_COMAR_type_3 */
    or_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_10_U18 ( .common_out(common_out), .a ({new_AGEMA_signal_1212, SubCellInst_SboxInst_10_n13}), .b ({ciphertext_s1[25], ciphertext_s0[25]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1342, SubCellInst_SboxInst_10_n14}) ) ; /* or_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_10_U15 ( .common_out(common_out), .a ({new_AGEMA_signal_1101, SubCellInst_SboxInst_10_n10}), .b ({new_AGEMA_signal_1106, SubCellInst_SboxInst_10_n9}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1207, SubCellInst_SboxInst_10_n11}) ) ; /* nand_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_10_U11 ( .common_out(common_out), .a ({ciphertext_s1[24], ciphertext_s0[24]}), .b ({new_AGEMA_signal_1209, SubCellInst_SboxInst_10_n4}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1344, SubCellInst_SboxInst_10_n5}) ) ; /* nand_COMAR_type_3 */
    nor_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_10_U6 ( .common_out(common_out), .a ({new_AGEMA_signal_1104, SubCellInst_SboxInst_10_n7}), .b ({new_AGEMA_signal_1103, SubCellInst_SboxInst_10_n1}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1211, SubCellInst_SboxInst_10_n2}) ) ; /* nor_COMAR_type_3 */
    or_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_11_U18 ( .common_out(common_out), .a ({new_AGEMA_signal_1218, SubCellInst_SboxInst_11_n13}), .b ({ciphertext_s1[21], ciphertext_s0[21]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1347, SubCellInst_SboxInst_11_n14}) ) ; /* or_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_11_U15 ( .common_out(common_out), .a ({new_AGEMA_signal_1109, SubCellInst_SboxInst_11_n10}), .b ({new_AGEMA_signal_1114, SubCellInst_SboxInst_11_n9}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1213, SubCellInst_SboxInst_11_n11}) ) ; /* nand_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_11_U11 ( .common_out(common_out), .a ({ciphertext_s1[20], ciphertext_s0[20]}), .b ({new_AGEMA_signal_1215, SubCellInst_SboxInst_11_n4}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1349, SubCellInst_SboxInst_11_n5}) ) ; /* nand_COMAR_type_3 */
    nor_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_11_U6 ( .common_out(common_out), .a ({new_AGEMA_signal_1112, SubCellInst_SboxInst_11_n7}), .b ({new_AGEMA_signal_1111, SubCellInst_SboxInst_11_n1}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1217, SubCellInst_SboxInst_11_n2}) ) ; /* nor_COMAR_type_3 */
    or_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_12_U18 ( .common_out(common_out), .a ({new_AGEMA_signal_1224, SubCellInst_SboxInst_12_n13}), .b ({ciphertext_s1[5], ciphertext_s0[5]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1352, SubCellInst_SboxInst_12_n14}) ) ; /* or_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_12_U15 ( .common_out(common_out), .a ({new_AGEMA_signal_1117, SubCellInst_SboxInst_12_n10}), .b ({new_AGEMA_signal_1122, SubCellInst_SboxInst_12_n9}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1219, SubCellInst_SboxInst_12_n11}) ) ; /* nand_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_12_U11 ( .common_out(common_out), .a ({ciphertext_s1[4], ciphertext_s0[4]}), .b ({new_AGEMA_signal_1221, SubCellInst_SboxInst_12_n4}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1354, SubCellInst_SboxInst_12_n5}) ) ; /* nand_COMAR_type_3 */
    nor_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_12_U6 ( .common_out(common_out), .a ({new_AGEMA_signal_1120, SubCellInst_SboxInst_12_n7}), .b ({new_AGEMA_signal_1119, SubCellInst_SboxInst_12_n1}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1223, SubCellInst_SboxInst_12_n2}) ) ; /* nor_COMAR_type_3 */
    or_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_13_U18 ( .common_out(common_out), .a ({new_AGEMA_signal_1230, SubCellInst_SboxInst_13_n13}), .b ({ciphertext_s1[9], ciphertext_s0[9]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1357, SubCellInst_SboxInst_13_n14}) ) ; /* or_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_13_U15 ( .common_out(common_out), .a ({new_AGEMA_signal_1125, SubCellInst_SboxInst_13_n10}), .b ({new_AGEMA_signal_1130, SubCellInst_SboxInst_13_n9}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1225, SubCellInst_SboxInst_13_n11}) ) ; /* nand_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_13_U11 ( .common_out(common_out), .a ({ciphertext_s1[8], ciphertext_s0[8]}), .b ({new_AGEMA_signal_1227, SubCellInst_SboxInst_13_n4}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1359, SubCellInst_SboxInst_13_n5}) ) ; /* nand_COMAR_type_3 */
    nor_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_13_U6 ( .common_out(common_out), .a ({new_AGEMA_signal_1128, SubCellInst_SboxInst_13_n7}), .b ({new_AGEMA_signal_1127, SubCellInst_SboxInst_13_n1}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1229, SubCellInst_SboxInst_13_n2}) ) ; /* nor_COMAR_type_3 */
    or_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_14_U18 ( .common_out(common_out), .a ({new_AGEMA_signal_1236, SubCellInst_SboxInst_14_n13}), .b ({ciphertext_s1[13], ciphertext_s0[13]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1362, SubCellInst_SboxInst_14_n14}) ) ; /* or_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_14_U15 ( .common_out(common_out), .a ({new_AGEMA_signal_1133, SubCellInst_SboxInst_14_n10}), .b ({new_AGEMA_signal_1138, SubCellInst_SboxInst_14_n9}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1231, SubCellInst_SboxInst_14_n11}) ) ; /* nand_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_14_U11 ( .common_out(common_out), .a ({ciphertext_s1[12], ciphertext_s0[12]}), .b ({new_AGEMA_signal_1233, SubCellInst_SboxInst_14_n4}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1364, SubCellInst_SboxInst_14_n5}) ) ; /* nand_COMAR_type_3 */
    nor_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_14_U6 ( .common_out(common_out), .a ({new_AGEMA_signal_1136, SubCellInst_SboxInst_14_n7}), .b ({new_AGEMA_signal_1135, SubCellInst_SboxInst_14_n1}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1235, SubCellInst_SboxInst_14_n2}) ) ; /* nor_COMAR_type_3 */
    or_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_15_U18 ( .common_out(common_out), .a ({new_AGEMA_signal_1242, SubCellInst_SboxInst_15_n13}), .b ({ciphertext_s1[1], ciphertext_s0[1]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1367, SubCellInst_SboxInst_15_n14}) ) ; /* or_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_15_U15 ( .common_out(common_out), .a ({new_AGEMA_signal_1141, SubCellInst_SboxInst_15_n10}), .b ({new_AGEMA_signal_1146, SubCellInst_SboxInst_15_n9}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1237, SubCellInst_SboxInst_15_n11}) ) ; /* nand_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_15_U11 ( .common_out(common_out), .a ({ciphertext_s1[0], ciphertext_s0[0]}), .b ({new_AGEMA_signal_1239, SubCellInst_SboxInst_15_n4}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1369, SubCellInst_SboxInst_15_n5}) ) ; /* nand_COMAR_type_3 */
    nor_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_15_U6 ( .common_out(common_out), .a ({new_AGEMA_signal_1144, SubCellInst_SboxInst_15_n7}), .b ({new_AGEMA_signal_1143, SubCellInst_SboxInst_15_n1}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1241, SubCellInst_SboxInst_15_n2}) ) ; /* nor_COMAR_type_3 */

    /* cells in depth 5 */

    /* cells in depth 6 */
    mux2_masked #(.security_order(1), .pipeline(0)) InputMUX_MUXInst_1_U1 ( .s (correct_rst), .b ({new_AGEMA_signal_1373, Feedback[1]}), .a ({correct_plaintext_s1[1], correct_plaintext_s0[1]}), .c ({new_AGEMA_signal_1582, MCOutput[1]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) InputMUX_MUXInst_3_U1 ( .s (correct_rst), .b ({new_AGEMA_signal_1371, Feedback[3]}), .a ({correct_plaintext_s1[3], correct_plaintext_s0[3]}), .c ({new_AGEMA_signal_1586, MCOutput[3]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) InputMUX_MUXInst_5_U1 ( .s (correct_rst), .b ({new_AGEMA_signal_1377, Feedback[5]}), .a ({correct_plaintext_s1[5], correct_plaintext_s0[5]}), .c ({new_AGEMA_signal_1590, MCOutput[5]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) InputMUX_MUXInst_7_U1 ( .s (correct_rst), .b ({new_AGEMA_signal_1375, Feedback[7]}), .a ({correct_plaintext_s1[7], correct_plaintext_s0[7]}), .c ({new_AGEMA_signal_1594, MCOutput[7]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) InputMUX_MUXInst_9_U1 ( .s (correct_rst), .b ({new_AGEMA_signal_1381, Feedback[9]}), .a ({correct_plaintext_s1[9], correct_plaintext_s0[9]}), .c ({new_AGEMA_signal_1598, MCOutput[9]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) InputMUX_MUXInst_11_U1 ( .s (correct_rst), .b ({new_AGEMA_signal_1379, Feedback[11]}), .a ({correct_plaintext_s1[11], correct_plaintext_s0[11]}), .c ({new_AGEMA_signal_1602, MCOutput[11]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) InputMUX_MUXInst_13_U1 ( .s (correct_rst), .b ({new_AGEMA_signal_1385, Feedback[13]}), .a ({correct_plaintext_s1[13], correct_plaintext_s0[13]}), .c ({new_AGEMA_signal_1606, MCOutput[13]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) InputMUX_MUXInst_15_U1 ( .s (correct_rst), .b ({new_AGEMA_signal_1383, Feedback[15]}), .a ({correct_plaintext_s1[15], correct_plaintext_s0[15]}), .c ({new_AGEMA_signal_1610, MCOutput[15]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) InputMUX_MUXInst_17_U1 ( .s (correct_rst), .b ({new_AGEMA_signal_1389, Feedback[17]}), .a ({correct_plaintext_s1[17], correct_plaintext_s0[17]}), .c ({new_AGEMA_signal_1614, MCOutput[17]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) InputMUX_MUXInst_19_U1 ( .s (correct_rst), .b ({new_AGEMA_signal_1387, Feedback[19]}), .a ({correct_plaintext_s1[19], correct_plaintext_s0[19]}), .c ({new_AGEMA_signal_1618, MCOutput[19]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) InputMUX_MUXInst_21_U1 ( .s (correct_rst), .b ({new_AGEMA_signal_1393, Feedback[21]}), .a ({correct_plaintext_s1[21], correct_plaintext_s0[21]}), .c ({new_AGEMA_signal_1622, MCOutput[21]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) InputMUX_MUXInst_23_U1 ( .s (correct_rst), .b ({new_AGEMA_signal_1391, Feedback[23]}), .a ({correct_plaintext_s1[23], correct_plaintext_s0[23]}), .c ({new_AGEMA_signal_1626, MCOutput[23]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) InputMUX_MUXInst_25_U1 ( .s (correct_rst), .b ({new_AGEMA_signal_1397, Feedback[25]}), .a ({correct_plaintext_s1[25], correct_plaintext_s0[25]}), .c ({new_AGEMA_signal_1630, MCOutput[25]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) InputMUX_MUXInst_27_U1 ( .s (correct_rst), .b ({new_AGEMA_signal_1395, Feedback[27]}), .a ({correct_plaintext_s1[27], correct_plaintext_s0[27]}), .c ({new_AGEMA_signal_1634, MCOutput[27]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) InputMUX_MUXInst_29_U1 ( .s (correct_rst), .b ({new_AGEMA_signal_1401, Feedback[29]}), .a ({correct_plaintext_s1[29], correct_plaintext_s0[29]}), .c ({new_AGEMA_signal_1638, MCOutput[29]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) InputMUX_MUXInst_31_U1 ( .s (correct_rst), .b ({new_AGEMA_signal_1399, Feedback[31]}), .a ({correct_plaintext_s1[31], correct_plaintext_s0[31]}), .c ({new_AGEMA_signal_1642, MCOutput[31]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) InputMUX_MUXInst_33_U1 ( .s (correct_rst), .b ({new_AGEMA_signal_1405, Feedback[33]}), .a ({correct_plaintext_s1[33], correct_plaintext_s0[33]}), .c ({new_AGEMA_signal_1646, MCInput[33]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) InputMUX_MUXInst_35_U1 ( .s (correct_rst), .b ({new_AGEMA_signal_1403, Feedback[35]}), .a ({correct_plaintext_s1[35], correct_plaintext_s0[35]}), .c ({new_AGEMA_signal_1650, MCInput[35]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) InputMUX_MUXInst_37_U1 ( .s (correct_rst), .b ({new_AGEMA_signal_1409, Feedback[37]}), .a ({correct_plaintext_s1[37], correct_plaintext_s0[37]}), .c ({new_AGEMA_signal_1654, MCInput[37]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) InputMUX_MUXInst_39_U1 ( .s (correct_rst), .b ({new_AGEMA_signal_1407, Feedback[39]}), .a ({correct_plaintext_s1[39], correct_plaintext_s0[39]}), .c ({new_AGEMA_signal_1658, MCInput[39]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) InputMUX_MUXInst_41_U1 ( .s (correct_rst), .b ({new_AGEMA_signal_1413, Feedback[41]}), .a ({correct_plaintext_s1[41], correct_plaintext_s0[41]}), .c ({new_AGEMA_signal_1662, MCInput[41]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) InputMUX_MUXInst_43_U1 ( .s (correct_rst), .b ({new_AGEMA_signal_1411, Feedback[43]}), .a ({correct_plaintext_s1[43], correct_plaintext_s0[43]}), .c ({new_AGEMA_signal_1666, MCInput[43]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) InputMUX_MUXInst_45_U1 ( .s (correct_rst), .b ({new_AGEMA_signal_1417, Feedback[45]}), .a ({correct_plaintext_s1[45], correct_plaintext_s0[45]}), .c ({new_AGEMA_signal_1670, MCInput[45]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) InputMUX_MUXInst_47_U1 ( .s (correct_rst), .b ({new_AGEMA_signal_1415, Feedback[47]}), .a ({correct_plaintext_s1[47], correct_plaintext_s0[47]}), .c ({new_AGEMA_signal_1674, MCInput[47]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) InputMUX_MUXInst_49_U1 ( .s (correct_rst), .b ({new_AGEMA_signal_1421, Feedback[49]}), .a ({correct_plaintext_s1[49], correct_plaintext_s0[49]}), .c ({new_AGEMA_signal_1678, MCInput[49]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) InputMUX_MUXInst_51_U1 ( .s (correct_rst), .b ({new_AGEMA_signal_1419, Feedback[51]}), .a ({correct_plaintext_s1[51], correct_plaintext_s0[51]}), .c ({new_AGEMA_signal_1682, MCInput[51]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) InputMUX_MUXInst_53_U1 ( .s (correct_rst), .b ({new_AGEMA_signal_1425, Feedback[53]}), .a ({correct_plaintext_s1[53], correct_plaintext_s0[53]}), .c ({new_AGEMA_signal_1686, MCInput[53]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) InputMUX_MUXInst_55_U1 ( .s (correct_rst), .b ({new_AGEMA_signal_1423, Feedback[55]}), .a ({correct_plaintext_s1[55], correct_plaintext_s0[55]}), .c ({new_AGEMA_signal_1690, MCInput[55]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) InputMUX_MUXInst_57_U1 ( .s (correct_rst), .b ({new_AGEMA_signal_1429, Feedback[57]}), .a ({correct_plaintext_s1[57], correct_plaintext_s0[57]}), .c ({new_AGEMA_signal_1694, MCInput[57]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) InputMUX_MUXInst_59_U1 ( .s (correct_rst), .b ({new_AGEMA_signal_1427, Feedback[59]}), .a ({correct_plaintext_s1[59], correct_plaintext_s0[59]}), .c ({new_AGEMA_signal_1698, MCInput[59]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) InputMUX_MUXInst_61_U1 ( .s (correct_rst), .b ({new_AGEMA_signal_1433, Feedback[61]}), .a ({correct_plaintext_s1[61], correct_plaintext_s0[61]}), .c ({new_AGEMA_signal_1702, MCInput[61]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) InputMUX_MUXInst_63_U1 ( .s (correct_rst), .b ({new_AGEMA_signal_1431, Feedback[63]}), .a ({correct_plaintext_s1[63], correct_plaintext_s0[63]}), .c ({new_AGEMA_signal_1706, MCInput[63]}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) MCInst_XOR_r1_Inst_1_U1 ( .a ({new_AGEMA_signal_1646, MCInput[33]}), .b ({new_AGEMA_signal_1718, MCInst_XOR_r1_Inst_1_n1}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) MCInst_XOR_r1_Inst_3_U1 ( .a ({new_AGEMA_signal_1650, MCInput[35]}), .b ({new_AGEMA_signal_1722, MCInst_XOR_r1_Inst_3_n1}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) MCInst_XOR_r1_Inst_5_U1 ( .a ({new_AGEMA_signal_1654, MCInput[37]}), .b ({new_AGEMA_signal_1726, MCInst_XOR_r1_Inst_5_n1}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) MCInst_XOR_r1_Inst_7_U1 ( .a ({new_AGEMA_signal_1658, MCInput[39]}), .b ({new_AGEMA_signal_1730, MCInst_XOR_r1_Inst_7_n1}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) MCInst_XOR_r1_Inst_9_U1 ( .a ({new_AGEMA_signal_1662, MCInput[41]}), .b ({new_AGEMA_signal_1734, MCInst_XOR_r1_Inst_9_n1}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) MCInst_XOR_r1_Inst_11_U1 ( .a ({new_AGEMA_signal_1666, MCInput[43]}), .b ({new_AGEMA_signal_1738, MCInst_XOR_r1_Inst_11_n1}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) MCInst_XOR_r1_Inst_13_U1 ( .a ({new_AGEMA_signal_1670, MCInput[45]}), .b ({new_AGEMA_signal_1742, MCInst_XOR_r1_Inst_13_n1}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) MCInst_XOR_r1_Inst_15_U1 ( .a ({new_AGEMA_signal_1674, MCInput[47]}), .b ({new_AGEMA_signal_1746, MCInst_XOR_r1_Inst_15_n1}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) AddKeyXOR2_XORInst_0_1_U1 ( .a ({new_AGEMA_signal_1582, MCOutput[1]}), .b ({new_AGEMA_signal_1748, AddKeyXOR2_XORInst_0_1_n1}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) AddKeyXOR2_XORInst_0_3_U1 ( .a ({new_AGEMA_signal_1586, MCOutput[3]}), .b ({new_AGEMA_signal_1750, AddKeyXOR2_XORInst_0_3_n1}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) AddKeyXOR2_XORInst_1_1_U1 ( .a ({new_AGEMA_signal_1590, MCOutput[5]}), .b ({new_AGEMA_signal_1752, AddKeyXOR2_XORInst_1_1_n1}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) AddKeyXOR2_XORInst_1_3_U1 ( .a ({new_AGEMA_signal_1594, MCOutput[7]}), .b ({new_AGEMA_signal_1754, AddKeyXOR2_XORInst_1_3_n1}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) AddKeyXOR2_XORInst_2_1_U1 ( .a ({new_AGEMA_signal_1598, MCOutput[9]}), .b ({new_AGEMA_signal_1756, AddKeyXOR2_XORInst_2_1_n1}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) AddKeyXOR2_XORInst_2_3_U1 ( .a ({new_AGEMA_signal_1602, MCOutput[11]}), .b ({new_AGEMA_signal_1758, AddKeyXOR2_XORInst_2_3_n1}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) AddKeyXOR2_XORInst_3_1_U1 ( .a ({new_AGEMA_signal_1606, MCOutput[13]}), .b ({new_AGEMA_signal_1760, AddKeyXOR2_XORInst_3_1_n1}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) AddKeyXOR2_XORInst_3_3_U1 ( .a ({new_AGEMA_signal_1610, MCOutput[15]}), .b ({new_AGEMA_signal_1762, AddKeyXOR2_XORInst_3_3_n1}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) AddKeyXOR2_XORInst_4_1_U1 ( .a ({new_AGEMA_signal_1614, MCOutput[17]}), .b ({new_AGEMA_signal_1764, AddKeyXOR2_XORInst_4_1_n1}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) AddKeyXOR2_XORInst_4_3_U1 ( .a ({new_AGEMA_signal_1618, MCOutput[19]}), .b ({new_AGEMA_signal_1766, AddKeyXOR2_XORInst_4_3_n1}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) AddKeyXOR2_XORInst_5_1_U1 ( .a ({new_AGEMA_signal_1622, MCOutput[21]}), .b ({new_AGEMA_signal_1768, AddKeyXOR2_XORInst_5_1_n1}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) AddKeyXOR2_XORInst_5_3_U1 ( .a ({new_AGEMA_signal_1626, MCOutput[23]}), .b ({new_AGEMA_signal_1770, AddKeyXOR2_XORInst_5_3_n1}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) AddKeyXOR2_XORInst_6_1_U1 ( .a ({new_AGEMA_signal_1630, MCOutput[25]}), .b ({new_AGEMA_signal_1772, AddKeyXOR2_XORInst_6_1_n1}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) AddKeyXOR2_XORInst_6_3_U1 ( .a ({new_AGEMA_signal_1634, MCOutput[27]}), .b ({new_AGEMA_signal_1774, AddKeyXOR2_XORInst_6_3_n1}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) AddKeyXOR2_XORInst_7_1_U1 ( .a ({new_AGEMA_signal_1638, MCOutput[29]}), .b ({new_AGEMA_signal_1776, AddKeyXOR2_XORInst_7_1_n1}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) AddKeyXOR2_XORInst_7_3_U1 ( .a ({new_AGEMA_signal_1642, MCOutput[31]}), .b ({new_AGEMA_signal_1778, AddKeyXOR2_XORInst_7_3_n1}) ) ;
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_0_U19 ( .common_out(common_out), .a ({common_and[0], SubCellInst_SboxInst_0_n15}), .b ({common_and[1], SubCellInst_SboxInst_0_n14}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1371, Feedback[3]}) ) ; /* nand_COMAR_type_1 */
    nand_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_0_U16 ( .common_out(common_out), .a ({new_AGEMA_signal_1147, SubCellInst_SboxInst_0_n11}), .b ({ciphertext_s1[61], ciphertext_s0[61]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1293, SubCellInst_SboxInst_0_n12}) ) ; /* nand_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_0_U12 ( .common_out(common_out), .a ({common_and[0], SubCellInst_SboxInst_0_n6}), .b ({common_and[1], SubCellInst_SboxInst_0_n5}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1373, Feedback[1]}) ) ; /* nand_COMAR_type_1 */
    nor_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_0_U7 ( .common_out(common_out), .a ({ciphertext_s1[61], ciphertext_s0[61]}), .b ({new_AGEMA_signal_1151, SubCellInst_SboxInst_0_n2}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1295, SubCellInst_SboxInst_0_n3}) ) ; /* nor_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_1_U19 ( .common_out(common_out), .a ({common_and[0], SubCellInst_SboxInst_1_n15}), .b ({common_and[1], SubCellInst_SboxInst_1_n14}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1375, Feedback[7]}) ) ; /* nand_COMAR_type_1 */
    nand_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_1_U16 ( .common_out(common_out), .a ({new_AGEMA_signal_1153, SubCellInst_SboxInst_1_n11}), .b ({ciphertext_s1[49], ciphertext_s0[49]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1298, SubCellInst_SboxInst_1_n12}) ) ; /* nand_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_1_U12 ( .common_out(common_out), .a ({common_and[0], SubCellInst_SboxInst_1_n6}), .b ({common_and[1], SubCellInst_SboxInst_1_n5}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1377, Feedback[5]}) ) ; /* nand_COMAR_type_1 */
    nor_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_1_U7 ( .common_out(common_out), .a ({ciphertext_s1[49], ciphertext_s0[49]}), .b ({new_AGEMA_signal_1157, SubCellInst_SboxInst_1_n2}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1300, SubCellInst_SboxInst_1_n3}) ) ; /* nor_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_2_U19 ( .common_out(common_out), .a ({common_and[0], SubCellInst_SboxInst_2_n15}), .b ({common_and[1], SubCellInst_SboxInst_2_n14}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1379, Feedback[11]}) ) ; /* nand_COMAR_type_1 */
    nand_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_2_U16 ( .common_out(common_out), .a ({new_AGEMA_signal_1159, SubCellInst_SboxInst_2_n11}), .b ({ciphertext_s1[53], ciphertext_s0[53]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1303, SubCellInst_SboxInst_2_n12}) ) ; /* nand_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_2_U12 ( .common_out(common_out), .a ({common_and[0], SubCellInst_SboxInst_2_n6}), .b ({common_and[1], SubCellInst_SboxInst_2_n5}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1381, Feedback[9]}) ) ; /* nand_COMAR_type_1 */
    nor_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_2_U7 ( .common_out(common_out), .a ({ciphertext_s1[53], ciphertext_s0[53]}), .b ({new_AGEMA_signal_1163, SubCellInst_SboxInst_2_n2}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1305, SubCellInst_SboxInst_2_n3}) ) ; /* nor_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_3_U19 ( .common_out(common_out), .a ({common_and[0], SubCellInst_SboxInst_3_n15}), .b ({common_and[1], SubCellInst_SboxInst_3_n14}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1383, Feedback[15]}) ) ; /* nand_COMAR_type_1 */
    nand_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_3_U16 ( .common_out(common_out), .a ({new_AGEMA_signal_1165, SubCellInst_SboxInst_3_n11}), .b ({ciphertext_s1[57], ciphertext_s0[57]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1308, SubCellInst_SboxInst_3_n12}) ) ; /* nand_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_3_U12 ( .common_out(common_out), .a ({common_and[0], SubCellInst_SboxInst_3_n6}), .b ({common_and[1], SubCellInst_SboxInst_3_n5}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1385, Feedback[13]}) ) ; /* nand_COMAR_type_1 */
    nor_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_3_U7 ( .common_out(common_out), .a ({ciphertext_s1[57], ciphertext_s0[57]}), .b ({new_AGEMA_signal_1169, SubCellInst_SboxInst_3_n2}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1310, SubCellInst_SboxInst_3_n3}) ) ; /* nor_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_4_U19 ( .common_out(common_out), .a ({common_and[0], SubCellInst_SboxInst_4_n15}), .b ({common_and[1], SubCellInst_SboxInst_4_n14}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1387, Feedback[19]}) ) ; /* nand_COMAR_type_1 */
    nand_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_4_U16 ( .common_out(common_out), .a ({new_AGEMA_signal_1171, SubCellInst_SboxInst_4_n11}), .b ({ciphertext_s1[33], ciphertext_s0[33]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1313, SubCellInst_SboxInst_4_n12}) ) ; /* nand_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_4_U12 ( .common_out(common_out), .a ({common_and[0], SubCellInst_SboxInst_4_n6}), .b ({common_and[1], SubCellInst_SboxInst_4_n5}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1389, Feedback[17]}) ) ; /* nand_COMAR_type_1 */
    nor_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_4_U7 ( .common_out(common_out), .a ({ciphertext_s1[33], ciphertext_s0[33]}), .b ({new_AGEMA_signal_1175, SubCellInst_SboxInst_4_n2}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1315, SubCellInst_SboxInst_4_n3}) ) ; /* nor_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_5_U19 ( .common_out(common_out), .a ({common_and[0], SubCellInst_SboxInst_5_n15}), .b ({common_and[1], SubCellInst_SboxInst_5_n14}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1391, Feedback[23]}) ) ; /* nand_COMAR_type_1 */
    nand_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_5_U16 ( .common_out(common_out), .a ({new_AGEMA_signal_1177, SubCellInst_SboxInst_5_n11}), .b ({ciphertext_s1[45], ciphertext_s0[45]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1318, SubCellInst_SboxInst_5_n12}) ) ; /* nand_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_5_U12 ( .common_out(common_out), .a ({common_and[0], SubCellInst_SboxInst_5_n6}), .b ({common_and[1], SubCellInst_SboxInst_5_n5}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1393, Feedback[21]}) ) ; /* nand_COMAR_type_1 */
    nor_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_5_U7 ( .common_out(common_out), .a ({ciphertext_s1[45], ciphertext_s0[45]}), .b ({new_AGEMA_signal_1181, SubCellInst_SboxInst_5_n2}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1320, SubCellInst_SboxInst_5_n3}) ) ; /* nor_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_6_U19 ( .common_out(common_out), .a ({common_and[0], SubCellInst_SboxInst_6_n15}), .b ({common_and[1], SubCellInst_SboxInst_6_n14}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1395, Feedback[27]}) ) ; /* nand_COMAR_type_1 */
    nand_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_6_U16 ( .common_out(common_out), .a ({new_AGEMA_signal_1183, SubCellInst_SboxInst_6_n11}), .b ({ciphertext_s1[41], ciphertext_s0[41]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1323, SubCellInst_SboxInst_6_n12}) ) ; /* nand_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_6_U12 ( .common_out(common_out), .a ({common_and[0], SubCellInst_SboxInst_6_n6}), .b ({common_and[1], SubCellInst_SboxInst_6_n5}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1397, Feedback[25]}) ) ; /* nand_COMAR_type_1 */
    nor_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_6_U7 ( .common_out(common_out), .a ({ciphertext_s1[41], ciphertext_s0[41]}), .b ({new_AGEMA_signal_1187, SubCellInst_SboxInst_6_n2}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1325, SubCellInst_SboxInst_6_n3}) ) ; /* nor_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_7_U19 ( .common_out(common_out), .a ({common_and[0], SubCellInst_SboxInst_7_n15}), .b ({common_and[1], SubCellInst_SboxInst_7_n14}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1399, Feedback[31]}) ) ; /* nand_COMAR_type_1 */
    nand_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_7_U16 ( .common_out(common_out), .a ({new_AGEMA_signal_1189, SubCellInst_SboxInst_7_n11}), .b ({ciphertext_s1[37], ciphertext_s0[37]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1328, SubCellInst_SboxInst_7_n12}) ) ; /* nand_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_7_U12 ( .common_out(common_out), .a ({common_and[0], SubCellInst_SboxInst_7_n6}), .b ({common_and[1], SubCellInst_SboxInst_7_n5}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1401, Feedback[29]}) ) ; /* nand_COMAR_type_1 */
    nor_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_7_U7 ( .common_out(common_out), .a ({ciphertext_s1[37], ciphertext_s0[37]}), .b ({new_AGEMA_signal_1193, SubCellInst_SboxInst_7_n2}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1330, SubCellInst_SboxInst_7_n3}) ) ; /* nor_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_8_U19 ( .common_out(common_out), .a ({common_and[0], SubCellInst_SboxInst_8_n15}), .b ({common_and[1], SubCellInst_SboxInst_8_n14}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1403, Feedback[35]}) ) ; /* nand_COMAR_type_1 */
    nand_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_8_U16 ( .common_out(common_out), .a ({new_AGEMA_signal_1195, SubCellInst_SboxInst_8_n11}), .b ({ciphertext_s1[17], ciphertext_s0[17]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1333, SubCellInst_SboxInst_8_n12}) ) ; /* nand_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_8_U12 ( .common_out(common_out), .a ({common_and[0], SubCellInst_SboxInst_8_n6}), .b ({common_and[1], SubCellInst_SboxInst_8_n5}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1405, Feedback[33]}) ) ; /* nand_COMAR_type_1 */
    nor_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_8_U7 ( .common_out(common_out), .a ({ciphertext_s1[17], ciphertext_s0[17]}), .b ({new_AGEMA_signal_1199, SubCellInst_SboxInst_8_n2}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1335, SubCellInst_SboxInst_8_n3}) ) ; /* nor_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_9_U19 ( .common_out(common_out), .a ({common_and[0], SubCellInst_SboxInst_9_n15}), .b ({common_and[1], SubCellInst_SboxInst_9_n14}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1407, Feedback[39]}) ) ; /* nand_COMAR_type_1 */
    nand_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_9_U16 ( .common_out(common_out), .a ({new_AGEMA_signal_1201, SubCellInst_SboxInst_9_n11}), .b ({ciphertext_s1[29], ciphertext_s0[29]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1338, SubCellInst_SboxInst_9_n12}) ) ; /* nand_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_9_U12 ( .common_out(common_out), .a ({common_and[0], SubCellInst_SboxInst_9_n6}), .b ({common_and[1], SubCellInst_SboxInst_9_n5}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1409, Feedback[37]}) ) ; /* nand_COMAR_type_1 */
    nor_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_9_U7 ( .common_out(common_out), .a ({ciphertext_s1[29], ciphertext_s0[29]}), .b ({new_AGEMA_signal_1205, SubCellInst_SboxInst_9_n2}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1340, SubCellInst_SboxInst_9_n3}) ) ; /* nor_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_10_U19 ( .common_out(common_out), .a ({common_and[0], SubCellInst_SboxInst_10_n15}), .b ({common_and[1], SubCellInst_SboxInst_10_n14}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1411, Feedback[43]}) ) ; /* nand_COMAR_type_1 */
    nand_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_10_U16 ( .common_out(common_out), .a ({new_AGEMA_signal_1207, SubCellInst_SboxInst_10_n11}), .b ({ciphertext_s1[25], ciphertext_s0[25]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1343, SubCellInst_SboxInst_10_n12}) ) ; /* nand_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_10_U12 ( .common_out(common_out), .a ({common_and[0], SubCellInst_SboxInst_10_n6}), .b ({common_and[1], SubCellInst_SboxInst_10_n5}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1413, Feedback[41]}) ) ; /* nand_COMAR_type_1 */
    nor_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_10_U7 ( .common_out(common_out), .a ({ciphertext_s1[25], ciphertext_s0[25]}), .b ({new_AGEMA_signal_1211, SubCellInst_SboxInst_10_n2}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1345, SubCellInst_SboxInst_10_n3}) ) ; /* nor_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_11_U19 ( .common_out(common_out), .a ({common_and[0], SubCellInst_SboxInst_11_n15}), .b ({common_and[1], SubCellInst_SboxInst_11_n14}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1415, Feedback[47]}) ) ; /* nand_COMAR_type_1 */
    nand_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_11_U16 ( .common_out(common_out), .a ({new_AGEMA_signal_1213, SubCellInst_SboxInst_11_n11}), .b ({ciphertext_s1[21], ciphertext_s0[21]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1348, SubCellInst_SboxInst_11_n12}) ) ; /* nand_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_11_U12 ( .common_out(common_out), .a ({common_and[0], SubCellInst_SboxInst_11_n6}), .b ({common_and[1], SubCellInst_SboxInst_11_n5}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1417, Feedback[45]}) ) ; /* nand_COMAR_type_1 */
    nor_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_11_U7 ( .common_out(common_out), .a ({ciphertext_s1[21], ciphertext_s0[21]}), .b ({new_AGEMA_signal_1217, SubCellInst_SboxInst_11_n2}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1350, SubCellInst_SboxInst_11_n3}) ) ; /* nor_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_12_U19 ( .common_out(common_out), .a ({common_and[0], SubCellInst_SboxInst_12_n15}), .b ({common_and[1], SubCellInst_SboxInst_12_n14}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1419, Feedback[51]}) ) ; /* nand_COMAR_type_1 */
    nand_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_12_U16 ( .common_out(common_out), .a ({new_AGEMA_signal_1219, SubCellInst_SboxInst_12_n11}), .b ({ciphertext_s1[5], ciphertext_s0[5]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1353, SubCellInst_SboxInst_12_n12}) ) ; /* nand_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_12_U12 ( .common_out(common_out), .a ({common_and[0], SubCellInst_SboxInst_12_n6}), .b ({common_and[1], SubCellInst_SboxInst_12_n5}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1421, Feedback[49]}) ) ; /* nand_COMAR_type_1 */
    nor_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_12_U7 ( .common_out(common_out), .a ({ciphertext_s1[5], ciphertext_s0[5]}), .b ({new_AGEMA_signal_1223, SubCellInst_SboxInst_12_n2}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1355, SubCellInst_SboxInst_12_n3}) ) ; /* nor_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_13_U19 ( .common_out(common_out), .a ({common_and[0], SubCellInst_SboxInst_13_n15}), .b ({common_and[1], SubCellInst_SboxInst_13_n14}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1423, Feedback[55]}) ) ; /* nand_COMAR_type_1 */
    nand_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_13_U16 ( .common_out(common_out), .a ({new_AGEMA_signal_1225, SubCellInst_SboxInst_13_n11}), .b ({ciphertext_s1[9], ciphertext_s0[9]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1358, SubCellInst_SboxInst_13_n12}) ) ; /* nand_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_13_U12 ( .common_out(common_out), .a ({common_and[0], SubCellInst_SboxInst_13_n6}), .b ({common_and[1], SubCellInst_SboxInst_13_n5}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1425, Feedback[53]}) ) ; /* nand_COMAR_type_1 */
    nor_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_13_U7 ( .common_out(common_out), .a ({ciphertext_s1[9], ciphertext_s0[9]}), .b ({new_AGEMA_signal_1229, SubCellInst_SboxInst_13_n2}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1360, SubCellInst_SboxInst_13_n3}) ) ; /* nor_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_14_U19 ( .common_out(common_out), .a ({common_and[0], SubCellInst_SboxInst_14_n15}), .b ({common_and[1], SubCellInst_SboxInst_14_n14}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1427, Feedback[59]}) ) ; /* nand_COMAR_type_1 */
    nand_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_14_U16 ( .common_out(common_out), .a ({new_AGEMA_signal_1231, SubCellInst_SboxInst_14_n11}), .b ({ciphertext_s1[13], ciphertext_s0[13]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1363, SubCellInst_SboxInst_14_n12}) ) ; /* nand_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_14_U12 ( .common_out(common_out), .a ({common_and[0], SubCellInst_SboxInst_14_n6}), .b ({common_and[1], SubCellInst_SboxInst_14_n5}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1429, Feedback[57]}) ) ; /* nand_COMAR_type_1 */
    nor_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_14_U7 ( .common_out(common_out), .a ({ciphertext_s1[13], ciphertext_s0[13]}), .b ({new_AGEMA_signal_1235, SubCellInst_SboxInst_14_n2}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1365, SubCellInst_SboxInst_14_n3}) ) ; /* nor_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_15_U19 ( .common_out(common_out), .a ({common_and[0], SubCellInst_SboxInst_15_n15}), .b ({common_and[1], SubCellInst_SboxInst_15_n14}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1431, Feedback[63]}) ) ; /* nand_COMAR_type_1 */
    nand_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_15_U16 ( .common_out(common_out), .a ({new_AGEMA_signal_1237, SubCellInst_SboxInst_15_n11}), .b ({ciphertext_s1[1], ciphertext_s0[1]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1368, SubCellInst_SboxInst_15_n12}) ) ; /* nand_COMAR_type_3 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_15_U12 ( .common_out(common_out), .a ({common_and[0], SubCellInst_SboxInst_15_n6}), .b ({common_and[1], SubCellInst_SboxInst_15_n5}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1433, Feedback[61]}) ) ; /* nand_COMAR_type_1 */
    nor_COMAR #(.security_order(1), .pipeline(0)) SubCellInst_SboxInst_15_U7 ( .common_out(common_out), .a ({ciphertext_s1[1], ciphertext_s0[1]}), .b ({new_AGEMA_signal_1241, SubCellInst_SboxInst_15_n2}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1370, SubCellInst_SboxInst_15_n3}) ) ; /* nor_COMAR_type_3 */

    /* cells in depth 7 */

    /* cells in depth 8 */
    mux2_masked #(.security_order(1), .pipeline(0)) InputMUX_MUXInst_0_U1 ( .s (correct_rst), .b ({new_AGEMA_signal_1374, Feedback[0]}), .a ({correct_plaintext_s1[0], correct_plaintext_s0[0]}), .c ({new_AGEMA_signal_1580, MCOutput[0]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) InputMUX_MUXInst_2_U1 ( .s (correct_rst), .b ({new_AGEMA_signal_1372, Feedback[2]}), .a ({correct_plaintext_s1[2], correct_plaintext_s0[2]}), .c ({new_AGEMA_signal_1584, MCOutput[2]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) InputMUX_MUXInst_4_U1 ( .s (correct_rst), .b ({new_AGEMA_signal_1378, Feedback[4]}), .a ({correct_plaintext_s1[4], correct_plaintext_s0[4]}), .c ({new_AGEMA_signal_1588, MCOutput[4]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) InputMUX_MUXInst_6_U1 ( .s (correct_rst), .b ({new_AGEMA_signal_1376, Feedback[6]}), .a ({correct_plaintext_s1[6], correct_plaintext_s0[6]}), .c ({new_AGEMA_signal_1592, MCOutput[6]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) InputMUX_MUXInst_8_U1 ( .s (correct_rst), .b ({new_AGEMA_signal_1382, Feedback[8]}), .a ({correct_plaintext_s1[8], correct_plaintext_s0[8]}), .c ({new_AGEMA_signal_1596, MCOutput[8]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) InputMUX_MUXInst_10_U1 ( .s (correct_rst), .b ({new_AGEMA_signal_1380, Feedback[10]}), .a ({correct_plaintext_s1[10], correct_plaintext_s0[10]}), .c ({new_AGEMA_signal_1600, MCOutput[10]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) InputMUX_MUXInst_12_U1 ( .s (correct_rst), .b ({new_AGEMA_signal_1386, Feedback[12]}), .a ({correct_plaintext_s1[12], correct_plaintext_s0[12]}), .c ({new_AGEMA_signal_1604, MCOutput[12]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) InputMUX_MUXInst_14_U1 ( .s (correct_rst), .b ({new_AGEMA_signal_1384, Feedback[14]}), .a ({correct_plaintext_s1[14], correct_plaintext_s0[14]}), .c ({new_AGEMA_signal_1608, MCOutput[14]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) InputMUX_MUXInst_16_U1 ( .s (correct_rst), .b ({new_AGEMA_signal_1390, Feedback[16]}), .a ({correct_plaintext_s1[16], correct_plaintext_s0[16]}), .c ({new_AGEMA_signal_1612, MCOutput[16]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) InputMUX_MUXInst_18_U1 ( .s (correct_rst), .b ({new_AGEMA_signal_1388, Feedback[18]}), .a ({correct_plaintext_s1[18], correct_plaintext_s0[18]}), .c ({new_AGEMA_signal_1616, MCOutput[18]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) InputMUX_MUXInst_20_U1 ( .s (correct_rst), .b ({new_AGEMA_signal_1394, Feedback[20]}), .a ({correct_plaintext_s1[20], correct_plaintext_s0[20]}), .c ({new_AGEMA_signal_1620, MCOutput[20]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) InputMUX_MUXInst_22_U1 ( .s (correct_rst), .b ({new_AGEMA_signal_1392, Feedback[22]}), .a ({correct_plaintext_s1[22], correct_plaintext_s0[22]}), .c ({new_AGEMA_signal_1624, MCOutput[22]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) InputMUX_MUXInst_24_U1 ( .s (correct_rst), .b ({new_AGEMA_signal_1398, Feedback[24]}), .a ({correct_plaintext_s1[24], correct_plaintext_s0[24]}), .c ({new_AGEMA_signal_1628, MCOutput[24]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) InputMUX_MUXInst_26_U1 ( .s (correct_rst), .b ({new_AGEMA_signal_1396, Feedback[26]}), .a ({correct_plaintext_s1[26], correct_plaintext_s0[26]}), .c ({new_AGEMA_signal_1632, MCOutput[26]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) InputMUX_MUXInst_28_U1 ( .s (correct_rst), .b ({new_AGEMA_signal_1402, Feedback[28]}), .a ({correct_plaintext_s1[28], correct_plaintext_s0[28]}), .c ({new_AGEMA_signal_1636, MCOutput[28]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) InputMUX_MUXInst_30_U1 ( .s (correct_rst), .b ({new_AGEMA_signal_1400, Feedback[30]}), .a ({correct_plaintext_s1[30], correct_plaintext_s0[30]}), .c ({new_AGEMA_signal_1640, MCOutput[30]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) InputMUX_MUXInst_32_U1 ( .s (correct_rst), .b ({new_AGEMA_signal_1406, Feedback[32]}), .a ({correct_plaintext_s1[32], correct_plaintext_s0[32]}), .c ({new_AGEMA_signal_1644, MCInput[32]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) InputMUX_MUXInst_34_U1 ( .s (correct_rst), .b ({new_AGEMA_signal_1404, Feedback[34]}), .a ({correct_plaintext_s1[34], correct_plaintext_s0[34]}), .c ({new_AGEMA_signal_1648, MCInput[34]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) InputMUX_MUXInst_36_U1 ( .s (correct_rst), .b ({new_AGEMA_signal_1410, Feedback[36]}), .a ({correct_plaintext_s1[36], correct_plaintext_s0[36]}), .c ({new_AGEMA_signal_1652, MCInput[36]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) InputMUX_MUXInst_38_U1 ( .s (correct_rst), .b ({new_AGEMA_signal_1408, Feedback[38]}), .a ({correct_plaintext_s1[38], correct_plaintext_s0[38]}), .c ({new_AGEMA_signal_1656, MCInput[38]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) InputMUX_MUXInst_40_U1 ( .s (correct_rst), .b ({new_AGEMA_signal_1414, Feedback[40]}), .a ({correct_plaintext_s1[40], correct_plaintext_s0[40]}), .c ({new_AGEMA_signal_1660, MCInput[40]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) InputMUX_MUXInst_42_U1 ( .s (correct_rst), .b ({new_AGEMA_signal_1412, Feedback[42]}), .a ({correct_plaintext_s1[42], correct_plaintext_s0[42]}), .c ({new_AGEMA_signal_1664, MCInput[42]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) InputMUX_MUXInst_44_U1 ( .s (correct_rst), .b ({new_AGEMA_signal_1418, Feedback[44]}), .a ({correct_plaintext_s1[44], correct_plaintext_s0[44]}), .c ({new_AGEMA_signal_1668, MCInput[44]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) InputMUX_MUXInst_46_U1 ( .s (correct_rst), .b ({new_AGEMA_signal_1416, Feedback[46]}), .a ({correct_plaintext_s1[46], correct_plaintext_s0[46]}), .c ({new_AGEMA_signal_1672, MCInput[46]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) InputMUX_MUXInst_48_U1 ( .s (correct_rst), .b ({new_AGEMA_signal_1422, Feedback[48]}), .a ({correct_plaintext_s1[48], correct_plaintext_s0[48]}), .c ({new_AGEMA_signal_1676, MCInput[48]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) InputMUX_MUXInst_50_U1 ( .s (correct_rst), .b ({new_AGEMA_signal_1420, Feedback[50]}), .a ({correct_plaintext_s1[50], correct_plaintext_s0[50]}), .c ({new_AGEMA_signal_1680, MCInput[50]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) InputMUX_MUXInst_52_U1 ( .s (correct_rst), .b ({new_AGEMA_signal_1426, Feedback[52]}), .a ({correct_plaintext_s1[52], correct_plaintext_s0[52]}), .c ({new_AGEMA_signal_1684, MCInput[52]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) InputMUX_MUXInst_54_U1 ( .s (correct_rst), .b ({new_AGEMA_signal_1424, Feedback[54]}), .a ({correct_plaintext_s1[54], correct_plaintext_s0[54]}), .c ({new_AGEMA_signal_1688, MCInput[54]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) InputMUX_MUXInst_56_U1 ( .s (correct_rst), .b ({new_AGEMA_signal_1430, Feedback[56]}), .a ({correct_plaintext_s1[56], correct_plaintext_s0[56]}), .c ({new_AGEMA_signal_1692, MCInput[56]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) InputMUX_MUXInst_58_U1 ( .s (correct_rst), .b ({new_AGEMA_signal_1428, Feedback[58]}), .a ({correct_plaintext_s1[58], correct_plaintext_s0[58]}), .c ({new_AGEMA_signal_1696, MCInput[58]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) InputMUX_MUXInst_60_U1 ( .s (correct_rst), .b ({new_AGEMA_signal_1434, Feedback[60]}), .a ({correct_plaintext_s1[60], correct_plaintext_s0[60]}), .c ({new_AGEMA_signal_1700, MCInput[60]}) ) ;
    mux2_masked #(.security_order(1), .pipeline(0)) InputMUX_MUXInst_62_U1 ( .s (correct_rst), .b ({new_AGEMA_signal_1432, Feedback[62]}), .a ({correct_plaintext_s1[62], correct_plaintext_s0[62]}), .c ({new_AGEMA_signal_1704, MCInput[62]}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) MCInst_XOR_r1_Inst_0_U1 ( .a ({new_AGEMA_signal_1644, MCInput[32]}), .b ({new_AGEMA_signal_1716, MCInst_XOR_r1_Inst_0_n1}) ) ;
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) MCInst_XOR_r0_Inst_1_U2 ( .common_out(common_out), .a ({common_xor[0], MCOutput[17]}), .b ({common_xor[1], MCOutput[1]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1717, MCInst_XOR_r0_Inst_1_n1}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) MCInst_XOR_r1_Inst_1_U2 ( .common_out(common_out), .a ({common_xor[0], MCInst_XOR_r1_Inst_1_n1}), .b ({common_xor[1], MCOutput[1]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1782, MCOutput[33]}) ) ; /* xnor_COMAR_type_1 */
    not_masked #(.security_order(1), .pipeline(0)) MCInst_XOR_r1_Inst_2_U1 ( .a ({new_AGEMA_signal_1648, MCInput[34]}), .b ({new_AGEMA_signal_1720, MCInst_XOR_r1_Inst_2_n1}) ) ;
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) MCInst_XOR_r0_Inst_3_U2 ( .common_out(common_out), .a ({common_xor[0], MCOutput[19]}), .b ({common_xor[1], MCOutput[3]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1721, MCInst_XOR_r0_Inst_3_n1}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) MCInst_XOR_r1_Inst_3_U2 ( .common_out(common_out), .a ({common_xor[0], MCInst_XOR_r1_Inst_3_n1}), .b ({common_xor[1], MCOutput[3]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1786, MCOutput[35]}) ) ; /* xnor_COMAR_type_1 */
    not_masked #(.security_order(1), .pipeline(0)) MCInst_XOR_r1_Inst_4_U1 ( .a ({new_AGEMA_signal_1652, MCInput[36]}), .b ({new_AGEMA_signal_1724, MCInst_XOR_r1_Inst_4_n1}) ) ;
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) MCInst_XOR_r0_Inst_5_U2 ( .common_out(common_out), .a ({common_xor[0], MCOutput[21]}), .b ({common_xor[1], MCOutput[5]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1725, MCInst_XOR_r0_Inst_5_n1}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) MCInst_XOR_r1_Inst_5_U2 ( .common_out(common_out), .a ({common_xor[0], MCInst_XOR_r1_Inst_5_n1}), .b ({common_xor[1], MCOutput[5]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1790, MCOutput[37]}) ) ; /* xnor_COMAR_type_1 */
    not_masked #(.security_order(1), .pipeline(0)) MCInst_XOR_r1_Inst_6_U1 ( .a ({new_AGEMA_signal_1656, MCInput[38]}), .b ({new_AGEMA_signal_1728, MCInst_XOR_r1_Inst_6_n1}) ) ;
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) MCInst_XOR_r0_Inst_7_U2 ( .common_out(common_out), .a ({common_xor[0], MCOutput[23]}), .b ({common_xor[1], MCOutput[7]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1729, MCInst_XOR_r0_Inst_7_n1}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) MCInst_XOR_r1_Inst_7_U2 ( .common_out(common_out), .a ({common_xor[0], MCInst_XOR_r1_Inst_7_n1}), .b ({common_xor[1], MCOutput[7]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1794, MCOutput[39]}) ) ; /* xnor_COMAR_type_1 */
    not_masked #(.security_order(1), .pipeline(0)) MCInst_XOR_r1_Inst_8_U1 ( .a ({new_AGEMA_signal_1660, MCInput[40]}), .b ({new_AGEMA_signal_1732, MCInst_XOR_r1_Inst_8_n1}) ) ;
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) MCInst_XOR_r0_Inst_9_U2 ( .common_out(common_out), .a ({common_xor[0], MCOutput[25]}), .b ({common_xor[1], MCOutput[9]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1733, MCInst_XOR_r0_Inst_9_n1}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) MCInst_XOR_r1_Inst_9_U2 ( .common_out(common_out), .a ({common_xor[0], MCInst_XOR_r1_Inst_9_n1}), .b ({common_xor[1], MCOutput[9]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1798, MCOutput[41]}) ) ; /* xnor_COMAR_type_1 */
    not_masked #(.security_order(1), .pipeline(0)) MCInst_XOR_r1_Inst_10_U1 ( .a ({new_AGEMA_signal_1664, MCInput[42]}), .b ({new_AGEMA_signal_1736, MCInst_XOR_r1_Inst_10_n1}) ) ;
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) MCInst_XOR_r0_Inst_11_U2 ( .common_out(common_out), .a ({common_xor[0], MCOutput[27]}), .b ({common_xor[1], MCOutput[11]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1737, MCInst_XOR_r0_Inst_11_n1}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) MCInst_XOR_r1_Inst_11_U2 ( .common_out(common_out), .a ({common_xor[0], MCInst_XOR_r1_Inst_11_n1}), .b ({common_xor[1], MCOutput[11]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1802, MCOutput[43]}) ) ; /* xnor_COMAR_type_1 */
    not_masked #(.security_order(1), .pipeline(0)) MCInst_XOR_r1_Inst_12_U1 ( .a ({new_AGEMA_signal_1668, MCInput[44]}), .b ({new_AGEMA_signal_1740, MCInst_XOR_r1_Inst_12_n1}) ) ;
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) MCInst_XOR_r0_Inst_13_U2 ( .common_out(common_out), .a ({common_xor[0], MCOutput[29]}), .b ({common_xor[1], MCOutput[13]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1741, MCInst_XOR_r0_Inst_13_n1}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) MCInst_XOR_r1_Inst_13_U2 ( .common_out(common_out), .a ({common_xor[0], MCInst_XOR_r1_Inst_13_n1}), .b ({common_xor[1], MCOutput[13]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1806, MCOutput[45]}) ) ; /* xnor_COMAR_type_1 */
    not_masked #(.security_order(1), .pipeline(0)) MCInst_XOR_r1_Inst_14_U1 ( .a ({new_AGEMA_signal_1672, MCInput[46]}), .b ({new_AGEMA_signal_1744, MCInst_XOR_r1_Inst_14_n1}) ) ;
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) MCInst_XOR_r0_Inst_15_U2 ( .common_out(common_out), .a ({common_xor[0], MCOutput[31]}), .b ({common_xor[1], MCOutput[15]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1745, MCInst_XOR_r0_Inst_15_n1}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) MCInst_XOR_r1_Inst_15_U2 ( .common_out(common_out), .a ({common_xor[0], MCInst_XOR_r1_Inst_15_n1}), .b ({common_xor[1], MCOutput[15]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1810, MCOutput[47]}) ) ; /* xnor_COMAR_type_1 */
    not_masked #(.security_order(1), .pipeline(0)) AddKeyXOR2_XORInst_0_0_U1 ( .a ({new_AGEMA_signal_1580, MCOutput[0]}), .b ({new_AGEMA_signal_1747, AddKeyXOR2_XORInst_0_0_n1}) ) ;
    xnor_COMAR #(.security_order(1), .pipeline(0)) AddKeyXOR2_XORInst_0_1_U2 ( .common_out(common_out), .a ({new_AGEMA_signal_1748, AddKeyXOR2_XORInst_0_1_n1}), .b ({new_AGEMA_signal_1437, SelectedKey[1]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1812, AddRoundKeyOutput[1]}) ) ; /* xnor_COMAR_type_3 */
    not_masked #(.security_order(1), .pipeline(0)) AddKeyXOR2_XORInst_0_2_U1 ( .a ({new_AGEMA_signal_1584, MCOutput[2]}), .b ({new_AGEMA_signal_1749, AddKeyXOR2_XORInst_0_2_n1}) ) ;
    xnor_COMAR #(.security_order(1), .pipeline(0)) AddKeyXOR2_XORInst_0_3_U2 ( .common_out(common_out), .a ({new_AGEMA_signal_1750, AddKeyXOR2_XORInst_0_3_n1}), .b ({new_AGEMA_signal_1440, SelectedKey[3]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1814, AddRoundKeyOutput[3]}) ) ; /* xnor_COMAR_type_3 */
    not_masked #(.security_order(1), .pipeline(0)) AddKeyXOR2_XORInst_1_0_U1 ( .a ({new_AGEMA_signal_1588, MCOutput[4]}), .b ({new_AGEMA_signal_1751, AddKeyXOR2_XORInst_1_0_n1}) ) ;
    xnor_COMAR #(.security_order(1), .pipeline(0)) AddKeyXOR2_XORInst_1_1_U2 ( .common_out(common_out), .a ({new_AGEMA_signal_1752, AddKeyXOR2_XORInst_1_1_n1}), .b ({new_AGEMA_signal_1446, SelectedKey[5]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1816, AddRoundKeyOutput[5]}) ) ; /* xnor_COMAR_type_3 */
    not_masked #(.security_order(1), .pipeline(0)) AddKeyXOR2_XORInst_1_2_U1 ( .a ({new_AGEMA_signal_1592, MCOutput[6]}), .b ({new_AGEMA_signal_1753, AddKeyXOR2_XORInst_1_2_n1}) ) ;
    xnor_COMAR #(.security_order(1), .pipeline(0)) AddKeyXOR2_XORInst_1_3_U2 ( .common_out(common_out), .a ({new_AGEMA_signal_1754, AddKeyXOR2_XORInst_1_3_n1}), .b ({new_AGEMA_signal_1452, SelectedKey[7]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1818, AddRoundKeyOutput[7]}) ) ; /* xnor_COMAR_type_3 */
    not_masked #(.security_order(1), .pipeline(0)) AddKeyXOR2_XORInst_2_0_U1 ( .a ({new_AGEMA_signal_1596, MCOutput[8]}), .b ({new_AGEMA_signal_1755, AddKeyXOR2_XORInst_2_0_n1}) ) ;
    xnor_COMAR #(.security_order(1), .pipeline(0)) AddKeyXOR2_XORInst_2_1_U2 ( .common_out(common_out), .a ({new_AGEMA_signal_1756, AddKeyXOR2_XORInst_2_1_n1}), .b ({new_AGEMA_signal_1458, SelectedKey[9]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1820, AddRoundKeyOutput[9]}) ) ; /* xnor_COMAR_type_3 */
    not_masked #(.security_order(1), .pipeline(0)) AddKeyXOR2_XORInst_2_2_U1 ( .a ({new_AGEMA_signal_1600, MCOutput[10]}), .b ({new_AGEMA_signal_1757, AddKeyXOR2_XORInst_2_2_n1}) ) ;
    xnor_COMAR #(.security_order(1), .pipeline(0)) AddKeyXOR2_XORInst_2_3_U2 ( .common_out(common_out), .a ({new_AGEMA_signal_1758, AddKeyXOR2_XORInst_2_3_n1}), .b ({new_AGEMA_signal_1464, SelectedKey[11]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1822, AddRoundKeyOutput[11]}) ) ; /* xnor_COMAR_type_3 */
    not_masked #(.security_order(1), .pipeline(0)) AddKeyXOR2_XORInst_3_0_U1 ( .a ({new_AGEMA_signal_1604, MCOutput[12]}), .b ({new_AGEMA_signal_1759, AddKeyXOR2_XORInst_3_0_n1}) ) ;
    xnor_COMAR #(.security_order(1), .pipeline(0)) AddKeyXOR2_XORInst_3_1_U2 ( .common_out(common_out), .a ({new_AGEMA_signal_1760, AddKeyXOR2_XORInst_3_1_n1}), .b ({new_AGEMA_signal_1470, SelectedKey[13]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1824, AddRoundKeyOutput[13]}) ) ; /* xnor_COMAR_type_3 */
    not_masked #(.security_order(1), .pipeline(0)) AddKeyXOR2_XORInst_3_2_U1 ( .a ({new_AGEMA_signal_1608, MCOutput[14]}), .b ({new_AGEMA_signal_1761, AddKeyXOR2_XORInst_3_2_n1}) ) ;
    xnor_COMAR #(.security_order(1), .pipeline(0)) AddKeyXOR2_XORInst_3_3_U2 ( .common_out(common_out), .a ({new_AGEMA_signal_1762, AddKeyXOR2_XORInst_3_3_n1}), .b ({new_AGEMA_signal_1476, SelectedKey[15]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1826, AddRoundKeyOutput[15]}) ) ; /* xnor_COMAR_type_3 */
    not_masked #(.security_order(1), .pipeline(0)) AddKeyXOR2_XORInst_4_0_U1 ( .a ({new_AGEMA_signal_1612, MCOutput[16]}), .b ({new_AGEMA_signal_1763, AddKeyXOR2_XORInst_4_0_n1}) ) ;
    xnor_COMAR #(.security_order(1), .pipeline(0)) AddKeyXOR2_XORInst_4_1_U2 ( .common_out(common_out), .a ({new_AGEMA_signal_1764, AddKeyXOR2_XORInst_4_1_n1}), .b ({new_AGEMA_signal_1482, SelectedKey[17]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1828, AddRoundKeyOutput[17]}) ) ; /* xnor_COMAR_type_3 */
    not_masked #(.security_order(1), .pipeline(0)) AddKeyXOR2_XORInst_4_2_U1 ( .a ({new_AGEMA_signal_1616, MCOutput[18]}), .b ({new_AGEMA_signal_1765, AddKeyXOR2_XORInst_4_2_n1}) ) ;
    xnor_COMAR #(.security_order(1), .pipeline(0)) AddKeyXOR2_XORInst_4_3_U2 ( .common_out(common_out), .a ({new_AGEMA_signal_1766, AddKeyXOR2_XORInst_4_3_n1}), .b ({new_AGEMA_signal_1488, SelectedKey[19]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1830, AddRoundKeyOutput[19]}) ) ; /* xnor_COMAR_type_3 */
    not_masked #(.security_order(1), .pipeline(0)) AddKeyXOR2_XORInst_5_0_U1 ( .a ({new_AGEMA_signal_1620, MCOutput[20]}), .b ({new_AGEMA_signal_1767, AddKeyXOR2_XORInst_5_0_n1}) ) ;
    xnor_COMAR #(.security_order(1), .pipeline(0)) AddKeyXOR2_XORInst_5_1_U2 ( .common_out(common_out), .a ({new_AGEMA_signal_1768, AddKeyXOR2_XORInst_5_1_n1}), .b ({new_AGEMA_signal_1494, SelectedKey[21]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1832, AddRoundKeyOutput[21]}) ) ; /* xnor_COMAR_type_3 */
    not_masked #(.security_order(1), .pipeline(0)) AddKeyXOR2_XORInst_5_2_U1 ( .a ({new_AGEMA_signal_1624, MCOutput[22]}), .b ({new_AGEMA_signal_1769, AddKeyXOR2_XORInst_5_2_n1}) ) ;
    xnor_COMAR #(.security_order(1), .pipeline(0)) AddKeyXOR2_XORInst_5_3_U2 ( .common_out(common_out), .a ({new_AGEMA_signal_1770, AddKeyXOR2_XORInst_5_3_n1}), .b ({new_AGEMA_signal_1254, SelectedKey[23]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1834, AddRoundKeyOutput[23]}) ) ; /* xnor_COMAR_type_3 */
    not_masked #(.security_order(1), .pipeline(0)) AddKeyXOR2_XORInst_6_0_U1 ( .a ({new_AGEMA_signal_1628, MCOutput[24]}), .b ({new_AGEMA_signal_1771, AddKeyXOR2_XORInst_6_0_n1}) ) ;
    xnor_COMAR #(.security_order(1), .pipeline(0)) AddKeyXOR2_XORInst_6_1_U2 ( .common_out(common_out), .a ({new_AGEMA_signal_1772, AddKeyXOR2_XORInst_6_1_n1}), .b ({new_AGEMA_signal_1260, SelectedKey[25]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1836, AddRoundKeyOutput[25]}) ) ; /* xnor_COMAR_type_3 */
    not_masked #(.security_order(1), .pipeline(0)) AddKeyXOR2_XORInst_6_2_U1 ( .a ({new_AGEMA_signal_1632, MCOutput[26]}), .b ({new_AGEMA_signal_1773, AddKeyXOR2_XORInst_6_2_n1}) ) ;
    xnor_COMAR #(.security_order(1), .pipeline(0)) AddKeyXOR2_XORInst_6_3_U2 ( .common_out(common_out), .a ({new_AGEMA_signal_1774, AddKeyXOR2_XORInst_6_3_n1}), .b ({new_AGEMA_signal_1266, SelectedKey[27]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1838, AddRoundKeyOutput[27]}) ) ; /* xnor_COMAR_type_3 */
    not_masked #(.security_order(1), .pipeline(0)) AddKeyXOR2_XORInst_7_0_U1 ( .a ({new_AGEMA_signal_1636, MCOutput[28]}), .b ({new_AGEMA_signal_1775, AddKeyXOR2_XORInst_7_0_n1}) ) ;
    xnor_COMAR #(.security_order(1), .pipeline(0)) AddKeyXOR2_XORInst_7_1_U2 ( .common_out(common_out), .a ({new_AGEMA_signal_1776, AddKeyXOR2_XORInst_7_1_n1}), .b ({new_AGEMA_signal_1500, SelectedKey[29]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1840, AddRoundKeyOutput[29]}) ) ; /* xnor_COMAR_type_3 */
    not_masked #(.security_order(1), .pipeline(0)) AddKeyXOR2_XORInst_7_2_U1 ( .a ({new_AGEMA_signal_1640, MCOutput[30]}), .b ({new_AGEMA_signal_1777, AddKeyXOR2_XORInst_7_2_n1}) ) ;
    xnor_COMAR #(.security_order(1), .pipeline(0)) AddKeyXOR2_XORInst_7_3_U2 ( .common_out(common_out), .a ({new_AGEMA_signal_1778, AddKeyXOR2_XORInst_7_3_n1}), .b ({new_AGEMA_signal_1506, SelectedKey[31]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1842, AddRoundKeyOutput[31]}) ) ; /* xnor_COMAR_type_3 */
    not_masked #(.security_order(1), .pipeline(0)) AddKeyXOR2_XORInst_8_1_U1 ( .a ({new_AGEMA_signal_1782, MCOutput[33]}), .b ({new_AGEMA_signal_1868, AddKeyXOR2_XORInst_8_1_n1}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) AddKeyXOR2_XORInst_8_3_U1 ( .a ({new_AGEMA_signal_1786, MCOutput[35]}), .b ({new_AGEMA_signal_1870, AddKeyXOR2_XORInst_8_3_n1}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) AddKeyXOR2_XORInst_9_1_U1 ( .a ({new_AGEMA_signal_1790, MCOutput[37]}), .b ({new_AGEMA_signal_1872, AddKeyXOR2_XORInst_9_1_n1}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) AddKeyXOR2_XORInst_9_3_U1 ( .a ({new_AGEMA_signal_1794, MCOutput[39]}), .b ({new_AGEMA_signal_1874, AddKeyXOR2_XORInst_9_3_n1}) ) ;
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_0_U17 ( .common_out(common_out), .a ({common_and[0], SubCellInst_SboxInst_0_n15}), .b ({common_and[1], SubCellInst_SboxInst_0_n12}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1372, Feedback[2]}) ) ; /* nand_COMAR_type_1 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_0_U8 ( .common_out(common_out), .a ({common_and[0], SubCellInst_SboxInst_0_n13}), .b ({common_and[1], SubCellInst_SboxInst_0_n3}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1374, Feedback[0]}) ) ; /* nor_COMAR_type_1 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_1_U17 ( .common_out(common_out), .a ({common_and[0], SubCellInst_SboxInst_1_n15}), .b ({common_and[1], SubCellInst_SboxInst_1_n12}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1376, Feedback[6]}) ) ; /* nand_COMAR_type_1 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_1_U8 ( .common_out(common_out), .a ({common_and[0], SubCellInst_SboxInst_1_n13}), .b ({common_and[1], SubCellInst_SboxInst_1_n3}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1378, Feedback[4]}) ) ; /* nor_COMAR_type_1 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_2_U17 ( .common_out(common_out), .a ({common_and[0], SubCellInst_SboxInst_2_n15}), .b ({common_and[1], SubCellInst_SboxInst_2_n12}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1380, Feedback[10]}) ) ; /* nand_COMAR_type_1 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_2_U8 ( .common_out(common_out), .a ({common_and[0], SubCellInst_SboxInst_2_n13}), .b ({common_and[1], SubCellInst_SboxInst_2_n3}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1382, Feedback[8]}) ) ; /* nor_COMAR_type_1 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_3_U17 ( .common_out(common_out), .a ({common_and[0], SubCellInst_SboxInst_3_n15}), .b ({common_and[1], SubCellInst_SboxInst_3_n12}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1384, Feedback[14]}) ) ; /* nand_COMAR_type_1 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_3_U8 ( .common_out(common_out), .a ({common_and[0], SubCellInst_SboxInst_3_n13}), .b ({common_and[1], SubCellInst_SboxInst_3_n3}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1386, Feedback[12]}) ) ; /* nor_COMAR_type_1 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_4_U17 ( .common_out(common_out), .a ({common_and[0], SubCellInst_SboxInst_4_n15}), .b ({common_and[1], SubCellInst_SboxInst_4_n12}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1388, Feedback[18]}) ) ; /* nand_COMAR_type_1 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_4_U8 ( .common_out(common_out), .a ({common_and[0], SubCellInst_SboxInst_4_n13}), .b ({common_and[1], SubCellInst_SboxInst_4_n3}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1390, Feedback[16]}) ) ; /* nor_COMAR_type_1 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_5_U17 ( .common_out(common_out), .a ({common_and[0], SubCellInst_SboxInst_5_n15}), .b ({common_and[1], SubCellInst_SboxInst_5_n12}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1392, Feedback[22]}) ) ; /* nand_COMAR_type_1 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_5_U8 ( .common_out(common_out), .a ({common_and[0], SubCellInst_SboxInst_5_n13}), .b ({common_and[1], SubCellInst_SboxInst_5_n3}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1394, Feedback[20]}) ) ; /* nor_COMAR_type_1 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_6_U17 ( .common_out(common_out), .a ({common_and[0], SubCellInst_SboxInst_6_n15}), .b ({common_and[1], SubCellInst_SboxInst_6_n12}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1396, Feedback[26]}) ) ; /* nand_COMAR_type_1 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_6_U8 ( .common_out(common_out), .a ({common_and[0], SubCellInst_SboxInst_6_n13}), .b ({common_and[1], SubCellInst_SboxInst_6_n3}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1398, Feedback[24]}) ) ; /* nor_COMAR_type_1 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_7_U17 ( .common_out(common_out), .a ({common_and[0], SubCellInst_SboxInst_7_n15}), .b ({common_and[1], SubCellInst_SboxInst_7_n12}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1400, Feedback[30]}) ) ; /* nand_COMAR_type_1 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_7_U8 ( .common_out(common_out), .a ({common_and[0], SubCellInst_SboxInst_7_n13}), .b ({common_and[1], SubCellInst_SboxInst_7_n3}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1402, Feedback[28]}) ) ; /* nor_COMAR_type_1 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_8_U17 ( .common_out(common_out), .a ({common_and[0], SubCellInst_SboxInst_8_n15}), .b ({common_and[1], SubCellInst_SboxInst_8_n12}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1404, Feedback[34]}) ) ; /* nand_COMAR_type_1 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_8_U8 ( .common_out(common_out), .a ({common_and[0], SubCellInst_SboxInst_8_n13}), .b ({common_and[1], SubCellInst_SboxInst_8_n3}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1406, Feedback[32]}) ) ; /* nor_COMAR_type_1 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_9_U17 ( .common_out(common_out), .a ({common_and[0], SubCellInst_SboxInst_9_n15}), .b ({common_and[1], SubCellInst_SboxInst_9_n12}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1408, Feedback[38]}) ) ; /* nand_COMAR_type_1 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_9_U8 ( .common_out(common_out), .a ({common_and[0], SubCellInst_SboxInst_9_n13}), .b ({common_and[1], SubCellInst_SboxInst_9_n3}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1410, Feedback[36]}) ) ; /* nor_COMAR_type_1 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_10_U17 ( .common_out(common_out), .a ({common_and[0], SubCellInst_SboxInst_10_n15}), .b ({common_and[1], SubCellInst_SboxInst_10_n12}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1412, Feedback[42]}) ) ; /* nand_COMAR_type_1 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_10_U8 ( .common_out(common_out), .a ({common_and[0], SubCellInst_SboxInst_10_n13}), .b ({common_and[1], SubCellInst_SboxInst_10_n3}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1414, Feedback[40]}) ) ; /* nor_COMAR_type_1 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_11_U17 ( .common_out(common_out), .a ({common_and[0], SubCellInst_SboxInst_11_n15}), .b ({common_and[1], SubCellInst_SboxInst_11_n12}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1416, Feedback[46]}) ) ; /* nand_COMAR_type_1 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_11_U8 ( .common_out(common_out), .a ({common_and[0], SubCellInst_SboxInst_11_n13}), .b ({common_and[1], SubCellInst_SboxInst_11_n3}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1418, Feedback[44]}) ) ; /* nor_COMAR_type_1 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_12_U17 ( .common_out(common_out), .a ({common_and[0], SubCellInst_SboxInst_12_n15}), .b ({common_and[1], SubCellInst_SboxInst_12_n12}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1420, Feedback[50]}) ) ; /* nand_COMAR_type_1 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_12_U8 ( .common_out(common_out), .a ({common_and[0], SubCellInst_SboxInst_12_n13}), .b ({common_and[1], SubCellInst_SboxInst_12_n3}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1422, Feedback[48]}) ) ; /* nor_COMAR_type_1 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_13_U17 ( .common_out(common_out), .a ({common_and[0], SubCellInst_SboxInst_13_n15}), .b ({common_and[1], SubCellInst_SboxInst_13_n12}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1424, Feedback[54]}) ) ; /* nand_COMAR_type_1 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_13_U8 ( .common_out(common_out), .a ({common_and[0], SubCellInst_SboxInst_13_n13}), .b ({common_and[1], SubCellInst_SboxInst_13_n3}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1426, Feedback[52]}) ) ; /* nor_COMAR_type_1 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_14_U17 ( .common_out(common_out), .a ({common_and[0], SubCellInst_SboxInst_14_n15}), .b ({common_and[1], SubCellInst_SboxInst_14_n12}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1428, Feedback[58]}) ) ; /* nand_COMAR_type_1 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_14_U8 ( .common_out(common_out), .a ({common_and[0], SubCellInst_SboxInst_14_n13}), .b ({common_and[1], SubCellInst_SboxInst_14_n3}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1430, Feedback[56]}) ) ; /* nor_COMAR_type_1 */
    nand_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_15_U17 ( .common_out(common_out), .a ({common_and[0], SubCellInst_SboxInst_15_n15}), .b ({common_and[1], SubCellInst_SboxInst_15_n12}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1432, Feedback[62]}) ) ; /* nand_COMAR_type_1 */
    nor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) SubCellInst_SboxInst_15_U8 ( .common_out(common_out), .a ({common_and[0], SubCellInst_SboxInst_15_n13}), .b ({common_and[1], SubCellInst_SboxInst_15_n3}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1434, Feedback[60]}) ) ; /* nor_COMAR_type_1 */

    /* cells in depth 9 */

    /* cells in depth 10 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) MCInst_XOR_r0_Inst_0_U2 ( .common_out(common_out), .a ({common_xor[0], MCOutput[16]}), .b ({common_xor[1], MCOutput[0]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1715, MCInst_XOR_r0_Inst_0_n1}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) MCInst_XOR_r1_Inst_0_U2 ( .common_out(common_out), .a ({common_xor[0], MCInst_XOR_r1_Inst_0_n1}), .b ({common_xor[1], MCOutput[0]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1780, MCOutput[32]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) MCInst_XOR_r0_Inst_1_U3 ( .common_out(common_out), .a ({common_xor[0], MCInput[49]}), .b ({common_xor[1], MCInst_XOR_r0_Inst_1_n1}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1781, MCOutput[49]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) MCInst_XOR_r0_Inst_2_U2 ( .common_out(common_out), .a ({common_xor[0], MCOutput[18]}), .b ({common_xor[1], MCOutput[2]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1719, MCInst_XOR_r0_Inst_2_n1}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) MCInst_XOR_r1_Inst_2_U2 ( .common_out(common_out), .a ({common_xor[0], MCInst_XOR_r1_Inst_2_n1}), .b ({common_xor[1], MCOutput[2]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1784, MCOutput[34]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) MCInst_XOR_r0_Inst_3_U3 ( .common_out(common_out), .a ({common_xor[0], MCInput[51]}), .b ({common_xor[1], MCInst_XOR_r0_Inst_3_n1}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1785, MCOutput[51]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) MCInst_XOR_r0_Inst_4_U2 ( .common_out(common_out), .a ({common_xor[0], MCOutput[20]}), .b ({common_xor[1], MCOutput[4]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1723, MCInst_XOR_r0_Inst_4_n1}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) MCInst_XOR_r1_Inst_4_U2 ( .common_out(common_out), .a ({common_xor[0], MCInst_XOR_r1_Inst_4_n1}), .b ({common_xor[1], MCOutput[4]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1788, MCOutput[36]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) MCInst_XOR_r0_Inst_5_U3 ( .common_out(common_out), .a ({common_xor[0], MCInput[53]}), .b ({common_xor[1], MCInst_XOR_r0_Inst_5_n1}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1789, MCOutput[53]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) MCInst_XOR_r0_Inst_6_U2 ( .common_out(common_out), .a ({common_xor[0], MCOutput[22]}), .b ({common_xor[1], MCOutput[6]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1727, MCInst_XOR_r0_Inst_6_n1}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) MCInst_XOR_r1_Inst_6_U2 ( .common_out(common_out), .a ({common_xor[0], MCInst_XOR_r1_Inst_6_n1}), .b ({common_xor[1], MCOutput[6]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1792, MCOutput[38]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) MCInst_XOR_r0_Inst_7_U3 ( .common_out(common_out), .a ({common_xor[0], MCInput[55]}), .b ({common_xor[1], MCInst_XOR_r0_Inst_7_n1}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1793, MCOutput[55]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) MCInst_XOR_r0_Inst_8_U2 ( .common_out(common_out), .a ({common_xor[0], MCOutput[24]}), .b ({common_xor[1], MCOutput[8]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1731, MCInst_XOR_r0_Inst_8_n1}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) MCInst_XOR_r1_Inst_8_U2 ( .common_out(common_out), .a ({common_xor[0], MCInst_XOR_r1_Inst_8_n1}), .b ({common_xor[1], MCOutput[8]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1796, MCOutput[40]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) MCInst_XOR_r0_Inst_9_U3 ( .common_out(common_out), .a ({common_xor[0], MCInput[57]}), .b ({common_xor[1], MCInst_XOR_r0_Inst_9_n1}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1797, MCOutput[57]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) MCInst_XOR_r0_Inst_10_U2 ( .common_out(common_out), .a ({common_xor[0], MCOutput[26]}), .b ({common_xor[1], MCOutput[10]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1735, MCInst_XOR_r0_Inst_10_n1}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) MCInst_XOR_r1_Inst_10_U2 ( .common_out(common_out), .a ({common_xor[0], MCInst_XOR_r1_Inst_10_n1}), .b ({common_xor[1], MCOutput[10]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1800, MCOutput[42]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) MCInst_XOR_r0_Inst_11_U3 ( .common_out(common_out), .a ({common_xor[0], MCInput[59]}), .b ({common_xor[1], MCInst_XOR_r0_Inst_11_n1}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1801, MCOutput[59]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) MCInst_XOR_r0_Inst_12_U2 ( .common_out(common_out), .a ({common_xor[0], MCOutput[28]}), .b ({common_xor[1], MCOutput[12]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1739, MCInst_XOR_r0_Inst_12_n1}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) MCInst_XOR_r1_Inst_12_U2 ( .common_out(common_out), .a ({common_xor[0], MCInst_XOR_r1_Inst_12_n1}), .b ({common_xor[1], MCOutput[12]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1804, MCOutput[44]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) MCInst_XOR_r0_Inst_13_U3 ( .common_out(common_out), .a ({common_xor[0], MCInput[61]}), .b ({common_xor[1], MCInst_XOR_r0_Inst_13_n1}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1805, MCOutput[61]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) MCInst_XOR_r0_Inst_14_U2 ( .common_out(common_out), .a ({common_xor[0], MCOutput[30]}), .b ({common_xor[1], MCOutput[14]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1743, MCInst_XOR_r0_Inst_14_n1}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) MCInst_XOR_r1_Inst_14_U2 ( .common_out(common_out), .a ({common_xor[0], MCInst_XOR_r1_Inst_14_n1}), .b ({common_xor[1], MCOutput[14]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1808, MCOutput[46]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) MCInst_XOR_r0_Inst_15_U3 ( .common_out(common_out), .a ({common_xor[0], MCInput[63]}), .b ({common_xor[1], MCInst_XOR_r0_Inst_15_n1}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1809, MCOutput[63]}) ) ; /* xnor_COMAR_type_1 */
    not_masked #(.security_order(1), .pipeline(0)) AddKeyXOR1_XORInst_0_1_U1 ( .a ({new_AGEMA_signal_1781, MCOutput[49]}), .b ({new_AGEMA_signal_1844, AddKeyXOR1_XORInst_0_1_n1}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) AddKeyXOR1_XORInst_0_3_U1 ( .a ({new_AGEMA_signal_1785, MCOutput[51]}), .b ({new_AGEMA_signal_1846, AddKeyXOR1_XORInst_0_3_n1}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) AddKeyXOR1_XORInst_1_1_U1 ( .a ({new_AGEMA_signal_1789, MCOutput[53]}), .b ({new_AGEMA_signal_1848, AddKeyXOR1_XORInst_1_1_n1}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) AddKeyXOR1_XORInst_1_3_U1 ( .a ({new_AGEMA_signal_1793, MCOutput[55]}), .b ({new_AGEMA_signal_1850, AddKeyXOR1_XORInst_1_3_n1}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) AddKeyXOR1_XORInst_2_1_U1 ( .a ({new_AGEMA_signal_1797, MCOutput[57]}), .b ({new_AGEMA_signal_1852, AddKeyXOR1_XORInst_2_1_n1}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) AddKeyXOR1_XORInst_2_3_U1 ( .a ({new_AGEMA_signal_1801, MCOutput[59]}), .b ({new_AGEMA_signal_1854, AddKeyXOR1_XORInst_2_3_n1}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) AddKeyXOR1_XORInst_3_1_U1 ( .a ({new_AGEMA_signal_1805, MCOutput[61]}), .b ({new_AGEMA_signal_1856, AddKeyXOR1_XORInst_3_1_n1}) ) ;
    not_masked #(.security_order(1), .pipeline(0)) AddKeyXOR1_XORInst_3_3_U1 ( .a ({new_AGEMA_signal_1809, MCOutput[63]}), .b ({new_AGEMA_signal_1858, AddKeyXOR1_XORInst_3_3_n1}) ) ;
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) AddKeyConstXOR_XORInst_0_1_U3 ( .common_out(common_out), .a ({common_xor[0], MCOutput[41]}), .b ({common_xor[1], AddKeyConstXOR_XORInst_0_1_n1}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1860, AddRoundKeyOutput[41]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0)) AddKeyConstXOR_XORInst_0_3_U3 ( .common_out(common_out), .a ({new_AGEMA_signal_1802, MCOutput[43]}), .b ({new_AGEMA_signal_1710, AddKeyConstXOR_XORInst_0_3_n1}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1862, AddRoundKeyOutput[43]}) ) ; /* xnor_COMAR_type_3 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) AddKeyConstXOR_XORInst_1_1_U3 ( .common_out(common_out), .a ({common_xor[0], MCOutput[45]}), .b ({common_xor[1], AddKeyConstXOR_XORInst_1_1_n1}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1864, AddRoundKeyOutput[45]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) AddKeyConstXOR_XORInst_1_3_U3 ( .common_out(common_out), .a ({common_xor[0], MCOutput[47]}), .b ({common_xor[1], AddKeyConstXOR_XORInst_1_3_n1}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1866, AddRoundKeyOutput[47]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0)) AddKeyXOR2_XORInst_0_0_U2 ( .common_out(common_out), .a ({new_AGEMA_signal_1747, AddKeyXOR2_XORInst_0_0_n1}), .b ({new_AGEMA_signal_1245, SelectedKey[0]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1811, AddRoundKeyOutput[0]}) ) ; /* xnor_COMAR_type_3 */
    xnor_COMAR #(.security_order(1), .pipeline(0)) AddKeyXOR2_XORInst_0_2_U2 ( .common_out(common_out), .a ({new_AGEMA_signal_1749, AddKeyXOR2_XORInst_0_2_n1}), .b ({new_AGEMA_signal_1248, SelectedKey[2]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1813, AddRoundKeyOutput[2]}) ) ; /* xnor_COMAR_type_3 */
    xnor_COMAR #(.security_order(1), .pipeline(0)) AddKeyXOR2_XORInst_1_0_U2 ( .common_out(common_out), .a ({new_AGEMA_signal_1751, AddKeyXOR2_XORInst_1_0_n1}), .b ({new_AGEMA_signal_1443, SelectedKey[4]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1815, AddRoundKeyOutput[4]}) ) ; /* xnor_COMAR_type_3 */
    xnor_COMAR #(.security_order(1), .pipeline(0)) AddKeyXOR2_XORInst_1_2_U2 ( .common_out(common_out), .a ({new_AGEMA_signal_1753, AddKeyXOR2_XORInst_1_2_n1}), .b ({new_AGEMA_signal_1449, SelectedKey[6]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1817, AddRoundKeyOutput[6]}) ) ; /* xnor_COMAR_type_3 */
    xnor_COMAR #(.security_order(1), .pipeline(0)) AddKeyXOR2_XORInst_2_0_U2 ( .common_out(common_out), .a ({new_AGEMA_signal_1755, AddKeyXOR2_XORInst_2_0_n1}), .b ({new_AGEMA_signal_1455, SelectedKey[8]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1819, AddRoundKeyOutput[8]}) ) ; /* xnor_COMAR_type_3 */
    xnor_COMAR #(.security_order(1), .pipeline(0)) AddKeyXOR2_XORInst_2_2_U2 ( .common_out(common_out), .a ({new_AGEMA_signal_1757, AddKeyXOR2_XORInst_2_2_n1}), .b ({new_AGEMA_signal_1461, SelectedKey[10]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1821, AddRoundKeyOutput[10]}) ) ; /* xnor_COMAR_type_3 */
    xnor_COMAR #(.security_order(1), .pipeline(0)) AddKeyXOR2_XORInst_3_0_U2 ( .common_out(common_out), .a ({new_AGEMA_signal_1759, AddKeyXOR2_XORInst_3_0_n1}), .b ({new_AGEMA_signal_1467, SelectedKey[12]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1823, AddRoundKeyOutput[12]}) ) ; /* xnor_COMAR_type_3 */
    xnor_COMAR #(.security_order(1), .pipeline(0)) AddKeyXOR2_XORInst_3_2_U2 ( .common_out(common_out), .a ({new_AGEMA_signal_1761, AddKeyXOR2_XORInst_3_2_n1}), .b ({new_AGEMA_signal_1473, SelectedKey[14]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1825, AddRoundKeyOutput[14]}) ) ; /* xnor_COMAR_type_3 */
    xnor_COMAR #(.security_order(1), .pipeline(0)) AddKeyXOR2_XORInst_4_0_U2 ( .common_out(common_out), .a ({new_AGEMA_signal_1763, AddKeyXOR2_XORInst_4_0_n1}), .b ({new_AGEMA_signal_1479, SelectedKey[16]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1827, AddRoundKeyOutput[16]}) ) ; /* xnor_COMAR_type_3 */
    xnor_COMAR #(.security_order(1), .pipeline(0)) AddKeyXOR2_XORInst_4_2_U2 ( .common_out(common_out), .a ({new_AGEMA_signal_1765, AddKeyXOR2_XORInst_4_2_n1}), .b ({new_AGEMA_signal_1485, SelectedKey[18]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1829, AddRoundKeyOutput[18]}) ) ; /* xnor_COMAR_type_3 */
    xnor_COMAR #(.security_order(1), .pipeline(0)) AddKeyXOR2_XORInst_5_0_U2 ( .common_out(common_out), .a ({new_AGEMA_signal_1767, AddKeyXOR2_XORInst_5_0_n1}), .b ({new_AGEMA_signal_1491, SelectedKey[20]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1831, AddRoundKeyOutput[20]}) ) ; /* xnor_COMAR_type_3 */
    xnor_COMAR #(.security_order(1), .pipeline(0)) AddKeyXOR2_XORInst_5_2_U2 ( .common_out(common_out), .a ({new_AGEMA_signal_1769, AddKeyXOR2_XORInst_5_2_n1}), .b ({new_AGEMA_signal_1251, SelectedKey[22]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1833, AddRoundKeyOutput[22]}) ) ; /* xnor_COMAR_type_3 */
    xnor_COMAR #(.security_order(1), .pipeline(0)) AddKeyXOR2_XORInst_6_0_U2 ( .common_out(common_out), .a ({new_AGEMA_signal_1771, AddKeyXOR2_XORInst_6_0_n1}), .b ({new_AGEMA_signal_1257, SelectedKey[24]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1835, AddRoundKeyOutput[24]}) ) ; /* xnor_COMAR_type_3 */
    xnor_COMAR #(.security_order(1), .pipeline(0)) AddKeyXOR2_XORInst_6_2_U2 ( .common_out(common_out), .a ({new_AGEMA_signal_1773, AddKeyXOR2_XORInst_6_2_n1}), .b ({new_AGEMA_signal_1263, SelectedKey[26]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1837, AddRoundKeyOutput[26]}) ) ; /* xnor_COMAR_type_3 */
    xnor_COMAR #(.security_order(1), .pipeline(0)) AddKeyXOR2_XORInst_7_0_U2 ( .common_out(common_out), .a ({new_AGEMA_signal_1775, AddKeyXOR2_XORInst_7_0_n1}), .b ({new_AGEMA_signal_1497, SelectedKey[28]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1839, AddRoundKeyOutput[28]}) ) ; /* xnor_COMAR_type_3 */
    xnor_COMAR #(.security_order(1), .pipeline(0)) AddKeyXOR2_XORInst_7_2_U2 ( .common_out(common_out), .a ({new_AGEMA_signal_1777, AddKeyXOR2_XORInst_7_2_n1}), .b ({new_AGEMA_signal_1503, SelectedKey[30]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1841, AddRoundKeyOutput[30]}) ) ; /* xnor_COMAR_type_3 */
    not_masked #(.security_order(1), .pipeline(0)) AddKeyXOR2_XORInst_8_0_U1 ( .a ({new_AGEMA_signal_1780, MCOutput[32]}), .b ({new_AGEMA_signal_1867, AddKeyXOR2_XORInst_8_0_n1}) ) ;
    xnor_COMAR #(.security_order(1), .pipeline(0)) AddKeyXOR2_XORInst_8_1_U2 ( .common_out(common_out), .a ({new_AGEMA_signal_1868, AddKeyXOR2_XORInst_8_1_n1}), .b ({new_AGEMA_signal_1269, SelectedKey[33]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1892, AddRoundKeyOutput[33]}) ) ; /* xnor_COMAR_type_3 */
    not_masked #(.security_order(1), .pipeline(0)) AddKeyXOR2_XORInst_8_2_U1 ( .a ({new_AGEMA_signal_1784, MCOutput[34]}), .b ({new_AGEMA_signal_1869, AddKeyXOR2_XORInst_8_2_n1}) ) ;
    xnor_COMAR #(.security_order(1), .pipeline(0)) AddKeyXOR2_XORInst_8_3_U2 ( .common_out(common_out), .a ({new_AGEMA_signal_1870, AddKeyXOR2_XORInst_8_3_n1}), .b ({new_AGEMA_signal_1515, SelectedKey[35]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1894, AddRoundKeyOutput[35]}) ) ; /* xnor_COMAR_type_3 */
    not_masked #(.security_order(1), .pipeline(0)) AddKeyXOR2_XORInst_9_0_U1 ( .a ({new_AGEMA_signal_1788, MCOutput[36]}), .b ({new_AGEMA_signal_1871, AddKeyXOR2_XORInst_9_0_n1}) ) ;
    xnor_COMAR #(.security_order(1), .pipeline(0)) AddKeyXOR2_XORInst_9_1_U2 ( .common_out(common_out), .a ({new_AGEMA_signal_1872, AddKeyXOR2_XORInst_9_1_n1}), .b ({new_AGEMA_signal_1518, SelectedKey[37]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1896, AddRoundKeyOutput[37]}) ) ; /* xnor_COMAR_type_3 */
    not_masked #(.security_order(1), .pipeline(0)) AddKeyXOR2_XORInst_9_2_U1 ( .a ({new_AGEMA_signal_1792, MCOutput[38]}), .b ({new_AGEMA_signal_1873, AddKeyXOR2_XORInst_9_2_n1}) ) ;
    xnor_COMAR #(.security_order(1), .pipeline(0)) AddKeyXOR2_XORInst_9_3_U2 ( .common_out(common_out), .a ({new_AGEMA_signal_1874, AddKeyXOR2_XORInst_9_3_n1}), .b ({new_AGEMA_signal_1275, SelectedKey[39]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1898, AddRoundKeyOutput[39]}) ) ; /* xnor_COMAR_type_3 */

    /* cells in depth 11 */

    /* cells in depth 12 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) MCInst_XOR_r0_Inst_0_U3 ( .common_out(common_out), .a ({common_xor[0], MCInput[48]}), .b ({common_xor[1], MCInst_XOR_r0_Inst_0_n1}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1779, MCOutput[48]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) MCInst_XOR_r0_Inst_2_U3 ( .common_out(common_out), .a ({common_xor[0], MCInput[50]}), .b ({common_xor[1], MCInst_XOR_r0_Inst_2_n1}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1783, MCOutput[50]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) MCInst_XOR_r0_Inst_4_U3 ( .common_out(common_out), .a ({common_xor[0], MCInput[52]}), .b ({common_xor[1], MCInst_XOR_r0_Inst_4_n1}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1787, MCOutput[52]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) MCInst_XOR_r0_Inst_6_U3 ( .common_out(common_out), .a ({common_xor[0], MCInput[54]}), .b ({common_xor[1], MCInst_XOR_r0_Inst_6_n1}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1791, MCOutput[54]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) MCInst_XOR_r0_Inst_8_U3 ( .common_out(common_out), .a ({common_xor[0], MCInput[56]}), .b ({common_xor[1], MCInst_XOR_r0_Inst_8_n1}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1795, MCOutput[56]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) MCInst_XOR_r0_Inst_10_U3 ( .common_out(common_out), .a ({common_xor[0], MCInput[58]}), .b ({common_xor[1], MCInst_XOR_r0_Inst_10_n1}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1799, MCOutput[58]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) MCInst_XOR_r0_Inst_12_U3 ( .common_out(common_out), .a ({common_xor[0], MCInput[60]}), .b ({common_xor[1], MCInst_XOR_r0_Inst_12_n1}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1803, MCOutput[60]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) MCInst_XOR_r0_Inst_14_U3 ( .common_out(common_out), .a ({common_xor[0], MCInput[62]}), .b ({common_xor[1], MCInst_XOR_r0_Inst_14_n1}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1807, MCOutput[62]}) ) ; /* xnor_COMAR_type_1 */
    not_masked #(.security_order(1), .pipeline(0)) AddKeyXOR1_XORInst_0_0_U1 ( .a ({new_AGEMA_signal_1779, MCOutput[48]}), .b ({new_AGEMA_signal_1843, AddKeyXOR1_XORInst_0_0_n1}) ) ;
    xnor_COMAR #(.security_order(1), .pipeline(0)) AddKeyXOR1_XORInst_0_1_U2 ( .common_out(common_out), .a ({new_AGEMA_signal_1844, AddKeyXOR1_XORInst_0_1_n1}), .b ({new_AGEMA_signal_1551, SelectedKey[49]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1876, AddRoundKeyOutput[49]}) ) ; /* xnor_COMAR_type_3 */
    not_masked #(.security_order(1), .pipeline(0)) AddKeyXOR1_XORInst_0_2_U1 ( .a ({new_AGEMA_signal_1783, MCOutput[50]}), .b ({new_AGEMA_signal_1845, AddKeyXOR1_XORInst_0_2_n1}) ) ;
    xnor_COMAR #(.security_order(1), .pipeline(0)) AddKeyXOR1_XORInst_0_3_U2 ( .common_out(common_out), .a ({new_AGEMA_signal_1846, AddKeyXOR1_XORInst_0_3_n1}), .b ({new_AGEMA_signal_1557, SelectedKey[51]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1878, AddRoundKeyOutput[51]}) ) ; /* xnor_COMAR_type_3 */
    not_masked #(.security_order(1), .pipeline(0)) AddKeyXOR1_XORInst_1_0_U1 ( .a ({new_AGEMA_signal_1787, MCOutput[52]}), .b ({new_AGEMA_signal_1847, AddKeyXOR1_XORInst_1_0_n1}) ) ;
    xnor_COMAR #(.security_order(1), .pipeline(0)) AddKeyXOR1_XORInst_1_1_U2 ( .common_out(common_out), .a ({new_AGEMA_signal_1848, AddKeyXOR1_XORInst_1_1_n1}), .b ({new_AGEMA_signal_1278, SelectedKey[53]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1880, AddRoundKeyOutput[53]}) ) ; /* xnor_COMAR_type_3 */
    not_masked #(.security_order(1), .pipeline(0)) AddKeyXOR1_XORInst_1_2_U1 ( .a ({new_AGEMA_signal_1791, MCOutput[54]}), .b ({new_AGEMA_signal_1849, AddKeyXOR1_XORInst_1_2_n1}) ) ;
    xnor_COMAR #(.security_order(1), .pipeline(0)) AddKeyXOR1_XORInst_1_3_U2 ( .common_out(common_out), .a ({new_AGEMA_signal_1850, AddKeyXOR1_XORInst_1_3_n1}), .b ({new_AGEMA_signal_1563, SelectedKey[55]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1882, AddRoundKeyOutput[55]}) ) ; /* xnor_COMAR_type_3 */
    not_masked #(.security_order(1), .pipeline(0)) AddKeyXOR1_XORInst_2_0_U1 ( .a ({new_AGEMA_signal_1795, MCOutput[56]}), .b ({new_AGEMA_signal_1851, AddKeyXOR1_XORInst_2_0_n1}) ) ;
    xnor_COMAR #(.security_order(1), .pipeline(0)) AddKeyXOR1_XORInst_2_1_U2 ( .common_out(common_out), .a ({new_AGEMA_signal_1852, AddKeyXOR1_XORInst_2_1_n1}), .b ({new_AGEMA_signal_1566, SelectedKey[57]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1884, AddRoundKeyOutput[57]}) ) ; /* xnor_COMAR_type_3 */
    not_masked #(.security_order(1), .pipeline(0)) AddKeyXOR1_XORInst_2_2_U1 ( .a ({new_AGEMA_signal_1799, MCOutput[58]}), .b ({new_AGEMA_signal_1853, AddKeyXOR1_XORInst_2_2_n1}) ) ;
    xnor_COMAR #(.security_order(1), .pipeline(0)) AddKeyXOR1_XORInst_2_3_U2 ( .common_out(common_out), .a ({new_AGEMA_signal_1854, AddKeyXOR1_XORInst_2_3_n1}), .b ({new_AGEMA_signal_1287, SelectedKey[59]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1886, AddRoundKeyOutput[59]}) ) ; /* xnor_COMAR_type_3 */
    not_masked #(.security_order(1), .pipeline(0)) AddKeyXOR1_XORInst_3_0_U1 ( .a ({new_AGEMA_signal_1803, MCOutput[60]}), .b ({new_AGEMA_signal_1855, AddKeyXOR1_XORInst_3_0_n1}) ) ;
    xnor_COMAR #(.security_order(1), .pipeline(0)) AddKeyXOR1_XORInst_3_1_U2 ( .common_out(common_out), .a ({new_AGEMA_signal_1856, AddKeyXOR1_XORInst_3_1_n1}), .b ({new_AGEMA_signal_1575, SelectedKey[61]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1888, AddRoundKeyOutput[61]}) ) ; /* xnor_COMAR_type_3 */
    not_masked #(.security_order(1), .pipeline(0)) AddKeyXOR1_XORInst_3_2_U1 ( .a ({new_AGEMA_signal_1807, MCOutput[62]}), .b ({new_AGEMA_signal_1857, AddKeyXOR1_XORInst_3_2_n1}) ) ;
    xnor_COMAR #(.security_order(1), .pipeline(0)) AddKeyXOR1_XORInst_3_3_U2 ( .common_out(common_out), .a ({new_AGEMA_signal_1858, AddKeyXOR1_XORInst_3_3_n1}), .b ({new_AGEMA_signal_1578, SelectedKey[63]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1890, AddRoundKeyOutput[63]}) ) ; /* xnor_COMAR_type_3 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) AddKeyConstXOR_XORInst_0_0_U3 ( .common_out(common_out), .a ({common_xor[0], MCOutput[40]}), .b ({common_xor[1], AddKeyConstXOR_XORInst_0_0_n1}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1859, AddRoundKeyOutput[40]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) AddKeyConstXOR_XORInst_0_2_U3 ( .common_out(common_out), .a ({common_xor[0], MCOutput[42]}), .b ({common_xor[1], AddKeyConstXOR_XORInst_0_2_n1}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1861, AddRoundKeyOutput[42]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) AddKeyConstXOR_XORInst_1_0_U3 ( .common_out(common_out), .a ({common_xor[0], MCOutput[44]}), .b ({common_xor[1], AddKeyConstXOR_XORInst_1_0_n1}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1863, AddRoundKeyOutput[44]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0), .opt(1)) AddKeyConstXOR_XORInst_1_2_U3 ( .common_out(common_out), .a ({common_xor[0], MCOutput[46]}), .b ({common_xor[1], AddKeyConstXOR_XORInst_1_2_n1}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1865, AddRoundKeyOutput[46]}) ) ; /* xnor_COMAR_type_1 */
    xnor_COMAR #(.security_order(1), .pipeline(0)) AddKeyXOR2_XORInst_8_0_U2 ( .common_out(common_out), .a ({new_AGEMA_signal_1867, AddKeyXOR2_XORInst_8_0_n1}), .b ({new_AGEMA_signal_1509, SelectedKey[32]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1891, AddRoundKeyOutput[32]}) ) ; /* xnor_COMAR_type_3 */
    xnor_COMAR #(.security_order(1), .pipeline(0)) AddKeyXOR2_XORInst_8_2_U2 ( .common_out(common_out), .a ({new_AGEMA_signal_1869, AddKeyXOR2_XORInst_8_2_n1}), .b ({new_AGEMA_signal_1512, SelectedKey[34]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1893, AddRoundKeyOutput[34]}) ) ; /* xnor_COMAR_type_3 */
    xnor_COMAR #(.security_order(1), .pipeline(0)) AddKeyXOR2_XORInst_9_0_U2 ( .common_out(common_out), .a ({new_AGEMA_signal_1871, AddKeyXOR2_XORInst_9_0_n1}), .b ({new_AGEMA_signal_1272, SelectedKey[36]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1895, AddRoundKeyOutput[36]}) ) ; /* xnor_COMAR_type_3 */
    xnor_COMAR #(.security_order(1), .pipeline(0)) AddKeyXOR2_XORInst_9_2_U2 ( .common_out(common_out), .a ({new_AGEMA_signal_1873, AddKeyXOR2_XORInst_9_2_n1}), .b ({new_AGEMA_signal_1521, SelectedKey[38]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1897, AddRoundKeyOutput[38]}) ) ; /* xnor_COMAR_type_3 */

    /* cells in depth 13 */

    /* cells in depth 14 */
    xnor_COMAR #(.security_order(1), .pipeline(0)) AddKeyXOR1_XORInst_0_0_U2 ( .common_out(common_out), .a ({new_AGEMA_signal_1843, AddKeyXOR1_XORInst_0_0_n1}), .b ({new_AGEMA_signal_1548, SelectedKey[48]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1875, AddRoundKeyOutput[48]}) ) ; /* xnor_COMAR_type_3 */
    xnor_COMAR #(.security_order(1), .pipeline(0)) AddKeyXOR1_XORInst_0_2_U2 ( .common_out(common_out), .a ({new_AGEMA_signal_1845, AddKeyXOR1_XORInst_0_2_n1}), .b ({new_AGEMA_signal_1554, SelectedKey[50]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1877, AddRoundKeyOutput[50]}) ) ; /* xnor_COMAR_type_3 */
    xnor_COMAR #(.security_order(1), .pipeline(0)) AddKeyXOR1_XORInst_1_0_U2 ( .common_out(common_out), .a ({new_AGEMA_signal_1847, AddKeyXOR1_XORInst_1_0_n1}), .b ({new_AGEMA_signal_1560, SelectedKey[52]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1879, AddRoundKeyOutput[52]}) ) ; /* xnor_COMAR_type_3 */
    xnor_COMAR #(.security_order(1), .pipeline(0)) AddKeyXOR1_XORInst_1_2_U2 ( .common_out(common_out), .a ({new_AGEMA_signal_1849, AddKeyXOR1_XORInst_1_2_n1}), .b ({new_AGEMA_signal_1281, SelectedKey[54]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1881, AddRoundKeyOutput[54]}) ) ; /* xnor_COMAR_type_3 */
    xnor_COMAR #(.security_order(1), .pipeline(0)) AddKeyXOR1_XORInst_2_0_U2 ( .common_out(common_out), .a ({new_AGEMA_signal_1851, AddKeyXOR1_XORInst_2_0_n1}), .b ({new_AGEMA_signal_1284, SelectedKey[56]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1883, AddRoundKeyOutput[56]}) ) ; /* xnor_COMAR_type_3 */
    xnor_COMAR #(.security_order(1), .pipeline(0)) AddKeyXOR1_XORInst_2_2_U2 ( .common_out(common_out), .a ({new_AGEMA_signal_1853, AddKeyXOR1_XORInst_2_2_n1}), .b ({new_AGEMA_signal_1569, SelectedKey[58]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1885, AddRoundKeyOutput[58]}) ) ; /* xnor_COMAR_type_3 */
    xnor_COMAR #(.security_order(1), .pipeline(0)) AddKeyXOR1_XORInst_3_0_U2 ( .common_out(common_out), .a ({new_AGEMA_signal_1855, AddKeyXOR1_XORInst_3_0_n1}), .b ({new_AGEMA_signal_1572, SelectedKey[60]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1887, AddRoundKeyOutput[60]}) ) ; /* xnor_COMAR_type_3 */
    xnor_COMAR #(.security_order(1), .pipeline(0)) AddKeyXOR1_XORInst_3_2_U2 ( .common_out(common_out), .a ({new_AGEMA_signal_1857, AddKeyXOR1_XORInst_3_2_n1}), .b ({new_AGEMA_signal_1290, SelectedKey[62]}), .clk (clk), .r ({Fresh[5], Fresh[4], Fresh[3], Fresh[2], Fresh[1], Fresh[0]}), .c ({new_AGEMA_signal_1889, AddRoundKeyOutput[62]}) ) ; /* xnor_COMAR_type_3 */

    /* register cells */
    reg_masked #(.security_order(1), .pipeline(0)) StateReg_s_current_state_reg_63__FF_FF ( .clk (clk_gated), .D ({new_AGEMA_signal_1890, AddRoundKeyOutput[63]}), .Q ({ciphertext_s1[63], ciphertext_s0[63]}) ) ; /* reg_masked_type_1 */
    assign common_out2 = ciphertext_s1[63];
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) StateReg_s_current_state_reg_62__FF_FF ( .clk (clk_gated), .D ({common_out2, AddRoundKeyOutput[62]}), .Q ({ciphertext_s1[62], ciphertext_s0[62]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) StateReg_s_current_state_reg_61__FF_FF ( .clk (clk_gated), .D ({common_out2, AddRoundKeyOutput[61]}), .Q ({ciphertext_s1[61], ciphertext_s0[61]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) StateReg_s_current_state_reg_60__FF_FF ( .clk (clk_gated), .D ({common_out2, AddRoundKeyOutput[60]}), .Q ({ciphertext_s1[60], ciphertext_s0[60]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) StateReg_s_current_state_reg_59__FF_FF ( .clk (clk_gated), .D ({common_out2, AddRoundKeyOutput[59]}), .Q ({ciphertext_s1[59], ciphertext_s0[59]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) StateReg_s_current_state_reg_58__FF_FF ( .clk (clk_gated), .D ({common_out2, AddRoundKeyOutput[58]}), .Q ({ciphertext_s1[58], ciphertext_s0[58]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) StateReg_s_current_state_reg_57__FF_FF ( .clk (clk_gated), .D ({common_out2, AddRoundKeyOutput[57]}), .Q ({ciphertext_s1[57], ciphertext_s0[57]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) StateReg_s_current_state_reg_56__FF_FF ( .clk (clk_gated), .D ({common_out2, AddRoundKeyOutput[56]}), .Q ({ciphertext_s1[56], ciphertext_s0[56]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) StateReg_s_current_state_reg_55__FF_FF ( .clk (clk_gated), .D ({common_out2, AddRoundKeyOutput[55]}), .Q ({ciphertext_s1[55], ciphertext_s0[55]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) StateReg_s_current_state_reg_54__FF_FF ( .clk (clk_gated), .D ({common_out2, AddRoundKeyOutput[54]}), .Q ({ciphertext_s1[54], ciphertext_s0[54]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) StateReg_s_current_state_reg_53__FF_FF ( .clk (clk_gated), .D ({common_out2, AddRoundKeyOutput[53]}), .Q ({ciphertext_s1[53], ciphertext_s0[53]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) StateReg_s_current_state_reg_52__FF_FF ( .clk (clk_gated), .D ({common_out2, AddRoundKeyOutput[52]}), .Q ({ciphertext_s1[52], ciphertext_s0[52]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) StateReg_s_current_state_reg_51__FF_FF ( .clk (clk_gated), .D ({common_out2, AddRoundKeyOutput[51]}), .Q ({ciphertext_s1[51], ciphertext_s0[51]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) StateReg_s_current_state_reg_50__FF_FF ( .clk (clk_gated), .D ({common_out2, AddRoundKeyOutput[50]}), .Q ({ciphertext_s1[50], ciphertext_s0[50]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) StateReg_s_current_state_reg_49__FF_FF ( .clk (clk_gated), .D ({common_out2, AddRoundKeyOutput[49]}), .Q ({ciphertext_s1[49], ciphertext_s0[49]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) StateReg_s_current_state_reg_48__FF_FF ( .clk (clk_gated), .D ({common_out2, AddRoundKeyOutput[48]}), .Q ({ciphertext_s1[48], ciphertext_s0[48]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) StateReg_s_current_state_reg_47__FF_FF ( .clk (clk_gated), .D ({common_out2, AddRoundKeyOutput[47]}), .Q ({ciphertext_s1[47], ciphertext_s0[47]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) StateReg_s_current_state_reg_46__FF_FF ( .clk (clk_gated), .D ({common_out2, AddRoundKeyOutput[46]}), .Q ({ciphertext_s1[46], ciphertext_s0[46]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) StateReg_s_current_state_reg_45__FF_FF ( .clk (clk_gated), .D ({common_out2, AddRoundKeyOutput[45]}), .Q ({ciphertext_s1[45], ciphertext_s0[45]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) StateReg_s_current_state_reg_44__FF_FF ( .clk (clk_gated), .D ({common_out2, AddRoundKeyOutput[44]}), .Q ({ciphertext_s1[44], ciphertext_s0[44]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) StateReg_s_current_state_reg_43__FF_FF ( .clk (clk_gated), .D ({common_out2, AddRoundKeyOutput[43]}), .Q ({ciphertext_s1[43], ciphertext_s0[43]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) StateReg_s_current_state_reg_42__FF_FF ( .clk (clk_gated), .D ({common_out2, AddRoundKeyOutput[42]}), .Q ({ciphertext_s1[42], ciphertext_s0[42]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) StateReg_s_current_state_reg_41__FF_FF ( .clk (clk_gated), .D ({common_out2, AddRoundKeyOutput[41]}), .Q ({ciphertext_s1[41], ciphertext_s0[41]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) StateReg_s_current_state_reg_40__FF_FF ( .clk (clk_gated), .D ({common_out2, AddRoundKeyOutput[40]}), .Q ({ciphertext_s1[40], ciphertext_s0[40]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) StateReg_s_current_state_reg_39__FF_FF ( .clk (clk_gated), .D ({common_out2, AddRoundKeyOutput[39]}), .Q ({ciphertext_s1[39], ciphertext_s0[39]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) StateReg_s_current_state_reg_38__FF_FF ( .clk (clk_gated), .D ({common_out2, AddRoundKeyOutput[38]}), .Q ({ciphertext_s1[38], ciphertext_s0[38]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) StateReg_s_current_state_reg_37__FF_FF ( .clk (clk_gated), .D ({common_out2, AddRoundKeyOutput[37]}), .Q ({ciphertext_s1[37], ciphertext_s0[37]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) StateReg_s_current_state_reg_36__FF_FF ( .clk (clk_gated), .D ({common_out2, AddRoundKeyOutput[36]}), .Q ({ciphertext_s1[36], ciphertext_s0[36]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) StateReg_s_current_state_reg_35__FF_FF ( .clk (clk_gated), .D ({common_out2, AddRoundKeyOutput[35]}), .Q ({ciphertext_s1[35], ciphertext_s0[35]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) StateReg_s_current_state_reg_34__FF_FF ( .clk (clk_gated), .D ({common_out2, AddRoundKeyOutput[34]}), .Q ({ciphertext_s1[34], ciphertext_s0[34]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) StateReg_s_current_state_reg_33__FF_FF ( .clk (clk_gated), .D ({common_out2, AddRoundKeyOutput[33]}), .Q ({ciphertext_s1[33], ciphertext_s0[33]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) StateReg_s_current_state_reg_32__FF_FF ( .clk (clk_gated), .D ({common_out2, AddRoundKeyOutput[32]}), .Q ({ciphertext_s1[32], ciphertext_s0[32]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) StateReg_s_current_state_reg_31__FF_FF ( .clk (clk_gated), .D ({common_out2, AddRoundKeyOutput[31]}), .Q ({ciphertext_s1[31], ciphertext_s0[31]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) StateReg_s_current_state_reg_30__FF_FF ( .clk (clk_gated), .D ({common_out2, AddRoundKeyOutput[30]}), .Q ({ciphertext_s1[30], ciphertext_s0[30]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) StateReg_s_current_state_reg_29__FF_FF ( .clk (clk_gated), .D ({common_out2, AddRoundKeyOutput[29]}), .Q ({ciphertext_s1[29], ciphertext_s0[29]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) StateReg_s_current_state_reg_28__FF_FF ( .clk (clk_gated), .D ({common_out2, AddRoundKeyOutput[28]}), .Q ({ciphertext_s1[28], ciphertext_s0[28]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) StateReg_s_current_state_reg_27__FF_FF ( .clk (clk_gated), .D ({common_out2, AddRoundKeyOutput[27]}), .Q ({ciphertext_s1[27], ciphertext_s0[27]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) StateReg_s_current_state_reg_26__FF_FF ( .clk (clk_gated), .D ({common_out2, AddRoundKeyOutput[26]}), .Q ({ciphertext_s1[26], ciphertext_s0[26]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) StateReg_s_current_state_reg_25__FF_FF ( .clk (clk_gated), .D ({common_out2, AddRoundKeyOutput[25]}), .Q ({ciphertext_s1[25], ciphertext_s0[25]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) StateReg_s_current_state_reg_24__FF_FF ( .clk (clk_gated), .D ({common_out2, AddRoundKeyOutput[24]}), .Q ({ciphertext_s1[24], ciphertext_s0[24]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) StateReg_s_current_state_reg_23__FF_FF ( .clk (clk_gated), .D ({common_out2, AddRoundKeyOutput[23]}), .Q ({ciphertext_s1[23], ciphertext_s0[23]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) StateReg_s_current_state_reg_22__FF_FF ( .clk (clk_gated), .D ({common_out2, AddRoundKeyOutput[22]}), .Q ({ciphertext_s1[22], ciphertext_s0[22]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) StateReg_s_current_state_reg_21__FF_FF ( .clk (clk_gated), .D ({common_out2, AddRoundKeyOutput[21]}), .Q ({ciphertext_s1[21], ciphertext_s0[21]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) StateReg_s_current_state_reg_20__FF_FF ( .clk (clk_gated), .D ({common_out2, AddRoundKeyOutput[20]}), .Q ({ciphertext_s1[20], ciphertext_s0[20]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) StateReg_s_current_state_reg_19__FF_FF ( .clk (clk_gated), .D ({common_out2, AddRoundKeyOutput[19]}), .Q ({ciphertext_s1[19], ciphertext_s0[19]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) StateReg_s_current_state_reg_18__FF_FF ( .clk (clk_gated), .D ({common_out2, AddRoundKeyOutput[18]}), .Q ({ciphertext_s1[18], ciphertext_s0[18]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) StateReg_s_current_state_reg_17__FF_FF ( .clk (clk_gated), .D ({common_out2, AddRoundKeyOutput[17]}), .Q ({ciphertext_s1[17], ciphertext_s0[17]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) StateReg_s_current_state_reg_16__FF_FF ( .clk (clk_gated), .D ({common_out2, AddRoundKeyOutput[16]}), .Q ({ciphertext_s1[16], ciphertext_s0[16]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) StateReg_s_current_state_reg_15__FF_FF ( .clk (clk_gated), .D ({common_out2, AddRoundKeyOutput[15]}), .Q ({ciphertext_s1[15], ciphertext_s0[15]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) StateReg_s_current_state_reg_14__FF_FF ( .clk (clk_gated), .D ({common_out2, AddRoundKeyOutput[14]}), .Q ({ciphertext_s1[14], ciphertext_s0[14]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) StateReg_s_current_state_reg_13__FF_FF ( .clk (clk_gated), .D ({common_out2, AddRoundKeyOutput[13]}), .Q ({ciphertext_s1[13], ciphertext_s0[13]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) StateReg_s_current_state_reg_12__FF_FF ( .clk (clk_gated), .D ({common_out2, AddRoundKeyOutput[12]}), .Q ({ciphertext_s1[12], ciphertext_s0[12]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) StateReg_s_current_state_reg_11__FF_FF ( .clk (clk_gated), .D ({common_out2, AddRoundKeyOutput[11]}), .Q ({ciphertext_s1[11], ciphertext_s0[11]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) StateReg_s_current_state_reg_10__FF_FF ( .clk (clk_gated), .D ({common_out2, AddRoundKeyOutput[10]}), .Q ({ciphertext_s1[10], ciphertext_s0[10]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) StateReg_s_current_state_reg_9__FF_FF ( .clk (clk_gated), .D ({common_out2, AddRoundKeyOutput[9]}), .Q ({ciphertext_s1[9], ciphertext_s0[9]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) StateReg_s_current_state_reg_8__FF_FF ( .clk (clk_gated), .D ({common_out2, AddRoundKeyOutput[8]}), .Q ({ciphertext_s1[8], ciphertext_s0[8]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) StateReg_s_current_state_reg_7__FF_FF ( .clk (clk_gated), .D ({common_out2, AddRoundKeyOutput[7]}), .Q ({ciphertext_s1[7], ciphertext_s0[7]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) StateReg_s_current_state_reg_6__FF_FF ( .clk (clk_gated), .D ({common_out2, AddRoundKeyOutput[6]}), .Q ({ciphertext_s1[6], ciphertext_s0[6]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) StateReg_s_current_state_reg_5__FF_FF ( .clk (clk_gated), .D ({common_out2, AddRoundKeyOutput[5]}), .Q ({ciphertext_s1[5], ciphertext_s0[5]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) StateReg_s_current_state_reg_4__FF_FF ( .clk (clk_gated), .D ({common_out2, AddRoundKeyOutput[4]}), .Q ({ciphertext_s1[4], ciphertext_s0[4]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) StateReg_s_current_state_reg_3__FF_FF ( .clk (clk_gated), .D ({common_out2, AddRoundKeyOutput[3]}), .Q ({ciphertext_s1[3], ciphertext_s0[3]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) StateReg_s_current_state_reg_2__FF_FF ( .clk (clk_gated), .D ({common_out2, AddRoundKeyOutput[2]}), .Q ({ciphertext_s1[2], ciphertext_s0[2]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) StateReg_s_current_state_reg_1__FF_FF ( .clk (clk_gated), .D ({common_out2, AddRoundKeyOutput[1]}), .Q ({ciphertext_s1[1], ciphertext_s0[1]}) ) ; /* reg_masked_type_1 */
    reg_masked #(.security_order(1), .pipeline(0), .opt(1)) StateReg_s_current_state_reg_0__FF_FF ( .clk (clk_gated), .D ({common_out2, AddRoundKeyOutput[0]}), .Q ({ciphertext_s1[0], ciphertext_s0[0]}) ) ; /* reg_masked_type_1 */
    DFF_X1 FSMRegInst_s_current_state_reg_6__FF_FF ( .CK (clk_gated), .D (FSMUpdate[6]), .Q (FSMReg[6]), .QN () ) ;
    DFF_X1 FSMRegInst_s_current_state_reg_5__FF_FF ( .CK (clk_gated), .D (FSMUpdate[5]), .Q (FSMReg[5]), .QN () ) ;
    DFF_X1 FSMRegInst_s_current_state_reg_4__FF_FF ( .CK (clk_gated), .D (FSMUpdate[4]), .Q (FSMReg[4]), .QN () ) ;
    DFF_X1 FSMRegInst_s_current_state_reg_3__FF_FF ( .CK (clk_gated), .D (FSMUpdate[3]), .Q (FSMReg[3]), .QN () ) ;
    DFF_X1 FSMRegInst_s_current_state_reg_2__FF_FF ( .CK (clk_gated), .D (FSMUpdate[2]), .Q (FSMReg[2]), .QN () ) ;
    DFF_X1 FSMRegInst_s_current_state_reg_1__FF_FF ( .CK (clk_gated), .D (FSMUpdate[1]), .Q (FSMReg[1]), .QN () ) ;
    DFF_X1 FSMRegInst_s_current_state_reg_0__FF_FF ( .CK (clk_gated), .D (FSMUpdate[0]), .Q (FSMReg[0]), .QN () ) ;
    DFF_X1 selectsRegInst_s_current_state_reg_1__FF_FF ( .CK (clk_gated), .D (selectsNext[1]), .Q (selectsReg[1]), .QN () ) ;
    DFF_X1 selectsRegInst_s_current_state_reg_0__FF_FF ( .CK (clk_gated), .D (selectsNext[0]), .Q (selectsReg[0]), .QN () ) ;
    DFF_X1 done_reg_FF_FF ( .CK (clk_gated), .D (done_internal), .Q (done), .QN () ) ;
endmodule
