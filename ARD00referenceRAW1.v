//Verilog HDL for "VIS015libraryRAW", "ARD00referenceRAW1" "functional"


module ARD00referenceRAW1 ( V, en, G, Gs, refok, IP, trimBG, TAO_BG, ten_bg,
VBG, IPr4, ten_ref, TAO_REF, REF, REFI, REFFB );

  output IPr4;
  output VBG;
  input V;
  output TAO_BG;
  input  [6:0] trimBG;
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
