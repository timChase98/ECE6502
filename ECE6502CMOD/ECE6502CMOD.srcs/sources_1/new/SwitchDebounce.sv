`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/26/2022 10:16:29 AM
// Design Name: 
// Module Name: SwitchDebounce
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


module SwitchDebounce(
    input logic clk_4Hz,
    input logic btn,
    output logic debounced
    );

    logic q1, q2;

    assign debounced = q1 & ~q2;

    always @(posedge clk_4Hz) begin
        q1 <= btn;
        q2 <= q1;
    end

endmodule
