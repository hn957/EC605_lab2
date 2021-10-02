`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/25/2021 10:55:33 PM
// Design Name: 
// Module Name: carry_test
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


module carry_test;

reg [7:0] A,B;
//reg Cin;
wire [7:0] S;
wire Cout;

reg[7:0] i=4'b0;

carry_select_adder carry_test(A,B,S,Cout);
initial begin
 A=7'd0;
 B=7'd0;
 
 #100;
 
 for (i=0;i<16;i=i+1) begin
   A=i*4'd10;
   B=B+16;
   
    #30;
    end
 


end


endmodule
