`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2016/08/31 10:41:11
// Design Name: 
// Module Name: design
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


module topdesign(
    input wire clkin,
    input wire key1,
    input wire key2,
    input wire key3,
    input wire send_req,
    output wire tx,
    output wire tx_equ,
    output wire fifo_empty,
    output wire fifo_full,
    output wire tx_busy,
    input wire [7:0] dataBus,
    output wire [7:0] addressBus,
    output wire clkout
    );
    wire gnd;
    wire vcc;
    assign clkout=clkin;
    (*mark_debug = "true"*) wire [1:0]acs= {key1,key2};
    assign tx_equ=tx;
    assign gnd =1'b0;
    assign vcc =1'b1;
    
  MasterCHIP Um(
        .clkin(clkin),
        .send_req(send_req),
        .fifo_arst(key3),
        .control_nrst(vcc),
    //    cs,
       .acs(acs),
        .datain(dataBus),
        .fifo_full(fifo_full),
        .fifo_empty(fifo_empty),
        .address(addressBus),
      //  .fifoout(),
        .tx(tx),
        .tx_busy(tx_busy)
     //   .send_data(send_data)
    );

endmodule
