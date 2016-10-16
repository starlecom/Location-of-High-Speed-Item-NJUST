`timescale 1ps/1ps
module ChipA(
	input [63:0] Lsignal,
	input [7:0]	 address,
	output [7:0] dataout,
	output cs,
	output cs_led
);

parameter NO = 3'b0;
assign cs_led = ~ cs;
assign cs = ~& Lsignal;
reg [7:0] data;

assign dataout = address[7:5] == NO ? data : 8'bz;

always@(address,Lsignal)
begin
	case (address[2:0])
	0: data <= Lsignal[7:0];
	1: data <= Lsignal[15:8];
	2: data <= Lsignal[23:16];
	3: data <= Lsignal[31:24];
	4: data <= Lsignal[39:32];
	5: data <= Lsignal[47:40];
	6: data <= Lsignal[55:48];
	7: data <= Lsignal[63:56];
	default: data <= 8'bzzzz_zzzz;
	endcase
end
endmodule
