`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/25/2021 02:31:05 AM
// Design Name: 
// Module Name: Full_Adder_Test
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


module Full_Adder_Test;
reg A,B,Cin;
wire S,Cout;

reg[2:0] i=3'd0;

full_adder full_adder_testbenc( A,B,Cin,S,Cout);

initial 
begin 
A=0;
B=0;
Cin=0;
#120;

for (i=0;i<8;i=i+1) begin
   {A,B,Cin}={A,B,Cin}+1;
    #30;
    end
 end




endmodule
