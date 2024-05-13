`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.05.2024 17:50:22
// Design Name: 
// Module Name: sumador_4_bits
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


module sumador_4_bits(
    input logic [3:0] a,    //Entrada de 4 bits
    input logic [3:0] b,    //Entrada de 4 bits
    input logic cin,        //Carry de entrada
    output logic [3:0] sum, //Salida de 4 bits
    output logic cout       //Carry de salida
);

logic [1:0] carry_intermedio; //Carry intermedio para cada par de bits

//Instancias del sumador de 2 bits
sumador_2_bits sumador0(
    .a(a[1:0]),
    .b(b[1:0]),
    .cin(cin),
    .sum(sum[1:0]),
    .cout(carry_intermedio[0])
);

sumador_2_bits sumador1(
    .a(a[3:2]),
    .b(b[3:2]),
    .cin(carry_intermedio[0]),
    .sum(sum[3:2]),
    .cout(cout)
);

endmodule
