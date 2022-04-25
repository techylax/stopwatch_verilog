`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/13/2022 03:44:39 PM
// Design Name: 
// Module Name: multiple_bcd_tb
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


module multiple_bcd_tb;
            logic en, reset,clk;
            logic [3:0] d1,d2,d3,d4;   
            logic carry, carry1, carry2;

            
            multiple_bcd DUV( .en(en), .reset(reset), .clk(clk), .d1(d1), .d2(d2), .d3(d3), .d4(d4));   
            //, .carry(carry), .carry1(carry1), .carry2(carry2)

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
     en = 1;
     reset = 0;

    repeat (3) @(posedge clk); #1;
   
     reset = 0;
                          
    repeat (10000) @(posedge clk); #1;      
      
     reset = 0;
                                                                           
$stop;   
end 


endmodule



