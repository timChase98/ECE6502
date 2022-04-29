`timescale 1ns / 1ps

module UartController(
	input logic clk,
    input logic rx,
	input logic [7:0] fifoData,
	input logic fifoEmpty,
	output logic fifoReadLatch,
    output logic tx,
	output logic busy
    );

	logic [7:0] dataShiftReg;
	logic [1:0] state;
	logic [2:0] shiftCounter;
	logic [1:0] donce;
	// start bit, data bits, stop bits, done
	parameter stb = 0, dbs = 1, spb = 2, dne= 3;

initial begin
	state = dne; 
	shiftCounter = 0;
end

    logic [2:0]shiftCountN;
    logic txN;
    
    assign shiftCountN = shiftCounter + 1;
    assign txN = dataShiftReg[shiftCounter];

    always @(posedge clk) begin
		case(state)
			stb:
				begin
					tx <= 1'b0; // low start bit
					state <= dbs;
					busy <= 1'b1;
					donce <= 1'b0;
					fifoReadLatch <= 1'b0;
					shiftCounter <= 0;
					dataShiftReg <= fifoData;
				end // start bit

			dbs:
				begin
					tx <= txN;
					shiftCounter <= shiftCountN;
					state <= shiftCounter == 3'H7 ? spb: dbs;
				end // data bits

			spb:
				begin
					tx <= 1'b1;
					state <= dne;
					donce <= 1'b0;
				end // stop bit

			dne:
				begin
					// there needs to be atleast 1 bit time between bytes for framing 
					if (donce >= 2'h3) begin
						state <= !fifoEmpty ? stb : dne;
					end
					tx <= 1'b1; // tx idles high
					busy <= 1'b0;
					donce += 1'b1;
					fifoReadLatch <= 1'b1;
				end // done
			default:
				state <= dne;
		endcase
    end
    

endmodule