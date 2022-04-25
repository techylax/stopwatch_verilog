`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/07/2022 09:02:51 AM
// Design Name: 
// Module Name: stopwatch_fsm
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


module stopwatch_fsm(input logic ststop, 
                     input logic clk, 
                     input logic reset, 
                     output logic run);

           
  typedef enum logic [1:0] {
		START = 2'b00,
		STOP = 2'b01
  } state_t;
  
  state_t p_s, n_s;
  
    always_ff @(posedge clk)
    begin
      if (reset) 
      p_s <= START;
      else p_s <= n_s;
    end

  always_comb
    begin

       case (p_s)
        START:
         begin
         run  = 1;
            if(ststop == 1)
                n_s = STOP;
            else
                 n_s = START;            
         end
        STOP:
        begin
            run = 0;
            if(ststop == 1 )
            n_s = START;
            else
            n_s = STOP;
          end
        default:
            begin
                run = 0;
                n_s = START;
             end
		
      endcase
  end

endmodule
