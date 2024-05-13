`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.05.2024 18:01:03
// Design Name: 
// Module Name: sumador_32_bits
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


module sumador_32_bits(
    input logic [31:0] a, //Entrada de 32 bits
    input logic [31:0] b, //Entrada de 32 bits
    input logic cin,      //Carry de entrada
    output logic [31:0] sum, //Salida de 32 bits
    output logic cout    //Carry de salida
);

logic [15:0] carry_intermedio; //Carry intermedio para cada grupo de bits

// Instancias del sumador de 16 bits
sumador_16_bits sumador0(
    .a(a[15:0]),
    .b(b[15:0]),
    .cin(cin),
    .sum(sum[15:0]),
    .cout(carry_intermedio[0])
);

sumador_16_bits sumador1(
    .a(a[31:16]),
    .b(b[31:16]),
    .cin(carry_intermedio[0]),
    .sum(sum[31:16]),
    .cout(cout)
);

endmodule
