`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2016/08/31 11:32:46
// Design Name: 
// Module Name: frevDiv
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


module frevDiv(
    input clkin,
    output reg clkdiv4 = 1'b0,
    output reg clkdiv2 = 1'b0
    );
    reg divcnt=1'b0;
always@(posedge clkin)
begin
    divcnt=divcnt+1'b1;
    if(divcnt==1'b0)
    begin
        clkdiv4=~clkdiv4;
    end
 clkdiv2=~clkdiv2;
end
    
endmodule
