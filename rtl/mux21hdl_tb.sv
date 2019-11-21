/*
 * Project name   :
 * File name      : mux21hdl_tb.sv
 * Created date   : Th03 05 2019
 * Author         : Van-Nam DINH 
 * Last modified  : Th03 05 2019 12:56
 * Desc           :
 */

`timescale 1ns/1ns

module mux21hdl_tb;
logic [7:0] inputa;
logic [7:0] inputb;
logic [7:0] outputy;
logic sel;

mux21hdl dut(
    .i_a(inputa),
    .i_b(inputb),
    .o_y(outputy),
    .i_sel(sel)
);

initial begin
    #10;
    inputa <= 8'b0000_0001;
    inputb <= 8'b0000_0011;
    sel <= 1;#50;
    inputa <= 8'b0000_0001;
    inputb <= 8'b0000_0011;
    sel <= 0;#50;
    inputa <= 8'b1010_1010;
    inputb <= 8'b0101_0101;
    sel <= 1;#50;
    inputa <= 8'b1010_0001;
    inputb <= 8'b0101_0101;
    sel <= 0;#50;
end
endmodule
