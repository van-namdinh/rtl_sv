/*
 * Project name   :
 * File name      : add2num_tb.sv
 * Created date   : Th03 05 2019
 * Author         : Van-Nam DINH 
 * Last modified  : Th03 05 2019 18:55
 * Desc           :
 */

`timescale 1ns/1ns
module add2num_tb;

integer ina;
integer inb;
integer outc;

add2num dut(
    .a(ina),
    .b(inb),
    .sum2num(outc)
);
initial
begin
    ina <= 5;
    inb <= 10;#10;
    ina <= 100;
    inb <= 55;#10;
    ina <= 105;
    inb <= 10;#10;
    ina <= 45;
    inb <= 10;#10;
end
endmodule
