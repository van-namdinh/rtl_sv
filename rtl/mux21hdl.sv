/*
 * Project name   :
 * File name      : mux21hdl.sv
 * Created date   : Th03 05 2019
 * Author         : Van-Nam DINH 
 * Last modified  : Th03 05 2019 11:52
 * Desc           :
 */

module mux21hdl(o_y,i_a,i_b,i_sel);
input logic[7:0] i_a,i_b;
input logic i_sel;
output logic[7:0] o_y;
/*
reg[7:0] i_a;
reg[7:0] i_b;
wire[7:0] o_y;
reg i_sel;*/
assign o_y = (i_sel) ? i_a : i_b;
endmodule
