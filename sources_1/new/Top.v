`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/23/2022 01:05:52 PM
// Design Name: 
// Module Name: Top
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


module Top(input Clk, Reset, SpikeIn,
            output [31:0] AddrB, CurrentOut);
           
    // Spike wires
    wire [7:0] SpikeA, SpikeB;
    
    //Address wires
    wire [7:0] AddrA;
    
    // Weight wires
    wire [7:0] WeightA;

    neuron a(Clk, Reset, SpikeIn, SpikeA, AddrA);

//    Register256_8 weight_store(AddrA, 1, WeightA, Clk);
 
    synapse atob(Clk, Reset, AddrA, SpikeA, AddrB, CurrentOut);
    
//    neuron b(Clk, Reset, CurrentOut, SpikeB, AddrB);

endmodule
