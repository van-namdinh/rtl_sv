/*
 * Project name   :
 * File name      : tristate_tb.sv
 * Created date   : Th03 05 2019
 * Author         : Van-Nam DINH 
 * Last modified  : Th03 05 2019 11:41
 * Desc           :
 */

`timescale 1ns/1ns
module tristate_tb;
logic a;
logic b;
logic en;
tristate dut(
    .a(a),
    .b(b),
    .en(en)
);

initial begin
    #100;
    a <= 1;
    en <= 0; #10;
    a <= 0; 
    en <= 1; #10;
    a <= 1; 
    en <= 0; #10;
    a <= 0; 
    en <= 1; #10;
end
endmodule
