/*
 * Project name   :
 * File name      : 4_5example_mux.sv
 * Created date   : Th06 21 2019
 * Author         : Van-Nam DINH 
 * Last modified  : Th06 21 2019 16:55
 * Desc           :
 */

module mux2(    input   logic[3:0] d0, d1,
                input   logic       s,
                output  logic[3:0] y);
    assign y=s?d1:d0;
    endmodule    
