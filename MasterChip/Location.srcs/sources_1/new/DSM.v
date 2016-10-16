module DSM (
	input [7:0] cs,
	output reg [1:0] mode,
	output reg [2:0] num
);
initial
begin
	mode <= 2'b00;
	num  <= 3'b000;
end
always@(cs)
begin
	case(cs)
	8'b00000000: begin mode <= 2'b00;num <= 3'b000; end	//nosignal
	
	8'b10000000: begin mode <= 2'b01;num <= 3'b111; end	//onechip
	8'b01000000: begin mode <= 2'b01;num <= 3'b110; end
	8'b00100000: begin mode <= 2'b01;num <= 3'b101; end
	8'b00010000: begin mode <= 2'b01;num <= 3'b100; end
	8'b00001000: begin mode <= 2'b01;num <= 3'b011; end
	8'b00000100: begin mode <= 2'b01;num <= 3'b010; end 
	8'b00000010: begin mode <= 2'b01;num <= 3'b001; end
	8'b00000001: begin mode <= 2'b01;num <= 3'b000; end
	
	8'b11000000: begin mode <= 2'b10;num <= 3'b111; end	//twochip
	8'b01100000: begin mode <= 2'b10;num <= 3'b110; end
	8'b00110000: begin mode <= 2'b10;num <= 3'b101; end
	8'b00011000: begin mode <= 2'b10;num <= 3'b100; end
	8'b00001100: begin mode <= 2'b10;num <= 3'b011; end
	8'b00000110: begin mode <= 2'b10;num <= 3'b010; end
	8'b00000011: begin mode <= 2'b10;num <= 3'b001; end
	
	default: begin mode <= 2'b11;num <= 3'b000; end
	endcase
end
endmodule