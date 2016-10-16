`timescale 1ps/1ps
module topdesign(
	input [63:0] Lsignalin,
	input [7:0]	address,
	input clkin,
	output [7:0] dataout,
	output cs,
	output cs_led,
	output enwipe_led
);
wire enwipe;
assign cs_led = ~ cs;
assign enwipe_led = ~ enwipe;

SlaveChip U0(
	.Lsignalin(Lsignalin),
	.address(address),
	.dataout(dataout),
	.clkin(clkin),
	.cs(cs),
	.enwipeout(enwipe)
);

endmodule