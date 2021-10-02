`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/25/2021 03:02:19 AM
// Design Name: 
// Module Name: four_bit_ripple
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


module four_bit_ripple(input [3:0] A,B, input Cin, output [3:0] S, output Cout);
    wire w1,w2,w3;
    full_adder adder0(A[0],B[0],Cin,S[0],w1);
    full_adder adder1(A[1],B[1],w1,S[1],w2);
    full_adder adder2(A[2],B[2],w2,S[2],w3);
    full_adder adder3(A[3],B[3],w3,S[3],Cout);
    
endmodule
