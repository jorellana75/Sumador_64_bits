`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.05.2024 17:46:20
// Design Name: 
// Module Name: sumador_2_bits
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


module sumador_2_bits(
    input logic [1:0] a,    //Entrada de 2 bits
    input logic [1:0] b,    //Entrada de 2 bits
    input logic cin,        //Carry de entrada
    output logic [1:0] sum, //Salida de 2 bits
    output logic cout       //Carry de salida
);

    logic carry1; //Carry intermedio para el primer bit
    logic carry2; //Carry intermedio para el segundo bit

    //Instancias de las celdas de sumador de un bit
    sumador_1_bit sumador1(
        .a(a[0]),
        .b(b[0]),
        .cin(cin),
        .sum(sum[0]),
        .cout(carry1)
    );

    sumador_1_bit sumador2(
        .a(a[1]),
        .b(b[1]),
        .cin(carry1),
        .sum(sum[1]),
        .cout(carry2)
    );

endmodule
