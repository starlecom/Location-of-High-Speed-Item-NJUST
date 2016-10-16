`timescale 1ns / 1ps

module MasterCHIP(
	clkin,
	send_req,
	fifo_arst,
	control_nrst,
//	cs,
    acs,
	datain,
	fifo_full,
	fifo_empty,
	address,
//	fifoout,
	tx,
	tx_busy
	//send_data
);
input wire control_nrst;
input wire  clkin;
input wire send_req;
input wire	fifo_arst;
input wire	[1:0] acs;
wire [7:0] cs;
assign cs = {6'b000000,acs[1:0]};
input wire	[7:0] datain;
output wire	fifo_full;
output wire	fifo_empty;
output wire	[7:0] address;
//output wire	[7:0] fifoout;
output wire tx;
wire [7:0] send_data;
(*mark_debug = "true"*)wire	[7:0] fifoin;
wire	[1:0] mode;
wire	[2:0] num;
wire	wrreq;
wire  rdreq;
output wire  tx_busy;
wire 	send_trig;
//output wire 	[7:0] send_data;
wire gnd;
wire vcc;
wire [7:0]fifoout;
wire uart_rstn;
wire uartclk;
wire fifoclk;
 //address[7:0] = {gettrig[7:5],ad[2:0]}
assign gnd =1'b0;
assign vcc =1'b1;
DSM	Udsm(
	.cs(cs),
	.mode(mode),
	.num(num)
	);
frevDiv UfreqDiv(
       .clkin(clkin),
       .clkdiv4(uartclk),
       .clkdiv2(fifoclk)
        );

FIFO Ufifo(
    .clkin(~fifoclk),
    .srst(fifo_arst),
    .datain(fifoin),
    .wr_en(wrreq),
    .rd_en(rdreq),
    .dataout(fifoout),
    .full(fifo_full),
    .empty(fifo_empty)
    );

ControlUnit	Ucontrol(
	.clkin(fifoclk),
	.nrst(control_nrst),
	.datain(datain),
	.mode(mode),
	.num(num),
	.wrreq(wrreq),
	.address(address),
	.data(fifoin)
	);
	
uartone uartControl(
	.clkin(clkin),
	.send_req(send_req),
	.tx_busy(tx_busy),
	.fifodata(fifoout),
	.fifoempty(fifo_empty),
	.send_trig(send_trig),
	.uart_rstn(uart_rstn),
	.rdreq(rdreq),
	.send_data(send_data)
	);
	
uart_tx_2 uart_tx(
	.clk(uartclk),
	.rstn(uart_rstn),
	.send_trig(send_trig),
	.send_data(send_data),
	.tx(tx),
	.tx_bsy(tx_busy)
	);
endmodule
