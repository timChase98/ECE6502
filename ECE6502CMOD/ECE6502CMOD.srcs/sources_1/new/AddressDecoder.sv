`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/02/2022 12:33:09 PM
// Design Name: 
// Module Name: AddressDecoder
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


module AddressDecoder(
    input logic [15:0] addr,
    output logic eeprom,
    output logic via
    );
    
    logic [2:0] decoder;
    
    assign {eeprom, via} = ~decoder[2:0];
    
    localparam [2:0]
        EEPROM = 2'b10,
        VIA = 2'b01;
    
    always_comb begin
        case(addr) inside
        [16'H8000:16'HFFFF] : decoder = EEPROM;
        [16'H4000:16'H4010] : decoder = VIA;
        default: decoder = 2'b00;  
        endcase
    end
endmodule
