`timescale 1ns / 1ps

module BCD_7Seg(
    input clk, 
    input reset,
    input [3:0] uno, 
    input [3:0] diez,
    input [3:0] cien,
    input [3:0] mil,
    input [3:0] cmil,
    output reg [3:0] an,
    output reg [3:0] an2, 
    output reg [6:0] LED_out
    );
    reg [3:0] LED_BCD;
    reg [19:0] contador; 
    wire [4:0] LED_contador; 
            
    always @(posedge clk or posedge reset)
    begin 
        if(reset==1)
            contador <= 0;
        else
            contador <= contador + 1;
    end 
    assign LED_contador = contador[19:16];
    
    always @*
    begin
        case(LED_contador)
        4'b0000: begin
            an = 4'b0111; // 4 Display         
            LED_BCD = mil; // mil_1
              end
        4'b0001: begin
            an = 4'b1011; // 3 Display
            LED_BCD = cien; // cien_1
              end
        4'b0010: begin
            an = 4'b1101; // 2 Display
            LED_BCD = diez; // diez_1
                end
        4'b0011: begin
            an = 4'b1110; // 1 Display
            LED_BCD = uno; // uno_1
               end
        //----------------------------------          
        4'b0100: begin
            an2 = 4'b0111; // 4 Display         
            LED_BCD = 4'b0000; // mil_1
              end
        4'b0101: begin
            an2 = 4'b1011; // 3 Display
            LED_BCD = 4'b0000; // cien_1
              end
        4'b0110: begin
            an2 = 4'b1101; // 2 Display
            LED_BCD = 4'b0000; // diez_1
                end
        4'b0111: begin
            an2 = 4'b1110; // 1 Display
            LED_BCD = cmil; // uno_1
               end  
        endcase    
    end
    
    always @(*)
    begin
        case(LED_BCD)
        4'b0000: LED_out = 7'b1000000; // "0"     
        4'b0001: LED_out = 7'b1111001; // "1" 
        4'b0010: LED_out = 7'b0100100; // "2" 
        4'b0011: LED_out = 7'b0110000; // "3" 
        4'b0100: LED_out = 7'b0011001; // "4" 
        4'b0101: LED_out = 7'b0010010; // "5" 
        4'b0110: LED_out = 7'b0000010; // "6" 
        4'b0111: LED_out = 7'b1111000; // "7" 
        4'b1000: LED_out = 7'b0000000; // "8"     
        4'b1001: LED_out = 7'b0010000; // "9" 
        default: LED_out = 7'b1000000; // "0"
        endcase
    end
 endmodule
