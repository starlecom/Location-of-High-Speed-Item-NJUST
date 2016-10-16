`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2016/08/31 09:04:58
// Design Name: 
// Module Name: TOP
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


module FIFO(
    input wire clkin,
    input wire srst,
    input wire [7:0] datain,
    input wire wr_en,
    input wire rd_en,
    output wire [7:0] dataout,
    output wire full,
    output wire empty
    );
    
    fifo_generator_0 U0(
      .clk(clkin),
      .rst(srst),
      .din(datain),
      .wr_en(wr_en),
      .rd_en(rd_en),
      .dout(dataout),
      .full(full),
      .empty(empty)
    );
endmodule
