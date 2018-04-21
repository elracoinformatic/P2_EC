//: version "1.8.7"

module ctrl(RegDst, ALUSrc, instruction, Jump, MemRead, Branch, MemtoReg, RegWrite, MemWrite, ALUOp);
//: interface  /sz:(171, 276) /bd:[ Li0>instruction[5:0](47/276) Ro0<RegDst(22/276) Ro1<Jump(42/276) Ro2<Branch(67/276) Ro3<MemRead(91/276) Ro4<ALUOp[1:0](151/276) Ro5<MemtoReg(120/276) Ro6<MemWrite(175/276) Ro7<ALUSrc(211/276) Ro8<RegWrite(240/276) ]
output Branch;    //: /sn:0 {0}(432,-28)(561,-28){1}
supply0 w3;    //: /sn:0 {0}(309,8)(309,-50)(331,-50)(331,-60){1}
output ALUSrc;    //: /sn:0 {0}(432,227)(440,227)(440,228)(588,228){1}
output MemWrite;    //: /sn:0 {0}(432,193)(440,193)(440,194)(565,194){1}
input [5:0] instruction;    //: /sn:0 {0}(21,-73)(303,-73)(303,-85)(313,-85){1}
output RegDst;    //: /sn:0 {0}(432,-62)(558,-62){1}
output RegWrite;    //: /sn:0 {0}(432,259)(440,259)(440,258)(585,258){1}
output [1:0] ALUOp;    //: /sn:0 {0}(432,144)(440,144)(440,145)(577,145){1}
output MemtoReg;    //: /sn:0 {0}(433,86)(441,86)(441,94)(563,94){1}
output MemRead;    //: /sn:0 {0}(432,43)(440,43)(440,48)(566,48){1}
output Jump;    //: /sn:0 {0}(432,9)(440,9)(440,12)(563,12){1}
wire [13:0] w1;    //: /sn:0 {0}(348,-87)(428,-87)(428,-63){1}
//: {2}(428,-62)(428,-29){3}
//: {4}(428,-28)(428,8){5}
//: {6}(428,9)(428,42){7}
//: {8}(428,43)(428,63)(429,63)(429,85){9}
//: {10}(429,86)(429,133)(428,133)(428,143){11}
//: {12}(428,144)(428,192){13}
//: {14}(428,193)(428,226){15}
//: {16}(428,227)(428,258){17}
//: {18}(428,259)(428,412){19}
//: enddecls

  tran g4(.Z(RegDst), .I(w1[13]));   //: @(426,-62) /sn:0 /R:2 /w:[ 0 2 1 ] /ss:1
  tran g8(.Z(Jump), .I(w1[11]));   //: @(426,9) /sn:0 /R:2 /w:[ 0 6 5 ] /ss:1
  tran g16(.Z(MemWrite), .I(w1[2]));   //: @(426,193) /sn:0 /R:2 /w:[ 0 14 13 ] /ss:1
  //: output g3 (RegDst) @(555,-62) /sn:0 /w:[ 1 ]
  //: output g17 (ALUSrc) @(585,228) /sn:0 /w:[ 1 ]
  //: input g2 (instruction) @(19,-73) /sn:0 /w:[ 0 ]
  //: supply0 g1 (w3) @(309,14) /sn:0 /w:[ 0 ]
  tran g18(.Z(ALUSrc), .I(w1[1]));   //: @(426,227) /sn:0 /R:2 /w:[ 0 16 15 ] /ss:1
  tran g10(.Z(MemRead), .I(w1[10]));   //: @(426,43) /sn:0 /R:2 /w:[ 0 8 7 ] /ss:1
  tran g6(.Z(Branch), .I(w1[12]));   //: @(426,-28) /sn:0 /R:2 /w:[ 0 4 3 ] /ss:1
  //: output g7 (Jump) @(560,12) /sn:0 /w:[ 1 ]
  //: output g9 (MemRead) @(563,48) /sn:0 /w:[ 1 ]
  tran g12(.Z(MemtoReg), .I(w1[9]));   //: @(427,86) /sn:0 /R:2 /w:[ 0 10 9 ] /ss:1
  tran g14(.Z(ALUOp), .I(w1[4:3]));   //: @(426,144) /sn:0 /R:2 /w:[ 0 12 11 ] /ss:1
  //: output g5 (Branch) @(558,-28) /sn:0 /w:[ 1 ]
  //: output g11 (MemtoReg) @(560,94) /sn:0 /w:[ 1 ]
  //: output g19 (RegWrite) @(582,258) /sn:0 /w:[ 1 ]
  tran g20(.Z(RegWrite), .I(w1[0]));   //: @(426,259) /sn:0 /R:2 /w:[ 0 18 17 ] /ss:1
  //: output g15 (MemWrite) @(562,194) /sn:0 /w:[ 1 ]
  rom g0 (.A(instruction), .D(w1), .OE(w3));   //: @(331,-86) /sn:0 /w:[ 1 0 1 ]
  //: output g13 (ALUOp) @(574,145) /sn:0 /w:[ 1 ]

endmodule

module main;    //: root_module
wire w16;    //: /sn:0 {0}(405,247)(395,247){1}
wire w13;    //: /sn:0 {0}(405,178)(395,178){1}
wire [5:0] w0;    //: /sn:0 {0}(100,128)(100,203)(222,203){1}
wire w20;    //: /sn:0 {0}(405,367)(395,367){1}
wire w19;    //: /sn:0 {0}(405,331)(395,331){1}
wire [1:0] w18;    //: /sn:0 {0}(405,307)(395,307){1}
wire w21;    //: /sn:0 {0}(405,396)(395,396){1}
wire w1;    //: /sn:0 {0}(514,181)(524,181){1}
wire w17;    //: /sn:0 {0}(405,276)(395,276){1}
wire w14;    //: /sn:0 {0}(405,198)(395,198){1}
wire w15;    //: /sn:0 {0}(405,223)(395,223){1}
//: enddecls

  led g2 (.I(w1));   //: @(531,181) /sn:0 /R:3 /w:[ 1 ] /type:0
  ctrl g1 (.instruction(w0), .RegWrite(w21), .ALUSrc(w20), .MemWrite(w19), .MemtoReg(w17), .ALUOp(w18), .MemRead(w16), .Branch(w15), .Jump(w14), .RegDst(w13));   //: @(223, 156) /sz:(171, 276) /sn:0 /p:[ Li0>1 Ro0<1 Ro1<1 Ro2<1 Ro3<1 Ro4<1 Ro5<1 Ro6<1 Ro7<1 Ro8<1 ]
  //: dip g0 (w0) @(100,118) /sn:0 /w:[ 0 ] /st:0

endmodule
