//: version "1.8.7"

module ALUCtrl();
//: interface  /sz:(171, 213) /bd:[ Li0>ALUOp[1:0](35/213) Li1>funct[5:0](103/213) Ro0<ALUCtrl[3:0](50/213) ]
//: enddecls


endmodule

module ctrl(RegDst, ALUSrc, instruction, MemRead, Jump, MemtoReg, Branch, RegWrite, MemWrite, ALUOp);
//: interface  /sz:(171, 276) /bd:[ Li0>instruction[5:0](47/276) Ro0<RegWrite(240/276) Ro1<ALUSrc(211/276) Ro2<MemWrite(175/276) Ro3<MemtoReg(120/276) Ro4<ALUOp[1:0](151/276) Ro5<MemRead(91/276) Ro6<Branch(67/276) Ro7<Jump(42/276) Ro8<RegDst(22/276) ]
output Branch;    //: /sn:0 {0}(432,-28)(561,-28){1}
supply0 w3;    //: /sn:0 {0}(309,8)(309,-50)(331,-50)(331,-60){1}
output MemWrite;    //: /sn:0 {0}(432,193)(440,193)(440,194)(565,194){1}
output ALUSrc;    //: /sn:0 {0}(432,227)(440,227)(440,228)(588,228){1}
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

  tran g8(.Z(Jump), .I(w1[11]));   //: @(426,9) /sn:0 /R:2 /w:[ 0 6 5 ] /ss:1
  tran g4(.Z(RegDst), .I(w1[13]));   //: @(426,-62) /sn:0 /R:2 /w:[ 0 2 1 ] /ss:1
  //: output g3 (RegDst) @(555,-62) /sn:0 /w:[ 1 ]
  tran g16(.Z(MemWrite), .I(w1[2]));   //: @(426,193) /sn:0 /R:2 /w:[ 0 14 13 ] /ss:1
  //: output g17 (ALUSrc) @(585,228) /sn:0 /w:[ 1 ]
  //: input g2 (instruction) @(19,-73) /sn:0 /w:[ 0 ]
  //: supply0 g1 (w3) @(309,14) /sn:0 /w:[ 0 ]
  tran g18(.Z(ALUSrc), .I(w1[1]));   //: @(426,227) /sn:0 /R:2 /w:[ 0 16 15 ] /ss:1
  tran g10(.Z(MemRead), .I(w1[10]));   //: @(426,43) /sn:0 /R:2 /w:[ 0 8 7 ] /ss:1
  tran g6(.Z(Branch), .I(w1[12]));   //: @(426,-28) /sn:0 /R:2 /w:[ 0 4 3 ] /ss:1
  //: output g9 (MemRead) @(563,48) /sn:0 /w:[ 1 ]
  //: output g7 (Jump) @(560,12) /sn:0 /w:[ 1 ]
  tran g12(.Z(MemtoReg), .I(w1[9]));   //: @(427,86) /sn:0 /R:2 /w:[ 0 10 9 ] /ss:1
  //: output g11 (MemtoReg) @(560,94) /sn:0 /w:[ 1 ]
  //: output g5 (Branch) @(558,-28) /sn:0 /w:[ 1 ]
  tran g14(.Z(ALUOp), .I(w1[4:3]));   //: @(426,144) /sn:0 /R:2 /w:[ 0 12 11 ] /ss:1
  //: output g19 (RegWrite) @(582,258) /sn:0 /w:[ 1 ]
  tran g20(.Z(RegWrite), .I(w1[0]));   //: @(426,259) /sn:0 /R:2 /w:[ 0 18 17 ] /ss:1
  rom g0 (.A(instruction), .D(w1), .OE(w3));   //: @(331,-86) /sn:0 /w:[ 1 0 1 ]
  //: output g15 (MemWrite) @(562,194) /sn:0 /w:[ 1 ]
  //: output g13 (ALUOp) @(574,145) /sn:0 /w:[ 1 ]

endmodule

module main;    //: root_module
wire w13;    //: /sn:0 {0}(396,178)(434,178){1}
wire w16;    //: /sn:0 {0}(396,247)(435,247){1}
wire [3:0] w3;    //: /sn:0 {0}(406,487)(396,487){1}
wire [5:0] w0;    //: /sn:0 {0}(100,128)(100,203)(223,203){1}
wire w20;    //: /sn:0 {0}(396,367)(417,367)(417,369)(426,369){1}
wire [1:0] w18;    //: /sn:0 {0}(396,307)(459,307)(459,306)(468,306){1}
wire w19;    //: /sn:0 {0}(396,331)(436,331){1}
wire w21;    //: /sn:0 {0}(396,396)(427,396){1}
wire [1:0] w1;    //: /sn:0 {0}(213,472)(223,472){1}
wire w17;    //: /sn:0 {0}(396,276)(425,276)(425,274)(434,274){1}
wire w14;    //: /sn:0 {0}(396,198)(432,198){1}
wire [5:0] w2;    //: /sn:0 {0}(213,540)(223,540){1}
wire w15;    //: /sn:0 {0}(396,223)(425,223)(425,222)(434,222){1}
//: enddecls

  led g8 (.I(w20));   //: @(433,369) /sn:0 /R:3 /w:[ 1 ] /type:0
  led g4 (.I(w14));   //: @(439,198) /sn:0 /R:3 /w:[ 1 ] /type:0
  led g3 (.I(w16));   //: @(442,247) /sn:0 /R:3 /w:[ 1 ] /type:0
  led g2 (.I(w13));   //: @(441,178) /sn:0 /R:3 /w:[ 1 ] /type:0
  ctrl g1 (.instruction(w0), .RegWrite(w21), .ALUSrc(w20), .MemWrite(w19), .MemtoReg(w17), .ALUOp(w18), .MemRead(w16), .Branch(w15), .Jump(w14), .RegDst(w13));   //: @(224, 156) /sz:(171, 276) /sn:0 /p:[ Li0>1 Ro0<0 Ro1<0 Ro2<0 Ro3<0 Ro4<0 Ro5<0 Ro6<0 Ro7<0 Ro8<0 ]
  led g10 (.I(w18));   //: @(475,306) /sn:0 /R:3 /w:[ 1 ] /type:3
  led g6 (.I(w17));   //: @(441,274) /sn:0 /R:3 /w:[ 1 ] /type:0
  led g9 (.I(w21));   //: @(434,396) /sn:0 /R:3 /w:[ 1 ] /type:0
  led g7 (.I(w19));   //: @(443,331) /sn:0 /R:3 /w:[ 1 ] /type:0
  ALUCtrl g11 (.funct(w2), .ALUOp(w1), .ALUCtrl(w3));   //: @(224, 437) /sz:(171, 213) /sn:0 /p:[ Li0>1 Li1>1 Ro0<1 ]
  led g5 (.I(w15));   //: @(441,222) /sn:0 /R:3 /w:[ 1 ] /type:0
  //: dip g0 (w0) @(100,118) /sn:0 /w:[ 0 ] /st:2

endmodule
