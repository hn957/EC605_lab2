`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/27/2021 01:49:17 AM
// Design Name: 
// Module Name: seven_seg_display
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


module seven_seg_display(input clk,rst,input [3:0] Y, output reg [6:0] seven_seg );

always @ (posedge clk or posedge rst) begin
 if (rst)
    begin
        seven_seg=0;
    end
  else begin
    case(Y)
        4'b0000 :      	//Hexadecimal 0
        seven_seg = 7'b1111110;
        4'b0001 :    		//Hexadecimal 1
        seven_seg = 7'b0110000  ;
        4'b0010 :  		// Hexadecimal 2
        seven_seg = 7'b1101101 ; 
        4'b0011 : 		// Hexadecimal 3
        seven_seg = 7'b1111001 ;
        4'b0100 :		// Hexadecimal 4
        seven_seg = 7'b0110011 ;
        4'b0101 :		// Hexadecimal 5
        seven_seg = 7'b1011011 ;  
        4'b0110 :		// Hexadecimal 6
        seven_seg = 7'b1011111 ;
        4'b0111 :		// Hexadecimal 7
        seven_seg = 7'b1110000;
        4'b1000 :     		 //Hexadecimal 8
        seven_seg = 7'b1111111;
        4'b1001 :    		//Hexadecimal 9
        seven_seg = 7'b1111011 ;
        4'b1010 :  		// Hexadecimal A
        seven_seg = 7'b1110111 ; 
        4'b1011 : 		// Hexadecimal B
        seven_seg = 7'b0011111;
        4'b1100 :		// Hexadecimal C
        seven_seg = 7'b1001110 ;
        4'b1101 :		// Hexadecimal D
        seven_seg = 7'b0111101 ;
        4'b1110 :		// Hexadecimal E
        seven_seg = 7'b1001111 ;
        4'b1111 :		// Hexadecimal F
        seven_seg = 7'b1000111 ;
        default :
        seven_seg = 7'b1111111 ;
    
    endcase
  end
end
endmodule
