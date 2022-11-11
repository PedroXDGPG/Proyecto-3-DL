`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.10.2022 19:43:13
// Design Name: 
// Module Name: Test
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


module Test(
    );
    reg clk = 1;
    reg [7:0] A;
    wire [7:0] C;
    
    Booth u1(clk,A,C);
    initial
        begin
        forever 
            begin
            #10 clk =!clk;
            end
        end
    
    initial 
    begin
    A = 8'b1110000;
    #400;
    A = 8'b1110011;
    #400;
    end   
    
endmodule
