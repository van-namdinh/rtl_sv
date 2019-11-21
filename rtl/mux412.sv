/*
 * Project name   :
 * File name      : mux412.sv
 * Created date   : Th11 21 2019
 * Author         : Van-Nam DINH 
 * Last modified  : Th11 21 2019 18:43
 * Desc           :
 */

module mux412(
    input   logic[11:0] d0,d1,d2,d3,
    input   logic[1:0] s,
    output  logic[11:0] y);
    logic[11:0] low, hi;

    mux2 #(12) lowmux(d0,d1,s[0],low);
    mux2 #(12) himux(d2,d3,s[0],hi);
    mux2 #(12) outmux(low,hi,s[1],y);
    endmodule
