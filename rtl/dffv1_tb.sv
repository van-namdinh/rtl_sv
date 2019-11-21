/*
 * Project name   :
 * File name      : dffv1_tb.sv
 * Created date   : Th03 01 2019
 * Author         : Van-Nam DINH 
 * Last modified  : Th03 01 2019 16:30
 * Desc           :
 */

`timescale 1ns/1ns

module dffv1_tb;

    logic clk;
    logic reset;
    logic in;
    logic out;
    
dffv1 dut(
    .clk(clk),
    .reset(reset),
    .d(in),
    .q(out)
);

initial
begin
    #100;
    reset <= 1; #10;
    reset <= 0; #10;
    in <= 0; #10;
    in <= 1; #10;
    in <= 0; #10;
    in <= 1; #10;
    in <= 0; #10;
    in <= 0; #10;
    in <= 0; #10;
    in <= 1; #10;
    in <= 1; #10;
    in <= 1; #10;
    in <= 0; #10;
    in <= 1; #10;
end

always
begin
    clk <= 1; #5;
    clk <= 0; #10;
end
endmodule
