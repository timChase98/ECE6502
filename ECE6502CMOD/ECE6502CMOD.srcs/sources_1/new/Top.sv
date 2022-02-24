`timescale 1ns / 1ps

module Top(
	input logic clk12Mhz,
	input logic [1:0] btns,
	input logic [15:0] address,
	inout logic [7:0] data,
	input logic sync,
	input logic rw,
	input logic uartRX,
	output logic uartTX,
	output logic [1:0] leds,
	output logic [2:0] rgbLed,
	output logic phi2_out,
	output logic eprom_csb
	);
	
	logic clk100Mhz;
	logic clk25Mhz;
	logic clk8Mhz; 
	logic [23:0] clkDiv; // at 8 Mhz 24 bits should divide down to 0.5Hz
	logic phi2;
	logic [1:0] debounced;
	logic clkFreeRun; // select between free running clock and single step clock 

	assign phi2 = (clkDiv[22] & clkFreeRun) | (debounced[1] & ~clkFreeRun);
	assign rgbLed = 3'H7;
	assign leds = {phi2, clkFreeRun};
	assign phi2_out = phi2; 

	assign data = 8'HZZ;

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

	assign eprom_csb = 1'b0; 


	logic uartClk;
	logic uartBusy;

	logic [7:0] fifoDI;
	logic fifoRL;
	logic fifoWL;
	logic [7:0] fifoDO;
	logic fifoE;
	logic fifoF;

	logic [3:0] debugCounter;
	logic [7:0] debugData [0:31];

	UartController uc (clkDiv[2], uartRX, fifoDO, fifoE, fifoRL, uartTX, uartBusy);
	Fifo fifo (fifoDI, fifoRL, fifoWL, fifoDO, fifoE, fifoF);

   	always @(posedge phi2) begin // trigger for start debug logic 
		debugData[0] = sync ? "F" : " ";
		debugData[1] = ":";
		debugData[2] = address[15:12] + "0";
		debugData[3] = address[11:8] + "0";
		debugData[4] = address[7:4] + "0";
		debugData[5] = address[3:0] + "0";
		debugData[6] = " ";
		debugData[7] = rw ? "R" : "W";
		debugData[8] = " ";
		debugData[9] = address[7:4] + "0";
		debugData[10] = address[3:0] + "0";
		debugData[11] = "\n";
	end
   
	always @(posedge clk25Mhz) begin // dump debug data into fifo
		if (phi2) begin
			debugCounter = 0;
		end
		else if (debugCounter < 12 && fifoWL == 1'b0) begin
			debugCounter += 1;
			fifoDI = debugData[debugCounter];
			fifoWL = 1'b1;
		end
		else begin
			fifoWL = 1'b0;
		end
	end

endmodule
