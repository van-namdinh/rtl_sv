/*
 * Project name   :
 * File name      : 4_6Example_mux41.sv
 * Created date   : Th06 21 2019
 * Author         : Van-Nam DINH 
 * Last modified  : Th06 21 2019 16:58
 * Desc           :
 */

module mux41(   input logic [3:0] d3,d2,d1,d0,
                input logic[1:0]    s,
                output logic[3:0]   y);
            assign y=s[1]?(s[0]?d3:d2)
                         : (s[0]?d1:d0);
            endmodule
