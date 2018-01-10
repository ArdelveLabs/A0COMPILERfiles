//Verilog HDL for "Ardelve_ANA_Cells", "ARD00refCCN" "functional"

module ARD00refCCN ( V, G, Gs, ICCN, VBG, ten_ccn, TAO_ICCN, trimCCN, IPr, en
);

  input IPr;
  input VBG;
  input V;
  inout ICCN;
  input en;
  input  [3:0] trimCCN;
  input ten_ccn;
  input Gs;
  input G;
  output TAO_ICCN;
endmodule
