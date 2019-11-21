/*
 * Project name   :
 * File name      : fulladderNbit.sv
 * Created date   : Th08 01 2019
 * Author         : Van-Nam DINH 
 * Last modified  : Th08 01 2019 12:00
 * Desc           :
 */

module fulladderNbit #(parameter N = 8)
    (input  logic [N-1:0] a,b,
        input   logic   cin,
        output  logic [N-1:0]   s,
        output  logic   cout);
    assign{cout,s} = a+b+cin;
    endmodule
