`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.05.2024 17:53:29
// Design Name: 
// Module Name: sumador_8_bits
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


module sumador_8_bits(
    input logic [7:0] a,    //Entrada de 8 bits
    input logic [7:0] b,    //Entrada de 8 bits
    input logic cin,        //Carry de entrada
    output logic [7:0] sum, //Salida de 8 bits
    output logic cout       //Carry de salida
);

logic [3:0] carry_intermedio; //Carry intermedio para cada grupo de bits

//Instancias del sumador de 4 bits
sumador_4_bits sumador0(
    .a(a[3:0]),
    .b(b[3:0]),
    .cin(cin),
    .sum(sum[3:0]),
    .cout(carry_intermedio[0])
);

sumador_4_bits sumador1(
    .a(a[7:4]),
    .b(b[7:4]),
    .cin(carry_intermedio[0]),
    .sum(sum[7:4]),
    .cout(cout)
);

endmodule
