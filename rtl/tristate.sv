/*
 * Project name   :
 * File name      : tristate.sv
 * Created date   : Th03 05 2019
 * Author         : Van-Nam DINH 
 * Last modified  : Th03 05 2019 11:38
 * Desc           :
 */

module tristate(a,b,en);
input a;
input en;
output b;

wire a;
wire b;
wire en;
assign b = (en)? a:1'bz;
endmodule
