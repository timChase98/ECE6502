`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/22/2022 07:42:54 PM
// Design Name: 
// Module Name: Top
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


module Top(
    input logic clk12Mhz,
    input logic [1:0] btns,
    output logic [1:0] leds,
    output logic [2:0] rgbLed,
    output logic phi2
    );
    
    logic clk100Mhz;
    logic clk25Mhz;

    assign rgbLed = 3'H7;
    assign leds = btns;
    
    clk_wiz_0 cg (  .clk_in1(clk12Mhz),
                    .reset(1'b0),
                    .clk100Mhz(clk100Mhz),
                    .clk25Mhz(clk25Mhz));
   
   
endmodule
