`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/26/2021 10:17:13 PM
// Design Name: 
// Module Name: ALU
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


module ALU( input [3:0] A,B,SEL,
            output reg N,Z,C,V,
            output reg [3:0] Y);
    reg [4:0] sum;
    always @(*) begin
    case (SEL)
    4'd1: Y[3:0]= A&B;   
    4'd2: Y[3:0]= A|B;
    4'd3: Y[3:0]= ~A;
    4'd4: Y[3:0]= A^B;
    4'd5: Y[3:0]= A<<B;
    4'd6: Y[3:0]= $signed(A)>>>B;
    4'd7: Y[3:0]= A>>B;
    4'd8: begin
             Y[3:0]= A+B;
             sum=A+B;
             
          end
    4'd9: begin 
            Y[3:0]= A-B;
             sum=A-B;
             
              end
    default:begin
             Y[3:0]=4'd0;
             
             sum=0;
             end
    endcase
    if (SEL==4'd8) begin
        C=sum[4];
        V=sum[4];
        end
     else begin
        C=0;
        V=0;
        end
     if (SEL==4'd9) N=sum[4];
     else N=0;
     
     
     if ((Y==0) && (SEL>0) && (SEL <10)) Z=1;
     else Z=0;
    end
    
    
    
    /*assign sum=(SEL==4'd8)?(A+B):0;
    assign C=(SEL==4'd8)?sum[4]:1'b0;
    assign V=(SEL==4'd8)?sum[4]:1'b0;
    assign N=((A<B) && SEL==4'd9)?1'b1:1'b0;
    assign Z=(Y==0)?1'b1:1'b0;*/
    
endmodule
