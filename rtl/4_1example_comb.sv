/*
 * Project name   :
 * File name      : 4_1example_comb.sv
 * Created date   : Th06 21 2019
 * Author         : Van-Nam DINH 
 * Last modified  : Th06 21 2019 15:56
 * Desc           :
 */

module sillyfunction(input  logic   a,b,c,
                    output  logic   y);
     assign y = ~a & ~b & ~c | a & ~b & ~c | a & ~b & c;
endmodule
