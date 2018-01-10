//Verilog HDL for "VIS015libraryRAW", "ARD00timerclockRAW" "functional"


module ARD00timerclockRAW ( V, G, timerclock, trimTIMERCLOCK, tdo_timerclock,
timerclocken, ten_timerclock );

  output tdo_timerclock;
  output timerclock;
  input V;
  input  [3:0] trimTIMERCLOCK;
  input ten_timerclock;
  input timerclocken;
  input G;
endmodule
