`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/13/2022 04:07:56 PM
// Design Name: 
// Module Name: multiple_bcd1
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

module multiple_bcd1(input logic en, reset,clk,
                    output logic [3:0] d1,d2,d3,d4 
                    );
                    
                    logic carry;
                    logic carry1;
                    logic carry2;


counter_bcd M_INST1 (.rst(reset), .enb(en), .clk(clk), .q(d1), .carry(carry));
counter_bcd M_INST2 (.rst(reset), .enb(carry), .clk(clk), .q(d2), .carry(carry1));
counter_bcd M_INST3 (.rst(reset), .enb(carry1), .clk(clk), .q(d3), .carry(carry2));
counter_bcd M_INST4 (.rst(reset), .enb(carry2), .clk(clk), .q(d4));


endmodule
