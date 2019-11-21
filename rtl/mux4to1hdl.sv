/*
 * Project name   :
 * File name      : mux4to1hdl.sv
 * Created date   : Th03 05 2019
 * Author         : Van-Nam DINH 
 * Last modified  : Th03 05 2019 14:21
 * Desc           :
 */

module mux4to1hdl(o_y,i_a,i_b,i_c,i_d,i_sel);
    output          o_y;
    input           i_a;
    input           i_b;
    input           i_c;
    input           i_d;
    input[1:0]      i_sel;
reg o_y;
always @(i_sel or i_a or i_b or i_c or i_d) begin
case(i_sel)
    2'b00: o_y = i_a;
    2'b01: o_y = i_b;
    2'b10: o_y = i_c;
    2'b11: o_y = i_d;
endcase
end
endmodule
