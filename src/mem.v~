//: version "1.8.7"

module MEM(write_data, MemRead, memWrite, read_data, Address);
//: interface  /sz:(128, 174) /bd:[ Ti0>memWrite(62/128) Li0>Address[31:0](43/174) Li1>write_data[31:0](112/174) Bi0>MemRead(59/128) Ro0<read_data[31:0](35/174) ]
input [31:0] write_data;    //: /sn:0 {0}(316,166)(458,166)(458,192)(488,192){1}
output [31:0] read_data;    //: /sn:0 /dp:1 {0}(504,192)(514,192)(514,247){1}
//: {2}(516,249)(545,249){3}
//: {4}(512,249)(443,249){5}
input memWrite;    //: /sn:0 {0}(317,198)(329,198){1}
//: {2}(333,198)(379,198){3}
//: {4}(383,198)(392,198){5}
//: {6}(381,196)(381,111)(496,111)(496,187){7}
//: {8}(331,200)(331,228)(312,228)(312,244)(282,244)(282,307)(311,307){9}
input MemRead;    //: /sn:0 {0}(304,386)(329,386)(329,384){1}
//: {2}(331,382)(341,382)(341,386)(375,386){3}
//: {4}(329,380)(329,325)(301,325)(301,312)(311,312){5}
input [31:0] Address;    //: /sn:0 {0}(379,251)(408,251){1}
wire w4;    //: /sn:0 {0}(408,198)(426,198)(426,226){1}
wire w3;    //: /sn:0 {0}(391,386)(433,386)(433,276){1}
wire w2;    //: /sn:0 {0}(332,310)(419,310)(419,276){1}
//: enddecls

  //: input g8 (write_data) @(314,166) /sn:0 /w:[ 0 ]
  //: input g4 (MemRead) @(302,386) /sn:0 /w:[ 0 ]
  //: input g3 (memWrite) @(315,198) /sn:0 /w:[ 0 ]
  //: output g2 (read_data) @(542,249) /sn:0 /w:[ 3 ]
  //: input g1 (Address) @(377,251) /sn:0 /w:[ 0 ]
  not g10 (.I(MemRead), .Z(w3));   //: @(381,386) /sn:0 /w:[ 3 0 ]
  //: joint g6 (read_data) @(514, 249) /w:[ 2 1 4 -1 ]
  not g7 (.I(memWrite), .Z(w4));   //: @(398,198) /sn:0 /w:[ 5 0 ]
  nor g9 (.I0(memWrite), .I1(MemRead), .Z(w2));   //: @(322,310) /sn:0 /w:[ 9 5 0 ]
  //: joint g12 (MemRead) @(329, 382) /w:[ 2 4 -1 1 ]
  //: joint g11 (memWrite) @(331, 198) /w:[ 2 -1 1 8 ]
  bufif1 g5 (.Z(read_data), .I(write_data), .E(memWrite));   //: @(494,192) /sn:0 /w:[ 0 1 7 ]
  ram g0 (.A(Address), .D(read_data), .WE(w4), .OE(w3), .CS(w2));   //: @(426,250) /sn:0 /w:[ 1 5 1 1 1 ]
  //: joint g13 (memWrite) @(381, 198) /w:[ 4 6 3 -1 ]

endmodule

module main;    //: root_module
wire [31:0] w4;    //: /sn:0 {0}(262,155)(252,155){1}
wire w3;    //: /sn:0 {0}(182,305)(182,295){1}
wire [31:0] w0;    //: /sn:0 {0}(112,163)(122,163){1}
wire [31:0] w1;    //: /sn:0 {0}(112,232)(122,232){1}
wire w2;    //: /sn:0 {0}(185,109)(185,119){1}
//: enddecls

  MEM g0 (.memWrite(w2), .write_data(w1), .Address(w0), .MemRead(w3), .read_data(w4));   //: @(123, 120) /sz:(128, 174) /sn:0 /p:[ Ti0>1 Li0>1 Li1>1 Bi0>1 Ro0<1 ]

endmodule
