`timescale 1ns / 1ps

module Fifo(
    input logic [7:0] dataIn,
    input logic readLatch,
    input logic writeLatch,
    output logic [7:0] dataOut,
    output logic empty,
    output logic full
    );

	logic [7:0] mem [0:31];
	logic [4:0] writePtr;
	logic [4:0] readPtr;
	logic [4:0] nextWritePtr;

	initial begin
		writePtr = 5'H1F;
		readPtr = 5'H00;
		for (logic [4:0] i = 0; i < 31; i++) begin
			mem[i] = 8'H41 + i;
		end
	end

	assign nextWritePtr = writePtr + 1'b1;
	assign empty = (readPtr == writePtr) ? 1'b1 : 1'b0;
	assign full = (nextWritePtr == readPtr) ? 1'b1 : 1'b0;

	assign dataOut = mem[readPtr];


	always @ (negedge readLatch) begin
		if (!empty) begin
			readPtr <= readPtr + 1;
		end
	end

	always @ (posedge writeLatch) begin
		if (!full) begin
			mem[writePtr] <= dataIn;
			writePtr <= nextWritePtr;
		end
	end

endmodule