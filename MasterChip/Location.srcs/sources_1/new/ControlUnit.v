module ControlUnit(
	input clkin,
	input nrst,
	input [2:0] num,
	input [1:0] mode,
	input [7:0] datain,
	output reg [7:0] data = 8'b0,
	output reg [7:0] address = 8'b0,
	output reg wrreq = 1'b0
);

parameter  d0=8'h0; 
parameter  d1=8'h1; 
parameter  d2=8'h2; 
parameter  d3=8'h3; 
parameter  d4=8'h4; 
parameter  d5=8'h5;
parameter  d6=8'h6;
parameter  d7=8'h7;
parameter  d00=8'h8; 
parameter  d01=8'h9; 
parameter  d10=8'ha; 
parameter  d11=8'hb; 
parameter  d20=8'hc; 
parameter  d21=8'hd; 
parameter  d30=8'he; 
parameter  d31=8'hf; 
parameter  d40=8'h10; 
parameter  d41=8'h11; 
parameter  d50=8'h12;
parameter  d51=8'h13;
parameter  d60=8'h14;
parameter  d61=8'h15;
parameter  d70=8'h16;
parameter  d71=8'h17;
parameter propertydata01=8'hfa;
parameter propertydata10=8'hfc;
parameter endsign01=8'hf8;
parameter endsign10=8'hff;
parameter nul=8'hf0;
parameter tofork=8'hf1;

reg [7:0] now,next = 8'hf0;


always@(posedge clkin or negedge nrst)
begin
	if(nrst == 1'b0)
		begin now <= nul; next <= nul; wrreq <= 1'b0; end
	else
	begin
	now = next; 
	begin
		case(now)
		propertydata01: begin address[7:5] <= num; address[2:0] <= 3'b000; data = {mode,3'b0,num}; wrreq <= 1'b1; next <= d0; end
		d0:		 begin address[7:5] <= num; address[2:0] <= 3'b001; data <= datain; wrreq <= 1'b1; next <= d1;end
		d1:		 begin address[7:5] <= num; address[2:0] <= 3'b010; data <= datain; wrreq <= 1'b1; next <= d2;end
		d2:		 begin address[7:5] <= num; address[2:0] <= 3'b011; data <= datain; wrreq <= 1'b1; next <= d3;end
		d3:		 begin address[7:5] <= num; address[2:0] <= 3'b100; data <= datain; wrreq <= 1'b1; next <= d4;end
		d4:		 begin address[7:5] <= num; address[2:0] <= 3'b101; data <= datain; wrreq <= 1'b1; next <= d5;end
		d5:		 begin address[7:5] <= num; address[2:0] <= 3'b110; data <= datain; wrreq <= 1'b1; next <= d6;end
		d6:		 begin address[7:5] <= num; address[2:0] <= 3'b111; data <= datain; wrreq <= 1'b1; next <= d7;end
		d7:		 begin address[7:5] <= num; address[2:0] <= 3'b000; data <= datain; wrreq <= 1'b1; next <= endsign01;end
		endsign01:  begin address[7:0] <= 8'b1111_1111; data <= 8'b01010101; wrreq <= 1'b1; next <= nul;end
		propertydata10: begin data <= {mode,3'b0,num}; wrreq <= 1'b1; next <= d00; end
		d00:		begin address[7:5] <= num - 3'b1;    address[2:0] <= 3'b000; data <= datain; wrreq <= 1'b1; next <= d01;end
		d01:		begin address[7:5] <= num ; 		 address[2:0] <= 3'b000; data <= datain; wrreq <= 1'b1; next <= d10;end
		d10:		begin address[7:5] <= num - 3'b1;    address[2:0] <= 3'b001; data <= datain; wrreq <= 1'b1; next <= d11;end
		d11:		begin address[7:5] <= num ; 		 address[2:0] <= 3'b001; data <= datain; wrreq <= 1'b1; next <= d20;end
		d20:		begin address[7:5] <= num - 3'b1; 	 address[2:0] <= 3'b010; data <= datain; wrreq <= 1'b1; next <= d21;end
		d21:		begin address[7:5] <= num ; 		 address[2:0] <= 3'b010; data <= datain; wrreq <= 1'b1; next <= d30;end
		d30:		begin address[7:5] <= num - 3'b1; 	 address[2:0] <= 3'b011; data <= datain; wrreq <= 1'b1; next <= d31;end
		d31:		begin address[7:5] <= num ; 		 address[2:0] <= 3'b011; data <= datain; wrreq <= 1'b1; next <= d40;end
		d40:		begin address[7:5] <= num - 3'b1; 	 address[2:0] <= 3'b100; data <= datain; wrreq <= 1'b1; next <= d41;end
		d41:		begin address[7:5] <= num ; 		 address[2:0] <= 3'b100; data <= datain; wrreq <= 1'b1; next <= d50;end
		d50:		begin address[7:5] <= num - 3'b1; 	 address[2:0] <= 3'b101; data <= datain; wrreq <= 1'b1; next <= d51;end
		d51:		begin address[7:5] <= num ; 		 address[2:0] <= 3'b101; data <= datain; wrreq <= 1'b1; next <= d60;end
		d60:		begin address[7:5] <= num - 3'b1; 	 address[2:0] <= 3'b110; data <= datain; wrreq <= 1'b1; next <= d61;end
		d61:		begin address[7:5] <= num ; 		 address[2:0] <= 3'b110; data <= datain; wrreq <= 1'b1; next <= d70;end
		d70:		begin address[7:5] <= num - 3'b1; 	 address[2:0] <= 3'b111; data <= datain; wrreq <= 1'b1; next <= d71;end
		d71:		begin address[7:5] <= num ; 		 address[2:0] <= 3'b111; data <= datain; wrreq <= 1'b1; next <= endsign10;end
		endsign10:   begin address[7:0] <= 8'b1111_1111; data <= 8'b10101010; wrreq <= 1'b1; next <= nul;end 
		nul:		 begin address[7:0] <= 8'b0010_0111; wrreq <= 1'b0; next <= tofork; end
		tofork:      begin next = (mode == 2'b01 ? propertydata01 : nul); next = (mode == 2'b10 ? propertydata10 : next);data <= {mode,3'b0,num};end
		default: next <= nul;
		endcase
	end
	end
end
endmodule
