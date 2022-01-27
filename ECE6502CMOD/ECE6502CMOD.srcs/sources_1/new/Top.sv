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
	output logic phi2_out
	);
	
	logic clk100Mhz;
	logic clk25Mhz;
	logic clk8Mhz; // 8Mhz is actually 2^23Hz ~= 8.59Mhz
	logic [23:0] clkDiv; // at 8 Mhz 24 bits should divide down to 0.5Hz
	logic phi2;
	logic [1:0] debounced;
	logic clkFreeRun; // select between free running clock and single step clock 

	assign phi2 = (clkDiv[22] & clkFreeRun) | (debounced[1] & ~clkFreeRun);
	assign rgbLed = 3'H7;
	assign leds = {phi2, clkFreeRun};
	assign phi2_out = phi2; 

	SwitchDebounce sd0 (
		.clk_4Hz(clkDiv[19]),
		.btn(btns[0]),
		.debounced(debounced[0])
	);
	SwitchDebounce sd1 (
		.clk_4Hz(clkDiv[19]),
		.btn(btns[1]),
		.debounced(debounced[1])
	);


	clk_wiz_0 cg (  
		.clk_in1(clk12Mhz),
		.reset(1'b0),
		.clk100Mhz(clk100Mhz),
		.clk25Mhz(clk25Mhz),
		.clk8Mhz(clk8Mhz)
	);

	always @(posedge clk8Mhz) begin
		// clockDiv[0] = 8Mhz, clockDiv[22] = 1Hz, clkDiv[23] = 0.5Hz
		clkDiv += 1;
	end
	
   always @(posedge debounced[0]) begin
       clkFreeRun = ~clkFreeRun;
   end
   
endmodule
