/*
 * Project name   :
 * File name      : Examplefsm_TB.sv
 * Created date   : Th02 27 2019
 * Author         : Van-Nam DINH 
 * Last modified  : Th02 27 2019 11:01
 * Desc           :
 */

`timescale 1ns/1ns

module Examplefsm_TB;

    logic clk;
    logic reset;
    logic in;
    logic out;


    ExampleFSM dut(
        .clk(clk),
        .reset(reset),
        .X(in),
        .Y(out)
    );

    initial 
    begin
        reset <= 1; #10;
        reset <= 0; in <= 0; #10;

        in <= 1; #10;
        in <= 1; #10;
        in <= 1; #10;
        in <= 0; #10;
    end

    always
        begin
            clk <= 1;#5;
            clk <= 0;#5;

        end

    endmodule
