//: version "1.8.7"

module ALU();
//: interface  /sz:(127, 166) /bd:[ Ti0>ALU_operation[3:0](64/127) Li0>A[31:0](46/166) Li1>B[31:0](108/166) Ro0<Zero(52/166) Ro1<ALU_result[31:0](106/166) ]
//: enddecls


endmodule

module EXE(ALU_result, Zero, B, A, ALU_operation);
//: interface  /sz:(182, 314) /bd:[ Ti0>ALU_operation[3:0](84/182) Li0>A[31:0](66/314) Li1>B[31:0](132/314) Ro0<ALU_result[31:0](135/314) Ro1<Zero(65/314) ]
input [31:0] B;    //: /sn:0 {0}(166,377)(387,377){1}
output Zero;    //: /sn:0 {0}(540,308)(675,308){1}
output [31:0] ALU_result;    //: /sn:0 {0}(540,374)(679,374){1}
input [31:0] A;    //: /sn:0 {0}(170,301)(387,301){1}
input [3:0] ALU_operation;    //: /sn:0 {0}(406,120)(464,120)(464,244){1}
//: enddecls

  //: output g4 (ALU_result) @(676,374) /sn:0 /w:[ 1 ]
  //: output g3 (Zero) @(672,308) /sn:0 /w:[ 1 ]
  //: input g2 (B) @(164,377) /sn:0 /w:[ 0 ]
  //: input g1 (A) @(168,301) /sn:0 /w:[ 0 ]
  //: input g5 (ALU_operation) @(404,120) /sn:0 /w:[ 0 ]
  ALU g0 (.ALU_operation(ALU_operation), .B(B), .A(A), .ALU_result(ALU_result), .Zero(Zero));   //: @(388, 245) /sz:(151, 203) /sn:0 /p:[ Ti0>1 Li0>1 Li1>1 Ro0<0 Ro1<0 ]

endmodule

module main;    //: root_module
wire [31:0] w4;    //: /sn:0 {0}(388,208)(378,208){1}
wire [31:0] w0;    //: /sn:0 {0}(184,205)(194,205){1}
wire w3;    //: /sn:0 {0}(388,138)(378,138){1}
wire [31:0] w1;    //: /sn:0 {0}(184,139)(194,139){1}
wire [3:0] w2;    //: /sn:0 {0}(279,62)(279,72){1}
//: enddecls

  EXE g0 (.ALU_operation(w2), .A(w1), .B(w0), .ALU_result(w4), .Zero(w3));   //: @(195, 73) /sz:(182, 314) /sn:0 /p:[ Ti0>1 Li0>1 Li1>1 Ro0<1 Ro1<1 ]

endmodule
