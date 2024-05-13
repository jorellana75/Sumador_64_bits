`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.05.2024 18:02:17
// Design Name: 
// Module Name: sumador_64_bit
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


module sumador_64_bit(
    input logic [63:0] a, //Entrada de 64 bits
    input logic [63:0] b, //Entrada de 64 bits
    input logic cin,      //Carry de entrada
    output logic [63:0] sum, //Salida de 64 bits
    output logic cout    //Carry de salida
);

logic [31:0] carry_intermedio; //Carry intermedio para cada grupo de bits

//Instancias del sumador de 32 bits
sumador_32_bits sumador0(
    .a(a[31:0]),
    .b(b[31:0]),
    .cin(cin),
    .sum(sum[31:0]),
    .cout(carry_intermedio[0])
);

sumador_32_bits sumador1(
    .a(a[63:32]),
    .b(b[63:32]),
    .cin(carry_intermedio[0]),
    .sum(sum[63:32]),
    .cout(cout)
);

endmodule
