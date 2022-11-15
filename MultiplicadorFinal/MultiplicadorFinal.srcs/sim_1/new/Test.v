`timescale 1ns / 1ps

module testbench;
reg clk, start;
reg [7:0] a, b;
wire [15:0] ab;
wire busy;
Multiplicador multiplier1(ab, busy, a, b, clk, start);
initial begin
clk = 0;
$display("first example: a = 3 b = 17");
a = -128; b = -128; start = 1; #100 start = 0;
#100 $display("first example done");

$finish;
end
always #5 clk = !clk;
always @(posedge clk) $strobe("ab: %d busy: %d at time=%t", ab, busy, $stime);
endmodule
