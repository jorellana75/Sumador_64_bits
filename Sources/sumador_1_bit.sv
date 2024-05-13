`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.05.2024 17:12:43
// Design Name: 
// Module Name: sumador_1_bit
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


module sumador_1_bit(
    input logic a, //Primer bit de entrada
    input logic b, //Segundo bit de entrada
    input logic cin, //Carry de entrada
    output logic sum, //Bit de suma
    output logic cout //Carry de salida
);

    assign sum = a ^ b ^ cin; //Operación XOR para calcular el bit de suma
    assign cout = (a & b) | (b & cin) | (a & cin); //Operación OR para calcular el carry de salida

endmodule
