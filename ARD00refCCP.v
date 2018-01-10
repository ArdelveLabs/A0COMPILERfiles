//Verilog-AMS HDL for "Ardelve_ANA_Cells", "ARD00refCCP" "verilogams"

module ARD00refCCP ( V, G, Gs, ICCP, VBG, ten_ccp, TAO_ICCP, trimCCP, en );

  input VBG;
  input V;
  input  [3:0] trimCCP;
  output TAO_ICCP;
  input en;
  input ten_ccp;
  inout ICCP;
  input Gs;
  input G;
endmodule
