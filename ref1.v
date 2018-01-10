//Ardelve Labs Confidential
//Ardelve CELL Schematic Generator - Rev0p1
 
//REFERENCE NAME:
//REFERENCE:0.80
//CURVATURE CORRECTION:0p5
//RESISTOR LENGTH:12.0
//RESISTOR WIDTH:2.0

//Ardelve Labs Confidental
//RAW Generator Rev0p1
//Verilog HDL for "VIS015libraryRAW", "ARD00referenceRAW1" "functional"
module ARD00referenceRAW1 ( V, en, G, Gs, refok, IP, trimBG, TAO_BG, ten_bg,
VBG, IPr4, ten_ref, TAO_REF, REF, REFI, REFFB );
output IPr4;
output VBG;
input V;
output TAO_BG;
input [6:0] trimBG;
input REFFB;
input REFI;
output refok;
input ten_ref;
input IP;
output REF;
output TAO_REF;
input ten_bg;
input Gs;
input G;
input en;
endmodule

//Ardelve Labs Confidental
//RAW Generator Rev0p1
//Verilog HDL for "VIS015libraryRAW", "ARD00referenceRAW2" "functional"
module ARD00referenceRAW2 ( V, G, R, trimREF );
input [4:0] trimREF;
input V;
inout [5:0] R;
input G;
endmodule

//Ardelve Labs Confidental
//RAW Generator Rev0p1
//Verilog-AMS HDL for "Ardelve_ANA_Cells", "ARD00refCCP" "verilogams"
module ARD00refCCP ( V, G, Gs, ICCP, VBG, ten_ccp, TAO_ICCP, trimCCP, en );
input VBG;
input V;
input [3:0] trimCCP;
output TAO_ICCP;
input en;
input ten_ccp;
inout ICCP;
input Gs;
input G;
endmodule

module MS00tmadd4LSB4(TMA);
output [3:0] TMA;
endmodule

//Ardelve Labs Confidental
//RAW Generator Rev0p1
//Verilog HDL for "Ardelve_ANA_Cells", "ARD00refCCN" "functional"
module ARD00refCCN ( V, G, Gs, ICCN, VBG, ten_ccn, TAO_ICCN, trimCCN, IPr, en
);
input IPr;
input VBG;
input V;
inout ICCN;
input en;
input [3:0] trimCCN;
input ten_ccn;
input Gs;
input G;
output TAO_ICCN;
endmodule

module MS00tmadd4LSB6(TMA);
output [3:0] TMA;
endmodule

module rlpp2000rpo12p0u2p0u(ISO,RP,RN);
input ISO;
inout RP;
inout RN;
endmodule

module ref1 (REF,TAO_BG,TAO_REF,VBG,refok,G,Gs,IP,V,en,ten_bg,ten_ref,trimBG,trimREF);
input V;
input [4:0] trimREF;
input G;
input en;
input [6:0] trimBG;
input ten_ref;
input ten_bg;
input IP;
input Gs;
output TAO_REF;
output REF;
output VBG;
output TAO_BG;
output refok;

wire[4:0] trimREF;
wire[6:0] trimBG;

wire[5:0] R;

wire[3:0] trimCCP;

wire[3:0] TMACCP;

wire[3:0] trimCCN;

wire[3:0] TMACCN;

ARD00referenceRAW1 Xraw1(
.V (V),
.en (en),
.IP (IP),
.REFI (R[5]),
.REFFB (REF),
.ten_bg (ten_bg),
.ten_ref (ten_ref),
.trimBG (trimBG[6:0]),
.Gs (Gs),
.G (G),
.REF (REF),
.refok (refok),
.VBG (VBG),
.IPr4 (IPr4),
.TAO_BG (TAO_BG),
.TAO_REF (TAO_REF)
);

ARD00referenceRAW2 Xraw2(
.V (V),
.trimREF (trimREF[4:0]),
.G (G),
.R (R[5:0])
);

ARD00refCCP Xccp(
.V (V),
.en (en),
.VBG (VBG),
.ten_ccp (G),
.trimCCP (TMACCP[3:0]),
.Gs (Gs),
.G (G),
.ICCP (ICC),
.TAO_ICCP (TAO_ICCP)
);

MS00tmadd4LSB4 XaddCCP(
.TMA (TMACCP[3:0])
);

ARD00refCCN Xccn(
.V (V),
.en (en),
.VBG (VBG),
.IPr (IPr4),
.ten_ccn (G),
.trimCCN (TMACCN[3:0]),
.Gs (Gs),
.G (G),
.ICCN (ICC),
.TAO_ICCN (TAO_ICCN)
);
MS00tmadd4LSB6 XaddCCN(
.TMA (TMACCN[3:0])
);

rlpp2000rpo12p0u2p0u XREFin_0(
.RP (VBG),
.RN (VBG_1),
.ISO (G)
);
rlpp2000rpo12p0u2p0u XREFin_1(
.RP (VBG_1),
.RN (VBG_2),
.ISO (G)
);
rlpp2000rpo12p0u2p0u XREFin_2(
.RP (VBG_2),
.RN (VBG_3),
.ISO (G)
);
rlpp2000rpo12p0u2p0u XREFin_3(
.RP (VBG_3),
.RN (VBG_4),
.ISO (G)
);
rlpp2000rpo12p0u2p0u XREFin_4(
.RP (VBG_4),
.RN (VBG_5),
.ISO (G)
);
rlpp2000rpo12p0u2p0u XREFin_5(
.RP (VBG_5),
.RN (VBG_6),
.ISO (G)
);
rlpp2000rpo12p0u2p0u XREFin_6(
.RP (VBG_6),
.RN (VBG_7),
.ISO (G)
);
rlpp2000rpo12p0u2p0u XREFin_7(
.RP (VBG_7),
.RN (VBG_8),
.ISO (G)
);
rlpp2000rpo12p0u2p0u XREFin_8(
.RP (VBG_8),
.RN (VBG_9),
.ISO (G)
);
rlpp2000rpo12p0u2p0u XREFin_9(
.RP (VBG_9),
.RN (VBG_10),
.ISO (G)
);
rlpp2000rpo12p0u2p0u XREFin_10(
.RP (VBG_10),
.RN (VBG_11),
.ISO (G)
);
rlpp2000rpo12p0u2p0u XREFin_11(
.RP (VBG_11),
.RN (VBG_12),
.ISO (G)
);
rlpp2000rpo12p0u2p0u XREFin_12(
.RP (VBG_12),
.RN (VBG_13),
.ISO (G)
);
rlpp2000rpo12p0u2p0u XREFin_13(
.RP (VBG_13),
.RN (VBG_14),
.ISO (G)
);
rlpp2000rpo12p0u2p0u XREFin_14(
.RP (VBG_14),
.RN (VBG_15),
.ISO (G)
);
rlpp2000rpo12p0u2p0u XREFin_15(
.RP (VBG_15),
.RN (VBG_16),
.ISO (G)
);
rlpp2000rpo12p0u2p0u XREFin_16(
.RP (VBG_16),
.RN (VBG_17),
.ISO (G)
);
rlpp2000rpo12p0u2p0u XREFin_17(
.RP (VBG_17),
.RN (VBG_18),
.ISO (G)
);
rlpp2000rpo12p0u2p0u XREFin_18(
.RP (VBG_18),
.RN (VBG_A),
.ISO (G)
);
rlpp2000rpo12p0u2p0u XREFin_19(
.RP (VBG_A),
.RN (R[0]),
.ISO (G)
);
rlpp2000rpo12p0u2p0u XREFin_20(
.RP (VBG_A),
.RN (R[0]),
.ISO (G)
);
rlpp2000rpo12p0u2p0u XREFin_21(
.RP (VBG_A),
.RN (R[0]),
.ISO (G)
);
rlpp2000rpo12p0u2p0u XREFin_22(
.RP (VBG_A),
.RN (R[0]),
.ISO (G)
);
rlpp2000rpo12p0u2p0u XREFin_23(
.RP (VBG_A),
.RN (R[0]),
.ISO (G)
);
rlpp2000rpo12p0u2p0u XREFin_24(
.RP (VBG_A),
.RN (R[0]),
.ISO (G)
);
rlpp2000rpo12p0u2p0u XREFin_25(
.RP (VBG_A),
.RN (R[0]),
.ISO (G)
);
rlpp2000rpo12p0u2p0u XREFin_26(
.RP (VBG_A),
.RN (R[0]),
.ISO (G)
);
rlpp2000rpo12p0u2p0u XREF0_0(
.RP (R[0]),
.RN (R0_A),
.ISO (G)
);
rlpp2000rpo12p0u2p0u XREF0_1(
.RP (R0_A),
.RN (R[1]),
.ISO (G)
);
rlpp2000rpo12p0u2p0u XREF0_2(
.RP (R0_A),
.RN (R[1]),
.ISO (G)
);
rlpp2000rpo12p0u2p0u XREF1_0(
.RP (R[1]),
.RN (R[2]),
.ISO (G)
);
rlpp2000rpo12p0u2p0u XREF2_0(
.RP (R[2]),
.RN (R[3]),
.ISO (G)
);
rlpp2000rpo12p0u2p0u XREF2_1(
.RP (R[2]),
.RN (R[3]),
.ISO (G)
);
rlpp2000rpo12p0u2p0u XREF3_0(
.RP (R[3]),
.RN (R[4]),
.ISO (G)
);
rlpp2000rpo12p0u2p0u XREF3_1(
.RP (R[3]),
.RN (R[4]),
.ISO (G)
);
rlpp2000rpo12p0u2p0u XREF3_2(
.RP (R[3]),
.RN (R[4]),
.ISO (G)
);
rlpp2000rpo12p0u2p0u XREF3_3(
.RP (R[3]),
.RN (R[4]),
.ISO (G)
);
rlpp2000rpo12p0u2p0u XREF4_0(
.RP (R[4]),
.RN (R[5]),
.ISO (G)
);
rlpp2000rpo12p0u2p0u XREF4_1(
.RP (R[4]),
.RN (R[5]),
.ISO (G)
);
rlpp2000rpo12p0u2p0u XREF4_2(
.RP (R[4]),
.RN (R[5]),
.ISO (G)
);
rlpp2000rpo12p0u2p0u XREF4_3(
.RP (R[4]),
.RN (R[5]),
.ISO (G)
);
rlpp2000rpo12p0u2p0u XREF4_4(
.RP (R[4]),
.RN (R[5]),
.ISO (G)
);
rlpp2000rpo12p0u2p0u XREF4_5(
.RP (R[4]),
.RN (R[5]),
.ISO (G)
);
rlpp2000rpo12p0u2p0u XREF4_6(
.RP (R[4]),
.RN (R[5]),
.ISO (G)
);
rlpp2000rpo12p0u2p0u XREF4_7(
.RP (R[4]),
.RN (R[5]),
.ISO (G)
);
rlpp2000rpo12p0u2p0u XREF5_0(
.RP (R[5]),
.RN (R5_1),
.ISO (G)
);
rlpp2000rpo12p0u2p0u XREF5_1(
.RP (R5_1),
.RN (R5_2),
.ISO (G)
);
rlpp2000rpo12p0u2p0u XREF5_2(
.RP (R5_2),
.RN (R5_3),
.ISO (G)
);
rlpp2000rpo12p0u2p0u XREF5_3(
.RP (R5_3),
.RN (R5_4),
.ISO (G)
);
rlpp2000rpo12p0u2p0u XREF5_4(
.RP (R5_4),
.RN (R5_5),
.ISO (G)
);
rlpp2000rpo12p0u2p0u XREF5_5(
.RP (R5_5),
.RN (R5_6),
.ISO (G)
);
rlpp2000rpo12p0u2p0u XREF5_6(
.RP (R5_6),
.RN (R5_7),
.ISO (G)
);
rlpp2000rpo12p0u2p0u XREF5_7(
.RP (R5_7),
.RN (R5_8),
.ISO (G)
);
rlpp2000rpo12p0u2p0u XREF5_8(
.RP (R5_8),
.RN (R5_9),
.ISO (G)
);
rlpp2000rpo12p0u2p0u XREF5_9(
.RP (R5_9),
.RN (R5_10),
.ISO (G)
);
rlpp2000rpo12p0u2p0u XREF5_10(
.RP (R5_10),
.RN (R5_11),
.ISO (G)
);
rlpp2000rpo12p0u2p0u XREF5_11(
.RP (R5_11),
.RN (R5_12),
.ISO (G)
);
rlpp2000rpo12p0u2p0u XREF5_12(
.RP (R5_12),
.RN (R5_13),
.ISO (G)
);
rlpp2000rpo12p0u2p0u XREF5_13(
.RP (R5_13),
.RN (R5_14),
.ISO (G)
);
rlpp2000rpo12p0u2p0u XREF5_14(
.RP (R5_14),
.RN (R5_15),
.ISO (G)
);
rlpp2000rpo12p0u2p0u XREF5_15(
.RP (R5_15),
.RN (R5_16),
.ISO (G)
);
rlpp2000rpo12p0u2p0u XREF5_16(
.RP (R5_16),
.RN (R5_17),
.ISO (G)
);
rlpp2000rpo12p0u2p0u XREF5_17(
.RP (R5_17),
.RN (R5_18),
.ISO (G)
);
rlpp2000rpo12p0u2p0u XREF5_18(
.RP (R5_18),
.RN (R5_19),
.ISO (G)
);
rlpp2000rpo12p0u2p0u XREF5_19(
.RP (R5_19),
.RN (R5_20),
.ISO (G)
);
rlpp2000rpo12p0u2p0u XREF5_20(
.RP (R5_20),
.RN (R5_21),
.ISO (G)
);
rlpp2000rpo12p0u2p0u XREF5_21(
.RP (R5_21),
.RN (R5_22),
.ISO (G)
);
rlpp2000rpo12p0u2p0u XREF5_22(
.RP (R5_22),
.RN (R5_23),
.ISO (G)
);
rlpp2000rpo12p0u2p0u XREF5_23(
.RP (R5_23),
.RN (R5_24),
.ISO (G)
);
rlpp2000rpo12p0u2p0u XREF5_24(
.RP (R5_24),
.RN (R5_25),
.ISO (G)
);
rlpp2000rpo12p0u2p0u XREF5_25(
.RP (R5_25),
.RN (R5_26),
.ISO (G)
);
rlpp2000rpo12p0u2p0u XREF5_26(
.RP (R5_26),
.RN (R5_27),
.ISO (G)
);
rlpp2000rpo12p0u2p0u XREF5_27(
.RP (R5_27),
.RN (R5_28),
.ISO (G)
);
rlpp2000rpo12p0u2p0u XREF5_28(
.RP (R5_28),
.RN (R5_29),
.ISO (G)
);
rlpp2000rpo12p0u2p0u XREF5_29(
.RP (R5_29),
.RN (R5_30),
.ISO (G)
);
rlpp2000rpo12p0u2p0u XREF5_30(
.RP (R5_30),
.RN (R5_31),
.ISO (G)
);
rlpp2000rpo12p0u2p0u XREF5_31(
.RP (R5_31),
.RN (R5_32),
.ISO (G)
);
rlpp2000rpo12p0u2p0u XREF5_32(
.RP (R5_32),
.RN (R5_33),
.ISO (G)
);
rlpp2000rpo12p0u2p0u XREF5_33(
.RP (R5_33),
.RN (R5_34),
.ISO (G)
);
rlpp2000rpo12p0u2p0u XREF5_34(
.RP (R5_34),
.RN (R5_35),
.ISO (G)
);
rlpp2000rpo12p0u2p0u XREF5_35(
.RP (R5_35),
.RN (R5_36),
.ISO (G)
);
rlpp2000rpo12p0u2p0u XREF5_36(
.RP (R5_36),
.RN (R5_37),
.ISO (G)
);
rlpp2000rpo12p0u2p0u XREF5_37(
.RP (R5_37),
.RN (R5_38),
.ISO (G)
);
rlpp2000rpo12p0u2p0u XREF5_38(
.RP (R5_38),
.RN (ICC),
.ISO (G)
);
rlpp2000rpo12p0u2p0u XREFcc_0(
.RP (ICC),
.RN (Gs),
.ISO (G)
);
//Ardelve Confidential - Connection Configuration
//Ardelve Schematic Generator Rev0p1
endmodule
