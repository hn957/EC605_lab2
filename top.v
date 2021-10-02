`timescale 1ns / 1ps

module Top_module(clk, rst, switches, leds, seven_seg, seven_enable, btn);
input clk, rst;			// Needed for synchronous inputs
input [1:0] btn;			// For better control of simulation
input [15:0] switches;			// Input switches
output [3:0] leds;				// Display N, V, C, Z
output reg [6:0] seven_seg;		// Display outputs to seven segment
output wire [3:0] seven_enable;	// Select which seven segment to display

reg [3:0] A, B;
reg [3:0] SEL;
wire [3:0] Y;
/********* ADD MODULE DECLARATIONS HERE ************/

/********* END MODULE DECLARATIONS HERE ************/

/**************** SAVE INPUT TO REGISTERS ******************/
/* This always block saves switch inputs into      */
/* registers when buttons are pressed.             */
always @ (posedge clk or posedge rst)
begin
    if (rst)
    begin
        A <= 0;
        B <= 0;
        SEL <= 0;
       
    end
    else
    begin
        if (btn[0])
            A <= switches[11:8];
            B <= switches[7:4];
        if (btn[1])
            SEL <= switches[3:0];
    end
end

ALU alu(A,B,SEL,leds[0],leds[1],leds[2],leds[3],Y);

assign seven_enable=4'b1110;

always @(posedge clk or posedge rst) begin
    if (rst)  seven_seg<=7'b0000001;
    
    case(Y)
        4'b0000 :      	//Hexadecimal 0
        seven_seg = 7'b0000001 ;
        4'b0001 :    		//Hexadecimal 1
        seven_seg = 7'b1001111 ;
        4'b0010 :  		// Hexadecimal 2
        seven_seg = 7'b0010010 ; 
        4'b0011 : 		// Hexadecimal 3
        seven_seg = 7'b0000110 ;
        4'b0100 :		// Hexadecimal 4
        seven_seg = 7'b1001100 ;
        4'b0101 :		// Hexadecimal 5
        seven_seg = 7'b0100100 ;  
        4'b0110 :		// Hexadecimal 6
        seven_seg = 7'b0100000 ;
        4'b0111 :		// Hexadecimal 7
        seven_seg = 7'b0001111 ;
        4'b1000 :     		 //Hexadecimal 8
        seven_seg = 7'b0000000 ;
        4'b1001 :    		//Hexadecimal 9
        seven_seg = 7'b0000100 ;
        4'b1010 :  		// Hexadecimal A
        seven_seg = 7'b0001000 ; 
        4'b1011 : 		// Hexadecimal B
        seven_seg = 7'b1100000 ;
        4'b1100 :		// Hexadecimal C
        seven_seg = 7'b0110001 ;
        4'b1101 :		// Hexadecimal D
        seven_seg = 7'b1000010 ;
        4'b1110 :		// Hexadecimal E
        seven_seg = 7'b0110000 ;
        4'b1111 :		// Hexadecimal F
        seven_seg = 7'b0111000 ;
        default :
        seven_seg = 7'b0000001 ;
    
    endcase
end

/********* End always block **********/



/**************** CONNECT FLAGS WITH LEDS ******************/

/********* End connect flags with LEDS implementation **********/



/**************** CONNECT ALU OUTPUT WITH SEVEN SEGMENT DISPLAY ******************/
/* Here you initialize seven_seg, the register for the output of the seven segment dsiplay*/

/********* End connect alu output to seven seg implementation**********/





endmodule
/************ End module *************/

