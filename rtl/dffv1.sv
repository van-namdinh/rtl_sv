/*
 * Project name   :
 * File name      : dffv1.sv
 * Created date   : Th03 01 2019
 * Author         : Van-Nam DINH 
 * Last modified  : Th03 01 2019 16:26
 * Desc           :
 */

module dffv1(d,q,clk,reset);
    output  q;
    input   d,clk,reset;
    reg     q;
//    always @(posedge reset or negedge clk)
    always @(posedge reset or posedge clk)
        if(reset) 
            q <= 1'b0;
        else
            q <= d;
endmodule
