`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/07/2022 08:37:31 AM
// Design Name: 
// Module Name: lab10_top
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


module lab10_top(input logic clk_100MHz,
                input logic reset,
                input logic startstop,
                input logic lap_time, 
                output logic [7:0] an_1,
                output logic [6:0] segs_1
                );
               
                logic clk_1KHz;
                logic run_deb;
                logic run2;
                logic run3;
                logic [3:0] d1,d2,d3,d4,d5,d6,d7,d8;
                logic lap_deb;
                logic lap_pulse;


    clkdiv #(.DIVFREQ(1000)) U_CLKDIV( .clk(clk_100MHz), .reset(reset), .sclk(clk_1KHz) );
    
    debounce U_INST1 (.clk(clk_1KHz), .pb(startstop),.pb_debounced(run_deb));
    
    single_pulser U_INST4 (.clk(clk_1KHz), .din(run_deb), .d_pulse(run2) );
    debounce U_INST2 (.clk(clk_100MHz), .pb(lap_time),.pb_debounced(lap_deb));
    single_pulser U_INST7 (.clk(clk_1KHz), .din(lap_deb), .d_pulse(lap_pulse) );
    
    
    stopwatch_fsm U_INST5 (.clk(clk_1KHz), .reset(reset), .ststop(run2), .run(run3));
    multiple_bcd U_INST6 (.clk(clk_1KHz), .en(run3), .reset(reset), .d1(d1), .d2(d2), .d3(d3), .d4(d4));
    sevenseg_control U_INST3(.clk(clk_1KHz), .rst(reset), .d0(d1), .d1(d2), .d2(d3), .d3(d4), .d4(d5), .d5(d6), .d6(d7), .d7(d8), .an_1(an_1), .segs_1(segs_1)  );
    
    register U_INST8 (.clk(clk_1KHz), .d(d1), .en(lap_pulse), .q(d5));
    register U_INST9 (.clk(clk_1KHz), .d(d2), .en(lap_pulse), .q(d6));
    register U_INST10 (.clk(clk_1KHz), .d(d3), .en(lap_pulse), .q(d7));
    register U_INST11 (.clk(clk_1KHz), .d(d4), .en(lap_pulse), .q(d8));


    
    


    
endmodule

