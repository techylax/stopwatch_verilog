//-----------------------------------------------------------------------------
// Title         : counter - simple 4-bit binary counter
// Project       : ECE 211 - Digital Circuits 1
//-----------------------------------------------------------------------------
// File          : counter_bcd.sv
//-----------------------------------------------------------------------------
// Description :
// This module is a simple 4-bit counter that you will extend in Lab
//
//-----------------------------------------------------------------------------
module counter_bcd(input logic clk, rst, enb,
	       output logic [3:0] q,
	       output logic 	  carry);

assign carry = (q == 4'd9) && enb;

  always_ff @( posedge clk )
    begin
       if (rst || carry) q <= 0;
       else if (enb) q <= q + 1;
    end

endmodule // counter

