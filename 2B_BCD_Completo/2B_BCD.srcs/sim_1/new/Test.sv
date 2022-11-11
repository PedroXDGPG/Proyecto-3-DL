`timescale 1ns / 1ps

module Test(
    );
reg clk = 0;
reg [15:0] entrada = 0; 
wire [3:0] uno; 
wire [3:0] diez;
wire [3:0] cien;
wire [3:0] mil;
wire [3:0] cmil;

B_BCD U1 (clk, entrada, uno, diez, cien, mil, cmil);

always #5 clk = ~clk;
initial begin
    entrada = 0;
    #200 entrada = 4395;
    #200 entrada = 13248;
    #200 entrada = 139;
end
endmodule
