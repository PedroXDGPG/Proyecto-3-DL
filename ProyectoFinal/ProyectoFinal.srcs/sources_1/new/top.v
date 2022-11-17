`timescale 1ns / 1ps

module top(
    input clk,
    input reset, start, bot,
    input [7:0] A,
    input [7:0] B,
    output [3:0] an,
    output [3:0] an2,
    output [6:0] LED_out
    );

//wire [7:0] A = 2;
//wire [7:0] B = 55;
wire [15:0] inicio;
wire [15:0] salida;
wire busy;
wire [15:0] entrada;
wire [3:0] uno;
wire [3:0] diez;
wire [3:0] cien;
wire [3:0] mil;
wire [3:0] cmil;

FFInicial v1(clk,A,B,bot,inicio);
Comparador a1(clk,inicio,salida);
multiplier k1(entrada, busy, salida[7:0], salida[15:8], clk, start);
B_BCD u1(clk,entrada,uno,diez,cien,mil,cmil);
BCD_7Seg t1(clk,reset,uno,diez,cien,mil,cmil,an,an2,LED_out);
endmodule
