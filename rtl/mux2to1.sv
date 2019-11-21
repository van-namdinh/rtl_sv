/*
 * Project name   :
 * File name      : mux2to1.sv
 * Created date   : Th02 26 2019
 * Author         : Van-Nam DINH 
 * Last modified  : Th02 26 2019 17:02
 * Desc           :
 */

module mux2to1 (
    input   wire a,b,sel,
    output  logic y);

always_comb begin
    if(sel) y = a;
    else y = b;
end
endmodule: mux2to1
