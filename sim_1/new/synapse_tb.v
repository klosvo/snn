`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/14/2022 06:44:38 PM
// Design Name: 
// Module Name: synapse_tb
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


module synapse_tb();

    reg Clk, Rst;
    reg [31:0] AddrIn_tb, SpikeIn_tb;
    wire [31:0] AddrOut_tb, CurrentOut_tb;

    synapse a(Clk, Rst, AddrIn_tb, SpikeIn_tb, AddrOut_tb, CurrentOut_tb);
    
    always begin
        Clk <= 0;
        #100;
        Clk <= 1;
        #100;
    end
    
  initial begin
        Rst <= 1;
        SpikeIn_tb <= 0;
        AddrIn_tb <= 2'h00;
        @ (posedge Clk);
        #5 Rst <= 0;
        @ (posedge Clk);
        #5 SpikeIn_tb <= 1;
        AddrIn_tb <= AddrIn_tb + 1;
        @ (posedge Clk);
        #5 SpikeIn_tb <= 0;
        AddrIn_tb <= AddrIn_tb + 1;
        @ (posedge Clk);
        AddrIn_tb <= AddrIn_tb + 1;
        @ (posedge Clk);
        AddrIn_tb <= AddrIn_tb + 1;
        @ (posedge Clk);
        AddrIn_tb <= AddrIn_tb + 1;
        @ (posedge Clk);
        AddrIn_tb <= AddrIn_tb + 1;
        @ (posedge Clk);
        AddrIn_tb <= AddrIn_tb + 1;
        @ (posedge Clk);
        AddrIn_tb <= AddrIn_tb + 1;
//        @ (posedge Clk);
//        AddrIn_tb <= AddrIn_tb + 1;
//        @ (posedge Clk);
//        AddrIn_tb <= AddrIn_tb + 1;
//        @ (posedge Clk);
//        AddrIn_tb <= AddrIn_tb + 1;
//        @ (posedge Clk);
//        AddrIn_tb <= AddrIn_tb + 1;
//        @ (posedge Clk);
//        AddrIn_tb <= AddrIn_tb + 1;
//        @ (posedge Clk);
//        AddrIn_tb <= AddrIn_tb + 1;
//        @ (posedge Clk);
//        AddrIn_tb <= AddrIn_tb + 1;
        @ (posedge Clk);
        AddrIn_tb <= AddrIn_tb + 1;
        @ (posedge Clk);
        AddrIn_tb <= AddrIn_tb + 1;
        @ (posedge Clk);
        AddrIn_tb <= AddrIn_tb + 1;
        @ (posedge Clk);
        AddrIn_tb <= AddrIn_tb + 1;
        @ (posedge Clk);
        AddrIn_tb <= AddrIn_tb + 1;
        @ (posedge Clk);
        AddrIn_tb <= AddrIn_tb + 1;
        @ (posedge Clk);
        #5 SpikeIn_tb <= 1;
        AddrIn_tb <= AddrIn_tb + 1;
        @ (posedge Clk);
        #5 SpikeIn_tb <= 0;
        AddrIn_tb <= AddrIn_tb + 1;
        @ (posedge Clk);
        AddrIn_tb <= AddrIn_tb + 1;
        @ (posedge Clk);
        AddrIn_tb <= AddrIn_tb + 1;
        @ (posedge Clk);
        AddrIn_tb <= AddrIn_tb + 1;
        @ (posedge Clk);
        AddrIn_tb <= AddrIn_tb + 1;
        @ (posedge Clk);
        AddrIn_tb <= AddrIn_tb + 1;
        @ (posedge Clk);
        AddrIn_tb <= AddrIn_tb + 1;
        @ (posedge Clk);
        AddrIn_tb <= AddrIn_tb + 1;
        @ (posedge Clk);
        AddrIn_tb <= AddrIn_tb + 1;
        @ (posedge Clk);
        AddrIn_tb <= AddrIn_tb + 1;
        @ (posedge Clk);
        AddrIn_tb <= AddrIn_tb + 1;
        @ (posedge Clk);
        AddrIn_tb <= AddrIn_tb + 1;
        @ (posedge Clk);
        AddrIn_tb <= AddrIn_tb + 1;
        @ (posedge Clk);
        AddrIn_tb <= AddrIn_tb + 1;
        @ (posedge Clk);
        @ (posedge Clk);   
        @ (posedge Clk);
        @ (posedge Clk);
        @ (posedge Clk);
        @ (posedge Clk);
        @ (posedge Clk);
        @ (posedge Clk);
        @ (posedge Clk);
        @ (posedge Clk);
        @ (posedge Clk);
        @ (posedge Clk);
        @ (posedge Clk);
        @ (posedge Clk);
        @ (posedge Clk);
        @ (posedge Clk);
        @ (posedge Clk);
        @ (posedge Clk);
        @ (posedge Clk);
        @ (posedge Clk);
        @ (posedge Clk);
        @ (posedge Clk);
        @ (posedge Clk);
        @ (posedge Clk);
        @ (posedge Clk);
        @ (posedge Clk);
        @ (posedge Clk);
        @ (posedge Clk);
        @ (posedge Clk);
        @ (posedge Clk);
        @ (posedge Clk);
        @ (posedge Clk);
        @ (posedge Clk);
        @ (posedge Clk);
        @ (posedge Clk);
        @ (posedge Clk);
        @ (posedge Clk);
        @ (posedge Clk);   
        @ (posedge Clk);
        @ (posedge Clk);
        @ (posedge Clk);
        @ (posedge Clk);
        @ (posedge Clk);
        @ (posedge Clk);
        @ (posedge Clk);
        @ (posedge Clk);
        @ (posedge Clk);
        @ (posedge Clk);
        @ (posedge Clk);
        @ (posedge Clk);
        @ (posedge Clk);
        @ (posedge Clk);
        @ (posedge Clk);
        @ (posedge Clk);
        @ (posedge Clk);
        @ (posedge Clk);
        @ (posedge Clk);
        @ (posedge Clk);
        @ (posedge Clk);
        @ (posedge Clk);
        @ (posedge Clk);
        @ (posedge Clk);
        @ (posedge Clk);
        @ (posedge Clk);
        @ (posedge Clk);
        @ (posedge Clk);
        @ (posedge Clk);
        @ (posedge Clk);
        @ (posedge Clk);
        @ (posedge Clk);
        @ (posedge Clk);
        @ (posedge Clk);
        @ (posedge Clk);
        @ (posedge Clk);        
    end   
    
endmodule
