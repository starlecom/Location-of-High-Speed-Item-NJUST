module uart_tx_2 #(
     parameter   SYSCLOCK=25000000, // <Hz>
     parameter   BAUDRATE=9600,
     parameter   CLKPERFRM=16'd26042, // ceil(SYSCLOCK/BAUDRATE*10)
     // bit order is lsb-msb
     parameter   TBITAT=16'd1, // starT bit, round(SYSCLOCK/BAUDRATE*0)+1
     parameter   BIT0AT=16'd2605, // round(SYSCLOCK/BAUDRATE*1)+1
     parameter   BIT1AT=16'd5209, // round(SYSCLOCK/BAUDRATE*2)+1
     parameter   BIT2AT=16'd7814, // round(SYSCLOCK/BAUDRATE*3)+1
     parameter   BIT3AT=16'd10418, // round(SYSCLOCK/BAUDRATE*4)+1
     parameter   BIT4AT=16'd13022, // round(SYSCLOCK/BAUDRATE*5)+1
     parameter   BIT5AT=16'd15626, // round(SYSCLOCK/BAUDRATE*6)+1
     parameter   BIT6AT=16'd18230, // round(SYSCLOCK/BAUDRATE*7)+1
     parameter   BIT7AT=16'd20834, // round(SYSCLOCK/BAUDRATE*8)+1
     parameter   PBITAT=16'd23439 // stoP bit, round(SYSCLOCK/BAUDRATE*9)+1
)(
    input wire          clk,
    input wire          rstn,
    
    output reg          tx=1'b1,
    
    output reg          tx_bsy=1'b0,
    input wire          send_trig, // 每个时钟高电平有效一�?
    input wire  [7:0]   send_data
);

    // tx flow control
    reg     [15:0]  tx_cnt='b0;
    always@(posedge clk or negedge rstn)begin
        if(~rstn)begin
            tx_cnt<=16'd0;
            tx_bsy<=1'b0;
        end else begin
            if(send_trig & (~tx_bsy)/* 2nd condition is vital */)
                tx_bsy<=1'b1;
            
            if(tx_bsy)begin
                if(tx_cnt==CLKPERFRM)begin
                    tx_cnt<=16'd0;
                    tx_bsy<=1'b0;
                end else
                    tx_cnt<=tx_cnt+16'b1;
            end
        end
    end

    // tx data control
    reg     [7:0]   data2send;
    always@(posedge clk or negedge rstn)begin
        if(~rstn)begin
            data2send<=8'd0;
            tx<=1'b1; // init val should be 1
        end else begin
            if(send_trig & (~tx_bsy)/* 2nd condition is vital */)
                data2send<=send_data;

            case(tx_cnt)
                TBITAT: tx<=1'b0;
                BIT0AT: tx<=data2send[0];
                BIT1AT: tx<=data2send[1];
                BIT2AT: tx<=data2send[2];
                BIT3AT: tx<=data2send[3];
                BIT4AT: tx<=data2send[4];
                BIT5AT: tx<=data2send[5];
                BIT6AT: tx<=data2send[6];
                BIT7AT: tx<=data2send[7];
                PBITAT: tx<=1'b1;
                default:begin end
            endcase
        end
    end

endmodule

