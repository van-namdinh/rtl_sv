/*
 * Project name   :
 * File name      : couterNbit.sv
 * Created date   : Th08 01 2019
 * Author         : Van-Nam DINH 
 * Last modified  : Th08 01 2019 10:43
 * Desc           :
 */

module couterNbit
    #(width = 8)
    
    (   
        input logic[width-1: 0] a, b
        output logic[width :0] c);
        c = a + b;

