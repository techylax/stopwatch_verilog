`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/13/2022 05:08:15 PM
// Design Name: 
// Module Name: stopwatch_fsm_tb
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


module stopwatch_fsm_tb;
            logic ststop, clk, reset;
            logic run;   
            
           stopwatch_fsm U_INST5( .ststop, .clk, .reset, .run);   

parameter CLK_PD = 10;      
always 
  begin      
   clk = 1'b0; #(CLK_PD/2);      
   clk = 1'b1; #(CLK_PD/2);   
  end 
  
    initial begin      
    ststop = 0;      
    clk = 0;      
    reset = 0;      
    @(posedge clk) #1;      
        reset=1;      
    repeat (2) @(posedge clk); #1;
        ststop = 0;
        clk = 1;
        reset = 0;
    repeat (3) @(posedge clk); #1;
        ststop = 1;
        clk = 0;
        reset = 0; 
    repeat (4) @(posedge clk); #1;      
        ststop = 0;
        clk = 0;
        reset = 1;  
$stop;   
end 


endmodule
