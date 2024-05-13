`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.05.2024 20:12:57
// Design Name: 
// Module Name: sumador_64bit_simulacion
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


module sumador_64bit_simulacion;
    //Definir señales de entrada
    logic [63:0] a;
    logic [63:0] b;
    logic cin;

    //Definir señales de salida
    logic [63:0] sum;
    logic cout;

    //Instanciar el sumador de 64 bits
    sumador_64_bit dut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    //Inicialización de las entradas
    initial begin
        //Asignar valores a las entradas
        a = 64'h123456789abcdef; //Se le asigna un valor en hexadecimal como ejemplo
        b = 64'hffffffffffff00; //Se le asigna un valor en hexadecimal como ejemplo
        cin = 1'b0; //El Cin va a empezar como 0

        //Esperar un tiempo para la estabilidad de las señales
        #10;

        //Imprimir los valores iniciales
        $display("Entrada a: %h", a);
        $display("Entrada b: %h", b);
        $display("Carry de entrada cin: %b", cin);
        
        //Realizar la simulación durante un ciclo de reloj
        #10;

        //Imprimir los resultados
        $display("Salida sum: %h", sum);
        $display("Carry de salida cout: %b", cout);

        //Finalizar la simulación
        $finish;
    end

endmodule
