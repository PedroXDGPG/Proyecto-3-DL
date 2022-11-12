`timescale 1ns / 1ps

module BCD_7Seg(
    input clk, 
    input reset,
    output reg [3:0] an,
    output reg [3:0] an2, 
    output reg [6:0] LED_out
    );
    reg [3:0] LED_BCD;
    reg [19:0] contador; 
    wire [1:0] LED_contador; 
            
    always @(posedge clk or posedge reset)
    begin 
        if(reset==1)
            contador <= 0;
        else
            contador <= contador + 1;
    end 
    assign LED_contador = contador[19:18];
    
    
    always @(*)
    begin
        case(LED_contador)
        2'b00: begin
            an = 4'b0111; // 4 Display         
            LED_BCD = 4'b0001; // mil_1
              end
        2'b01: begin
            an = 4'b1011; // 3 Display
            LED_BCD = 4'b0010; // cien_1
              end
        2'b10: begin
            an = 4'b1101; // 2 Display
            LED_BCD = 4'b0011; // diez_1
                end
        2'b11: begin
            an = 4'b1110; // 1 Display
            LED_BCD = 4'b0100; // uno_1
               end
        endcase
    end
    
    
    always @(*)
    begin
        case(LED_contador)
        2'b00: begin
            an2 = 4'b0111; // 8 Display
            LED_BCD = 4'b0001; // mil_2
              end
        2'b01: begin
            an2 = 4'b1011; // 7 Display
            LED_BCD = 4'b0010; // cien_2
              end
        2'b10: begin
            an2 = 4'b1101; // 6 Display
            LED_BCD = 4'b0011; // diez_2
                end
        2'b11: begin
            an2 = 4'b1110; // 5 Display
            LED_BCD = 4'b0100; //uno_2
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