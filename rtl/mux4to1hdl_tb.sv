/*
 * Project name   :
 * File name      : mux4to1hdl_tb.sv
 * Created date   : Th03 05 2019
 * Author         : Van-Nam DINH 
 * Last modified  : Th03 05 2019 15:41
 * Desc           :
 */

`timescale 1ns/1ns

module mux4to1hdl_tb;

logic a,b,c,d;
logic [1:0] sel;
logic y;

mux4to1hdl dut(
    .i_a(a),
    .i_b(b),
    .i_c(c),
    .i_d(d),
    .i_sel(sel),
    .o_y(y)
);

initial begin
    #100;
    a <= 0;
    b <= 0;
    c <= 0;
    d <= 0;
    sel <= 2'b00;
    #10;
    a <= 0;
    b <= 0;
    c <= 0;
    d <= 1;
    sel <= 2'b01;
    #10;
    a <= 0;
    b <= 0;
    c <= 1;
    d <= 0;
    sel <= 2'b10;
    #10;
    a <= 0;
    b <= 0;
    c <= 1;
    d <= 1;
    sel <= 2'b11;
    #10;
    a <= 0;
    b <= 0;
    c <= 0;
    d <= 0;
    sel <= 2'b00;
    #10;
    #10;
end
endmodule
