`timescale 1ns / 1ps

module B_BCD( 
    input clk,
    input [15:0] entrada, 
    output reg [3:0] uno = 0, 
    output reg [3:0] diez = 0,
    output reg [3:0] cien = 0,
    output reg [3:0] mil = 0,
    output reg [3:0] cmil = 0
    );
    
reg [7:0] i = 0;
reg [35:0] shift = 0;

reg [3:0] temp_uno = 0;
reg [3:0] temp_diez = 0;
reg [3:0] temp_cien = 0;
reg [3:0] temp_mil = 0;
reg [3:0] temp_cmil = 0;

reg [15:0] entrada_inicial = 0;

always@ (posedge clk)
begin
    if (i==0 & entrada_inicial != entrada) begin
        shift = 36'd0;
        entrada_inicial = entrada;
        
        shift [15:0] = entrada;
        temp_uno = shift[19:16];
        temp_diez = shift[23:20];
        temp_cien = shift[27:24];
        temp_mil = shift[31:28];
        temp_cmil = shift[35:32];
        i = i+1;
    end
    
    if (i<17 & i>0) begin
        if (temp_uno >=5) temp_uno = temp_uno+3;
        if (temp_diez >=5) temp_diez = temp_diez+3;
        if (temp_cien >=5) temp_cien = temp_cien+3;
        if (temp_mil >=5) temp_mil = temp_mil+3;
        if (temp_cmil >=5) temp_cmil = temp_cmil+3;
        
        shift [35:16] = {temp_cmil,temp_mil,temp_cien,temp_diez,temp_uno};
        shift = shift <<1;
        
        temp_cmil = shift[35:32];
        temp_mil = shift[31:28];
        temp_cien = shift[27:24];
        temp_diez = shift[23:20];
        temp_uno = shift[19:16];
        i = i+1;
    end
    
    if (i==17) begin
        i = 0;
        cmil = temp_cmil;
        mil = temp_mil;
        cien = temp_cien;
        diez = temp_diez;
        uno = temp_uno;
    end
end
endmodule
