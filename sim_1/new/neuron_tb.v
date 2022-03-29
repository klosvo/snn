`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/21/2022 06:08:40 PM
// Design Name: 
// Module Name: neuron_tb
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


module neuron_tb();
    reg Clk, Rst;
    reg [31:0] SpikeIn_tb;
    wire [31:0] SpikeOut_tb, SourceAddr_tb;
//    integer i, j;

    neuron a(Clk, Rst, SpikeIn_tb, SpikeOut_tb, SourceAddr_tb);
    
    always begin
        Clk <= 0;
        #100;
        Clk <= 1;
        #100;
    end
    
    initial begin
        Rst <= 1;
        SpikeIn_tb <= 0;
        @ (posedge Clk);
        #5 Rst <= 0;
        @ (posedge Clk);
        SpikeIn_tb <= 1;
        @ (posedge Clk);
        SpikeIn_tb <= 0;
        @ (posedge Clk);
        SpikeIn_tb <= 1;
        @ (posedge Clk);
        SpikeIn_tb <= 0;
        @ (posedge Clk);
        SpikeIn_tb <= 1;
        @ (posedge Clk);
        SpikeIn_tb <= 0;
        @ (posedge Clk);
        SpikeIn_tb <= 1;
        @ (posedge Clk);
        SpikeIn_tb <= 0;
        @ (posedge Clk);
        SpikeIn_tb <= 1;
        @ (posedge Clk);
        SpikeIn_tb <= 0;
        @ (posedge Clk);
        SpikeIn_tb <= 1;
        @ (posedge Clk);
        SpikeIn_tb <= 0;
        @ (posedge Clk);
        SpikeIn_tb <= 1;
        @ (posedge Clk);
        SpikeIn_tb <= 0;
        @ (posedge Clk);
        SpikeIn_tb <= 1;
        @ (posedge Clk);
        SpikeIn_tb <= 0;
        @ (posedge Clk);
        SpikeIn_tb <= 1;
        @ (posedge Clk);
        SpikeIn_tb <= 0;
        @ (posedge Clk);
        SpikeIn_tb <= 1;
        @ (posedge Clk);
        SpikeIn_tb <= 0;
        @ (posedge Clk);
        SpikeIn_tb <= 1;
        @ (posedge Clk);
        SpikeIn_tb <= 0;
        @ (posedge Clk);
        SpikeIn_tb <= 1;
        @ (posedge Clk);
        SpikeIn_tb <= 0;
        @ (posedge Clk);
        SpikeIn_tb <= 1;
        @ (posedge Clk);
        SpikeIn_tb <= 0;
        @ (posedge Clk);
        SpikeIn_tb <= 1;
        @ (posedge Clk);
        SpikeIn_tb <= 0;
        @ (posedge Clk);
        @ (posedge Clk);
        @ (posedge Clk);
        @ (posedge Clk);
        @ (posedge Clk);
        @ (posedge Clk);
//        for(i = 0; i < 20; i = i+1) begin
//            @ (posedge Clk);
//            #5 SpikeIn_tb <= 1;
//        end
//        #5 SpikeIn_tb <= 0;
//        for(j = 0; j < 20; j = j+1) begin
//            @ (posedge Clk); 
//        end
    end
        
endmodule