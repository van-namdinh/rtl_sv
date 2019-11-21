/*
 * Project name   :
 * File name      : fulladderNbittb.sv
 * Created date   : Th08 01 2019
 * Author         : Van-Nam DINH 
 * Last modified  : Th08 01 2019 12:04
 * Desc           :
 */

module fulladderNbittb();
    logic   clk, reset;
    logic   [7:0] a,b;
    logic   cin;
    logic   [7:0] y, yexpected;
    logic   cout;
    logic [31:0] vectornum, errors;
    logic [24:0] testvectors[10000:0];

    fulladderNbit dut(a,b,cin,y,cout);
    always
    begin
        clk = 1; #5; clk = 0; #5;
    end

    initial 
    begin
        $readmemb("fulladderNbittb.tv", testvectors);
        vectornum = 0; errors = 0;
        reset = 1; #27; reset = 0;
    end
    always @(posedge clk)
    begin
       #1; {a,b,cin,yexpected} = testvectors[vectornum];
   end

  always @(negedge clk)
      if(~reset) begin
          if(y !== yexpected) begin
             $display ("error: inputs = %b", {a,b,cin});
            $display("outputs = %b (%b expected)", y, yexpected);
           errors = errors + 1;
       end
      vectornum = vectornum + 1;
      if(testvectors[vectornum] === 25'bx) begin
          $display("%d tests completed with %d errors", vectornum, errors);
          $finish;
      end
  end
endmodule
