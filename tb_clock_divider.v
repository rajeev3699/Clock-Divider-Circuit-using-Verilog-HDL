
`timescale 1ns/1ps
module tb_clock_divider;
    reg clk;
    reg rst;
    wire clk_div2, clk_div4, clk_div8;

    
    clock_divider uut (
        .clk(clk),
        .rst(rst),
        .clk_div2(clk_div2),
        .clk_div4(clk_div4),
        .clk_div8(clk_div8)
    );

   
    initial begin
        clk = 0;
        forever #10 clk = ~clk;
    end

    
    initial begin
        rst = 1;
        #25;          
        rst = 0;      
        #500;         
        $finish;
    end

   
    initial begin
        $display("Time\tclk\tclk_div2\tclk_div4\tclk_div8");
        $monitor("%dns\t%b\t%b\t%b\t%b", $time, clk, clk_div2, clk_div4, clk_div8);
    end

endmodule
