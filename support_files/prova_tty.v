//: version "1.8.7"

module main;    //: root_module
supply0 w5;    //: /sn:0 {0}(459,274)(459,265)(444,265){1}
wire w6;    //: /sn:0 {0}(218,363)(236,363)(236,237)(188,237){1}
wire w7;    //: /sn:0 /dp:1 {0}(205,327)(205,337)(190,337)(190,245)(188,245){1}
wire w4;    //: /sn:0 {0}(449,221)(459,221)(459,255)(444,255){1}
wire w3;    //: /sn:0 {0}(333,221)(366,221)(366,260)(368,260){1}
wire [7:0] w1;    //: /sn:0 /dp:1 {0}(188,212)(254,212)(254,377)(306,377)(306,368){1}
wire [7:0] w8;    //: /sn:0 {0}(405,271)(405,311)(494,311)(494,275){1}
wire [7:0] Dada;    //: /sn:0 /dp:2 {0}(188,204)(298,204){1}
//: {2}(302,204)(405,204)(405,250){3}
//: {4}(300,202)(300,157){5}
wire enviar;    //: /sn:0 {0}(239,138)(249,138)(249,229)(188,229){1}
wire rebre;    //: /sn:0 {0}(312,258)(312,274)(278,274)(278,223){1}
//: {2}(280,221)(317,221){3}
//: {4}(276,221)(188,221){5}
//: enddecls

  //: switch g8 (w4) @(432,221) /sn:0 /w:[ 0 ] /st:1
  led g4 (.I(Dada));   //: @(300,150) /sn:0 /w:[ 5 ] /type:2
  //: comment g16 /dolink:0 /link:"" @(54,24) /sn:0
  //: /line:"Per rebre:"
  //: /line:"Activar CTS i esperar que RTS posi un '1'"
  //: /line:"Si el terminal no te dades a enviar RTS no passa maia a '1' segueix a '0'"
  //: /line:"Si el terminal té dades posa RTS a '1' i TD amb la dada."
  //: /line:"Cal afegir un retard al RTS per utilitzar-lo com a clock d'un registre "
  //: /line:"Com a mínim de 10 (amb 4 no va)"
  //: /line:""
  //: /end
  //: dip g3 (w1) @(306,358) /sn:0 /w:[ 1 ] /st:97
  led g2 (.I(w7));   //: @(205,320) /sn:0 /w:[ 0 ] /type:0
  //: switch g1 (w6) @(201,363) /sn:0 /w:[ 0 ] /st:0
  //: switch g10 (enviar) @(222,138) /sn:0 /w:[ 0 ] /st:1
  register g6 (.Q(w8), .D(Dada), .EN(w5), .CLR(w4), .CK(w3));   //: @(405,260) /sn:0 /w:[ 0 3 1 1 1 ]
  //: supply0 g9 (w5) @(459,280) /sn:0 /w:[ 0 ]
  //: joint g7 (Dada) @(300, 204) /w:[ 2 4 1 -1 ]
  buf g12 (.I(rebre), .Z(w3));   //: @(323,221) /sn:0 /delay:" 10" /w:[ 3 0 ]
  //: comment g14 /dolink:0 /link:"" @(70,518) /sn:0
  //: /line:"Al MIPS no hi ha instruccions d'E/S especials per al ports."
  //: /line:"Cal mapejar en @ de memoria els ports d'E/S "
  //: /line:"I mitjançant un ChipSelect llegir o escriure d'ells."
  //: /end
  led g11 (.I(rebre));   //: @(312,251) /sn:0 /w:[ 0 ] /type:0
  led g5 (.I(w8));   //: @(494,268) /sn:0 /w:[ 1 ] /type:2
  //: comment g15 /dolink:0 /link:"" @(67,420) /sn:0
  //: /line:"PEr enviar no cal mira el senyal, "
  //: /line:"nomes assegurar-se que al RD "
  //: /line:"hi ha el caràcter ASCII que es vol enviar "
  //: /line:"abans d'activar el DSR (DTR avisa que esta preparat, "
  //: /line:"(pero en simulacio sempre ho esta)"
  //: /end
  tty g0 (.TD(Dada), .RD(w1), .RTS(rebre), .CTS(enviar), .DSR(w6), .DTR(w7));   //: @(151,226) /sn:0 /w:[ 0 0 5 1 1 1 ]
  //: joint g13 (rebre) @(278, 221) /w:[ 2 -1 4 1 ]

endmodule
