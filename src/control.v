//: version "1.8.7"

module control(RegDst, instruction, MemRead, Jump, MemtoReg, Branch);
//: interface  /sz:(211, 277) /bd:[ Li0>instruction[5:0](57/277) Bi0>clr(89/211) Bi1>clk(19/211) Ro0<RegWrite(244/277) Ro1<ALUSrc(216/277) Ro2<MemWrite(185/277) Ro3<ALUOp[3:0](155/277) Ro4<MemtoReg(133/277) Ro5<MemRead(99/277) Ro6<Branch(70/277) Ro7<Jump(44/277) Ro8<RegDst(18/277) ]
output Branch;    //: /sn:0 /dp:1 {0}(566,218)(695,218){1}
supply0 w3;    //: /sn:0 {0}(443,254)(443,196)(465,196)(465,186){1}
input [5:0] instruction;    //: /sn:0 {0}(155,173)(437,173)(437,161)(447,161){1}
output RegDst;    //: /sn:0 /dp:1 {0}(566,184)(692,184){1}
output MemtoReg;    //: /sn:0 /dp:1 {0}(567,332)(575,332)(575,340)(697,340){1}
output MemRead;    //: /sn:0 /dp:1 {0}(566,289)(574,289)(574,294)(700,294){1}
output Jump;    //: /sn:0 /dp:1 {0}(566,255)(574,255)(574,258)(697,258){1}
wire [13:0] w1;    //: /sn:0 {0}(482,159)(562,159)(562,183){1}
//: {2}(562,184)(562,217){3}
//: {4}(562,218)(562,254){5}
//: {6}(562,255)(562,288){7}
//: {8}(562,289)(562,309)(563,309)(563,331){9}
//: {10}(563,332)(563,612){11}
//: enddecls

  tran g8(.Z(Jump), .I(w1[11]));   //: @(560,255) /sn:0 /R:2 /w:[ 0 6 5 ] /ss:1
  tran g4(.Z(RegDst), .I(w1[13]));   //: @(560,184) /sn:0 /R:2 /w:[ 0 2 1 ] /ss:1
  //: output g3 (RegDst) @(689,184) /sn:0 /w:[ 1 ]
  //: input g2 (instruction) @(153,173) /sn:0 /w:[ 0 ]
  //: supply0 g1 (w3) @(443,260) /sn:0 /w:[ 0 ]
  tran g10(.Z(MemRead), .I(w1[10]));   //: @(560,289) /sn:0 /R:2 /w:[ 0 8 7 ] /ss:1
  tran g6(.Z(Branch), .I(w1[12]));   //: @(560,218) /sn:0 /R:2 /w:[ 0 4 3 ] /ss:1
  //: output g9 (MemRead) @(697,294) /sn:0 /w:[ 1 ]
  //: output g7 (Jump) @(694,258) /sn:0 /w:[ 1 ]
  tran g12(.Z(MemtoReg), .I(w1[9]));   //: @(561,332) /sn:0 /R:2 /w:[ 0 10 9 ] /ss:1
  //: output g11 (MemtoReg) @(694,340) /sn:0 /w:[ 1 ]
  //: output g5 (Branch) @(692,218) /sn:0 /w:[ 1 ]
  rom g0 (.A(instruction), .D(w1), .OE(w3));   //: @(465,160) /sn:0 /w:[ 1 0 1 ]

endmodule

module main;    //: root_module
wire [3:0] w6;    //: /sn:0 {0}(397,193)(387,193){1}
wire w7;    //: /sn:0 {0}(397,223)(387,223){1}
wire w4;    //: /sn:0 {0}(397,137)(387,137){1}
wire [5:0] w0;    //: /sn:0 {0}(164,95)(174,95){1}
wire w3;    //: /sn:0 {0}(397,108)(387,108){1}
wire w10;    //: /sn:0 {0}(194,326)(194,316){1}
wire w1;    //: /sn:0 {0}(397,56)(387,56){1}
wire w8;    //: /sn:0 {0}(393,254)(387,254){1}
wire w2;    //: /sn:0 {0}(397,82)(387,82){1}
wire w11;    //: /sn:0 {0}(264,326)(264,316){1}
wire w5;    //: /sn:0 {0}(397,171)(387,171){1}
wire w9;    //: /sn:0 {0}(397,282)(387,282){1}
//: enddecls

  control g0 (.instruction(w0), .clr(w11), .clk(w10), .RegWrite(w9), .ALUSrc(w8), .MemWrite(w7), .ALUCtrl(w6), .MemtoReg(w5), .MemRead(w4), .Branch(w3), .Jump(w2), .RegDst(w1));   //: @(175, 38) /sz:(211, 277) /sn:0 /anc:1 /p:[ Li0>1 Bi0>1 Bi1>1 Ro0<1 Ro1<1 Ro2<1 Ro3<1 Ro4<1 Ro5<1 Ro6<1 Ro7<1 Ro8<1 ]

endmodule
