`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/25/2021 08:03:55 PM
// Design Name: 
// Module Name: carry_select _adder
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


module carry_select_adder(input [7:0] A,B, output [7:0] S, output Cout);

wire [3:0] C0,C1;
wire carry_zero,carry_one;
wire carry;

four_bit_ripple ripple1(A [3:0], B[3:0],1'b0, S[3:0], carry);

four_bit_ripple ripple_zero( A [7:4], B[7:4], 1'b0,C0,carry_zero);
four_bit_ripple ripple_one(A [7:4], B[7:4], 1'b1,C1,carry_one);

assign Cout  = (carry==1)?carry_one:carry_zero;
assign S[7:4]= (carry==1)?C1:C0;

    
endmodule
