`timescale 1ns / 1ps

module FFInicial(
    input clk,
    input [7:0] A,
    input [7:0] B,
    input start,
    output reg [15:0] led
);

    reg [15:0] n1;
    reg [15:0] n2;
    reg [15:0] n3;

    always @(posedge clk)
    begin
        if(start)
        begin
            n1[7:0] <= A;
            n1[15:8] <= B;
            n2 <= n1;
            n3 <= n2;
            led <= n3;
        end
    end
endmodule
