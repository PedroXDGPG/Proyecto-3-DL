`timescale 1ns / 1ps

module Booth(
    input clk,
    //input bot,
    input [7:0] A,
    input [7:0] B,
    output reg [7:0] C,
    output reg [7:0] D
    );
    reg [7:0] N1;
    reg [7:0] N2;
    reg [7:0] N3;
    reg [7:0] n1;
    reg [7:0] n2;
    reg [7:0] n3;
    always @(posedge clk) begin
      //if (bot) begin
          N1 <= A;
          N2 <= N1;
          N3 <= N2;
          C <= N3;      
       //end
    end
    always @(posedge clk) begin
      //if (bot) begin
          n1 <= B;
          n2 <= n1;
          n3 <= n2;
          D <= n3;      
       //end
    end      
endmodule  