`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/13/2022 04:09:04 PM
// Design Name: 
// Module Name: counter_bcd1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////



module counter_bcd1(input logic clk, rst, enb,
	               output logic [3:0] q,
	           output logic 	  carry);

assign carry = (q == 4'd9) && enb;

  always_ff @( posedge clk )
    begin
       if (rst || carry) q <= 0;
       else if (enb) q <= q + 1;
    end

endmodule // counter

