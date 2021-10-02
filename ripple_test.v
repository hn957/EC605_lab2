`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/25/2021 06:59:55 PM
// Design Name: 
// Module Name: ripple_test
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


module ripple_test;
reg [3:0] A,B;
reg Cin;
wire [3:0] S;
wire Cout;

reg[3:0] i=4'b0;

four_bit_ripple ripple_test_1(A,B,Cin,S,Cout);

initial begin
A    = 4'b0;
B    = 4'b0;
Cin  = 4'b0;

#100;

for (i=0;i<16;i=i+1) begin
   A=i;
   B=B+2;
   Cin=~Cin;
    #30;
    end
 


end

endmodule
