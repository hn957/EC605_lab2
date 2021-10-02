`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/26/2021 10:34:49 PM
// Design Name: 
// Module Name: ALU_test
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


module ALU_test;

reg [3:0] A,B,SEL;
wire [3:0] Y;
wire N,C,Z,V;
reg[7:0] i=4'b0;
ALU alu1(A,B,SEL,N,Z,C,V,Y);

initial begin
A=0;
B=0;
SEL=0;

#100;
A=4'd10;
B=4'd15;
SEL=4'd8;

#100;
A=4'd15;
B=4'd15;
SEL=4'd9;

#100;
A=4'd5;
B=4'd10;
SEL=4'd9;

#100;
A=4'd10;
B=4'd15;
SEL=4'd8;
for (i=1;i<10;i=i+1) begin
  SEL=i;
  A=A+2;
  B=B+3;
  
    #30;
    end

#50;
A=4'd13;
B=4'd2;
SEL=4'd6;

end



endmodule
