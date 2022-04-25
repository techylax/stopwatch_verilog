`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/07/2022 09:53:44 AM
// Design Name: 
// Module Name: count_3bit
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


module count_3bit ( input logic clk, rst, 
                     output logic [2:0]q ); //declare inputs and outputs
  
    always_ff @ (posedge clk)  //initialize clock
        if (rst) q <= 3'd0;    //Condition 1: Check if reset is positive, it will return 3'd0
         else q <= q + 3'd1;   //else it will return 3'd1

endmodule 

