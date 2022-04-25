//-----------------------------------------------------------------------------
// Title         : single_pulser - detects a rising edge and outputs a single pulse
// Project       : ECE 211 Digital Circuits 1
//-----------------------------------------------------------------------------
// File          : single_pulser.sv

//-----------------------------------------------------------------------------
// Description :
// This circuit detects a rising edge on the input din.  WHen the rising edge occurs, 
// it outputs a single pulse one clock period in length.  It is based on the
// single pulser circuit described in Prosser & Winkel's book "The Art of Digital Design
//-----------------------------------------------------------------------------
// Modification history :
//-----------------------------------------------------------------------------

module single_pulser(input logic clk, din, output logic d_pulse);
   logic dq1, dq2;

   always_ff @(posedge clk)
     begin
	   dq1 <= din;
	   dq2 <= dq1;
     end

   assign d_pulse = dq1 & ~dq2;
endmodule // single_pulser
