`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/06/2025 11:26:28 AM
// Design Name: 
// Module Name: tb_top_axi_iic
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module top_axi_iic_tb;

    // Testbench signals
    reg clk;
    reg rst;
    wire iic_rtl_scl_io;
    wire iic_rtl_sda_io;
    wire [7:0] led; 

    // Bidirectional I2C signals
    wire scl_i, sda_i;
    wire scl_o, sda_o, scl_t, sda_t;

    assign iic_rtl_scl_io = scl_t ? 1'bz : scl_o;
    assign scl_i = iic_rtl_scl_io;

    assign iic_rtl_sda_io = sda_t ? 1'bz : sda_o;
    assign sda_i = iic_rtl_sda_io;

    // Instantiate the top-level module
    top_axi_iic uut (
        .clk(clk),
        .rst(rst),
        .iic_bl_scl_io(iic_rtl_scl_io),
        .iic_bl_sda_io(iic_rtl_sda_io),
        .led(led)
    );

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk; // 100 MHz clock
    end

    // Reset generation
    initial begin
        rst = 1;
        #20 rst = 0; // Release reset after 20 ns
    end

    // Test stimulus
    initial begin
        // Wait for reset deassertion
        @(negedge rst);

        // Simulate I2C communication or other interactions
        // Add specific test cases here as needed

        // Wait for some time to observe behavior
        #5000;

        // End simulation
//        $stop;
    end

    // Monitor LED outputs
//    initial begin
//        $monitor("Time: %0t | LED: %b", $time, led);
//    end

endmodule
