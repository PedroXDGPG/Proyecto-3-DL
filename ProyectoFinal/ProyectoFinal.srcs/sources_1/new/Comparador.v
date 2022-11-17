`timescale 1ns / 1ps

module Comparador(
    input clk,
    input [15:0] A,
    output reg [15:0] salida
    );
 reg [7:0] negativo1;  
 reg [7:0] negativo2;   
 always @(posedge clk)
    begin
        if(A[7] == 1)
        begin
           negativo1 = (~A[7:0]);
           salida [7:0] = negativo1 + 8'b00000001;
        end 
        else salida[7:0] = A[7:0];
    end  
    
always @(posedge clk)
    begin
        if(A[15] == 1)
        begin
           negativo2 = (~A[15:8]);
           salida [15:8] = negativo2 + 8'b00000001;
        end
        else salida[15:8] = A[15:8];
    end       
endmodule
