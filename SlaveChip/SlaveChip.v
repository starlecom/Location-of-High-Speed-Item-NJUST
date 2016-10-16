`timescale 1ps/1ps
module SlaveChip(
	input [63:0] Lsignalin,
	input [7:0]	 address,
	input clkin,
	output [7:0] dataout,
	output cs,
	output enwipeout
);

reg enwipe = 1'b1;
reg [63:0] LsignalNow=64'b0;
parameter NO = 3'b0;
reg [7:0] data;
reg csreg=1'b0;
assign enwipeout = enwipe;
assign cs = csreg;
assign dataout = address[7:5] == NO ? data : 8'bz;
reg [63:0] Ldiff;
integer num;
integer i;
always@(posedge clkin)
begin
	case(enwipe)
	1'd1:	begin
			num = 0;
			Ldiff = LsignalNow ^ Lsignalin;
			for(i=0;i < 64;i=i+1)
				if(Ldiff[i]==1'b1) begin num = num + 1; end
			if((num > 4) && (~&Lsignalin))
				begin
					LsignalNow <= Lsignalin;
					enwipe <= 1'b0;
				end
			end
	1'd0:	begin
				if(address == 8'b1111_1111)  begin csreg<=1'b0; enwipe <= 1'b1;  end
				else
				begin
				csreg<=1'b1;
				case (address[2:0])
					0: data <= LsignalNow[7:0];
					1: data <= LsignalNow[15:8];
					2: data <= LsignalNow[23:16];
					3: data <= LsignalNow[31:24];
					4: data <= LsignalNow[39:32];
					5: data <= LsignalNow[47:40];
					6: data <= LsignalNow[55:48];
					7: data <= LsignalNow[63:56];
					default: data <= 8'bzzzz_zzzz;
				endcase
				end
			end
	endcase
end

endmodule