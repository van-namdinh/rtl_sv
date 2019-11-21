/*
 * Project name   :
 * File name      : multiplexerNbitv1tb.sv
 * Created date   : Th08 03 2019
 * Author         : Van-Nam DINH 
 * Last modified  : Th08 03 2019 16:52
 * Desc           :
 */

module multiplexerNbitv1tb();
    logic clk, reset;
    logic [7:0] a, b;
    logic [15:0] y, yexpected;
    logic [31:0] vectornum, errors;
    logic [31:0] testvectors[10000:0];

    multiplexerNbitv1 dut(a,b,y);

    always
    begin
        clk = 1; #5; clk = 0; #5;
    end

    initial
    begin
        $readmemb("multiplexerNbitv1tb.tv", testvectors);
        vectornum = 0; errors = 0;
        reset = 1; #27; reset = 0;
    end

    always @(posedge clk)
    begin
        #1; {a,b,yexpected} = testvectors[vectornum];
    end

    always @(negedge clk)
        if(~reset) begin
            if(y !== yexpected) begin
                $display("error: inputs = %b", {a,b});
                $display("outputs = %b (%b expected)", y, yexpected);
                errors = errors + 1;
            end
            vectornum = vectornum + 1;
            if(testvectors[vectornum] == 32'bx) begin
                $display("%d tests completed with %d errors", vectornum, errors);
                $finish;
            end
        end
endmodule
