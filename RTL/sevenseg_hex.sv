`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/07/2022 09:46:11 AM
// Design Name: 
// Module Name: sevenseg_hex
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

module sevenseg_hex(input logic [3:0] data,
output logic [6:0] segs_1);

always_comb
    begin
        case (data)

    4'd0: segs_1 = 7'b0000001;
    4'd1: segs_1 = 7'b1001111;
    4'd2: segs_1 = 7'b0010010;
    4'd3: segs_1 = 7'b0000110;
    4'd4: segs_1 = 7'b1001100;
    4'd5: segs_1 = 7'b0100100;
    4'd6: segs_1 = 7'b0100000;
    4'd7: segs_1 = 7'b0001111;
    4'd8: segs_1 = 7'b0000000;
    4'd9: segs_1 = 7'b0001100;
    4'd10: segs_1 = 7'b0001000;
    4'd11: segs_1 = 7'b1100000;
    4'd12: segs_1 = 7'b1110010;
    4'd13: segs_1 = 7'b1000010;
    4'd14: segs_1 = 7'b0110000;
    4'd15: segs_1 = 7'b0111000;
    
    default: segs_1 = 7'b0000000;
        endcase
    end


endmodule