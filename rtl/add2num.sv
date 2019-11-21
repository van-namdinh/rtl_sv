/*
 * Project name   :
 * File name      : add2num.sv
 * Created date   : Th03 05 2019
 * Author         : Van-Nam DINH 
 * Last modified  : Th03 05 2019 18:52
 * Desc           :
 */

module add2num(sum2num,a,b);
output  integer  sum2num;
input   integer  a;
input   integer  b;
assign sum2num = a+b;
endmodule
