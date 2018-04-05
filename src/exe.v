//: version "1.8.7"

module EXE();
//: interface  /sz:(182, 314) /bd:[ Ti0>ALU_operation[3:0](84/182) Li0>B[31:0](132/314) Li1>A[31:0](66/314) Ro0<Zero(65/314) Ro1<ALU_result[31:0](135/314) ]
//: enddecls


endmodule

module main;    //: root_module
wire [31:0] w4;    //: /sn:0 {0}(388,208)(378,208){1}
wire w3;    //: /sn:0 {0}(388,138)(378,138){1}
wire [31:0] w0;    //: /sn:0 {0}(184,205)(194,205){1}
wire [31:0] w1;    //: /sn:0 {0}(184,139)(194,139){1}
wire [3:0] w2;    //: /sn:0 {0}(279,62)(279,72){1}
//: enddecls

  EXE g0 (.ALU_operation(w2), .A(w1), .B(w0), .ALU_result(w4), .Zero(w3));   //: @(195, 73) /sz:(182, 314) /sn:0 /p:[ Ti0>1 Li0>1 Li1>1 Ro0<1 Ro1<1 ]

endmodule
