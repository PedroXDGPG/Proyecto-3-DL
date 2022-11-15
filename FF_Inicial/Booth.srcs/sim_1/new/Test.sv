`timescale 1ns / 1ps

module Test(
    );
    reg clk = 1;
    reg bot = 1;
    reg [7:0] A;
    reg [7:0] B;
    wire [7:0] C;
    wire [7:0] D;
    
    Booth u1(clk,bot,A,B,C,D);
    initial
        begin
        forever 
            begin
            #10 clk =!clk;
            end
        end
    
    initial 
    begin
    A = -127;
    B = 17;
    #400;
    A = 8'b1000001;
    B = 8'b0000111;
    #400;
    end   
    
endmodule
