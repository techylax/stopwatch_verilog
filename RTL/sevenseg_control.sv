`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/07/2022 08:30:06 AM
// Design Name: 
// Module Name: sevenseg_control
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


module sevenseg_control(input logic [3:0] d0,d1,d2,d3,d4,d5,d6,d7, 
                        input logic clk, rst,
                        output logic [7:0] an_1,
                        output logic [6:0] segs_1
                   
                        );
                        
                        logic [2:0] q;
                        logic [3:0] y;

  count_3bit U_INST3 ( .clk(clk), .rst(rst), .q(q));
  mux_8_1 U_INST4 (.d0(d0), .d1(d1), .d2(d2), .d3(d3), .d4(d4), .d5(d5), .d6(d6), .d7(d7), .s(q), .y(y));
  dec_3_8 U_INST2 ( .a(q), .y_1(an_1) );
  sevenseg_hex U_INST1  ( .data(y), .segs_1(segs_1) );



   
endmodule
