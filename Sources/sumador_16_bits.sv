`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.05.2024 17:55:50
// Design Name: 
// Module Name: sumador_16_bits
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


module sumador_16_bits(
    input logic [15:0] a, //Entrada de 16 bits
    input logic [15:0] b, //Entrada de 16 bits
    input logic cin,      //Carry de entrada
    output logic [15:0] sum, //Salida de 16 bits
    output logic cout    //Carry de salida
);

logic [7:0] carry_intermedio; //Carry intermedio para cada grupo de bits

//Instancias del sumador de 8 bits
sumador_8_bits sumador0(
    .a(a[7:0]),
    .b(b[7:0]),
    .cin(cin),
    .sum(sum[7:0]),
    .cout(carry_intermedio[0])
);

sumador_8_bits sumador1(
    .a(a[15:8]),
    .b(b[15:8]),
    .cin(carry_intermedio[0]),
    .sum(sum[15:8]),
    .cout(cout)
);

endmodule
