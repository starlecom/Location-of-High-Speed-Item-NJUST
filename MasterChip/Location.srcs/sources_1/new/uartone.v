module uartone(
	input clkin,
	input send_req,
	input tx_busy,
	input [7:0] fifodata,
	input fifoempty,
	output reg send_trig,
	output wire uart_rstn,
	output reg rdreq,
	output reg [7:0] send_data
);
reg senddoing = 1'b0;
reg [7:0] now = 8'hff; 
reg [7:0] next = 8'hff;
assign uart_rstn = 1'b1;
reg [3:0] cnt=4'd10;
always@(posedge clkin)
begin
	now <= next;
	if(senddoing == 1'b0 && send_req == 1'b1 && fifoempty == 1'b0)
		now <= 8'h0f;
	case(now)
	8'h0f: begin senddoing <= 1'b1; rdreq <= 1'b1; next <= 8'h1f; cnt=4'd10; end
	8'h1f: begin rdreq <= 1'b0; send_data <= fifodata; send_trig <= 1'b1; cnt=cnt-4'b1;if(cnt==0) begin next <= 8'h2f; end end
	8'h2f: begin send_trig <= tx_busy; next <= tx_busy == 1'b1 ? 8'h2f : 8'hff; end
	8'hff: begin senddoing <= tx_busy;end
	default: senddoing <= tx_busy;
	endcase
end
endmodule
