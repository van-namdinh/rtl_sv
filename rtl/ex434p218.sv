/*
 * Project name   :
 * File name      : ex434p218.sv
 * Created date   : Th11 21 2019
 * Author         : Van-Nam DINH 
 * Last modified  : Th11 21 2019 18:35
 * Desc           :
 */

// Example 4.34: Parameterized N-bit 2:1 multiplexers
module  mux2
    #(parameter width = 8)
    (   input   logic[width - 1:0]  d0, d1,
        input   logic               s,
        output  logic[width - 1:0] y);
    assign y = s ? d1:d0;
    endmodule
