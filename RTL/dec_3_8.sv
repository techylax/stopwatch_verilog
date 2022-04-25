`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/07/2022 09:50:33 AM
// Design Name: 
// Module Name: dec_3_8
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


module dec_3_8(input logic [2:0] a,
output logic [7:0] y_1);

logic [7:0]y;
always_comb
    begin
        case (a)
        3'd0: y = 8'b00000001;
        3'd1: y = 8'b00000010;
        3'd2: y = 8'b00000100;
        3'd3: y = 8'b00001000;
        3'd4: y = 8'b00010000;
        3'd5: y = 8'b00100000;
        3'd6: y = 8'b01000000;
        3'd7: y = 8'b10000000;
    
        default: y = 4'b00000000;
        endcase
    end 
  assign y_1=~y;
endmodule
