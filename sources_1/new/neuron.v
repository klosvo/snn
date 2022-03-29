`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/21/2022 04:44:51 PM
// Design Name: 
// Module Name: neuron
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
//neuron a(Clk, Reset, SpikeIn, SpikeOut, SourceAddrA);

module neuron(Clk, Rst, SpikeIn, SpikeOut, SourceAddr);
    input Clk, Rst;
    input [31:0] SpikeIn;
    output reg [31:0] SpikeOut, SourceAddr;
    
    reg [1:0] State, NextState;
    parameter Waiting = 2'b00, Accumulate = 2'b01, Spike = 2'b10, Refractory = 2'b11;
    integer count, threshold, membranePot;
    reg enableTimer, refractoryOver, tictoc, accumulatePot;
    reg [7:0] refractoryPeriod;
    
    initial begin
        count <= 0;
        membranePot <= 0;
        threshold <= 4;
        enableTimer <= 0;
        accumulatePot <= 0;
        refractoryOver <= 0;
        refractoryPeriod <= 8;
        tictoc <= 1'b0;
        SourceAddr <= 0;
    end
    
    always @(tictoc, State) begin
        SpikeOut <= 0;
        case (State)
            Waiting:    begin
                            if(SpikeIn > 0) begin
                                membranePot = membranePot + SpikeIn;
                                NextState <= Accumulate; end
                            else begin
                                membranePot = 0;
                                NextState <= Waiting; end
                        end
            Accumulate: begin
                            membranePot = membranePot + SpikeIn; 
                            if(membranePot >= threshold) begin
                                    NextState <= Spike; end
                            else begin
                                    NextState <= Accumulate; end
                        end
            Spike:      begin
                            membranePot = 0;
                            SpikeOut <= 1;
                            enableTimer <= 1;
                            NextState <= Refractory;
                        end
            Refractory: begin
                            membranePot <= 0;
                            if (count == refractoryPeriod) begin
                                enableTimer <= 0;
                                NextState <= Waiting; end
                            else begin
                                NextState <= Refractory; 
                                end
                        end
            default:    begin
                            membranePot = 0;
                            NextState <= Waiting;
                        end
        endcase
    end
    
    
    always @(posedge Clk) begin
        if (Rst == 1) begin
            State <= Waiting;
        end
        else begin
            State <= NextState;
        end
            
        if (enableTimer == 1) begin
            count <= count + 1; end
        else begin
            count <= 0; end
            
        SourceAddr <= SourceAddr + 1;
        tictoc <= ~tictoc;
    end
   
endmodule