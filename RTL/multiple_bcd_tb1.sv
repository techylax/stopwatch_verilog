`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/13/2022 04:10:45 PM
// Design Name: 
// Module Name: multiple_bcd_tb1
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


module multiple_bcd_tb1;
            logic en, reset,clk;
            logic [3:0] d1,d2,d3,d4;   
            logic carry;
            logic carry1;
            logic carry2;

            
            multiple_bcd_tb1 DUV( .en, .reset, .clk, .d1, .d2, .d3, .d4, .carry, .carry1, .carry2);   

parameter CLK_PD = 10;      
always 
  begin      
   clk = 1'b0; #(CLK_PD/2);      
   clk = 1'b1; #(CLK_PD/2);   
  end 
  
    initial begin      
    en = 0;      
    reset = 0;      
    clk = 0;
    @(posedge clk) #1;      
        reset=1;      
    repeat (2) @(posedge clk); #1;
     en = 0;
     reset = 1;
     clk = 0;
    repeat (3) @(posedge clk); #1;
      en = 1;
     reset = 1;
     clk = 0;                       
    repeat (4) @(posedge clk); #1;      
      en = 1;
     reset = 1;
     clk = 1;                                                                         
$stop;   
end 


endmodule
