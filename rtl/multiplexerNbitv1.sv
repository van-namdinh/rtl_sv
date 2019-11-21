/*
 * Project name   :
 * File name      : multiplexerNbitv1.sv
 * Created date   : Th08 03 2019
 * Author         : Van-Nam DINH 
 * Last modified  : Th08 03 2019 16:19
 * Desc           :
 */

module multiplexerNbitv1 #(parameter N = 8)
    (
        input   logic unsigned [N-1:0] a, b,
        output  logic unsigned [2*N-1:0] mul);
//    assign{mul} = a*b;
    always_comb
    begin
        mul = a*b;
    end
endmodule
