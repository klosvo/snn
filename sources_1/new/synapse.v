`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/02/2022 04:50:37 PM
// Design Name: 
// Module Name: synapse
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
//synapse atob(Clk, Reset, WeightA, SpikeOut, CurrentOut);

module synapse(Clk, Rst, AddrIn, SpikeIn, AddrOut, CurrentOut);
    input Clk, Rst;
    input [31:0] SpikeIn, AddrIn;
    output reg [31:0] CurrentOut, AddrOut;
    
    reg [1:0] State, NextState;
    parameter Waiting = 2'b00, Delay = 2'b01, Spike = 2'b10;
    integer synapticDelay, count;
    reg [7:0] spikeVal;
    (* dont_touch = "true" *) reg tictoc;
    reg enableTimer;
    
    wire ena = 1;
    wire wea = 0;
    wire [31:0] dina = 32'b0;
    wire [31:0] weight;
    
    initial begin
        count <= 0;
        synapticDelay <= 8;
        CurrentOut <= 0;
        spikeVal <= 0;
        tictoc <= 1'b0;
        enableTimer <= 0;
        AddrOut <= 17'b0;
    end
    
    
    blk_mem_gen_0 weight_bram (
      .clka(Clk),
      .ena(ena),
      .wea(wea),
      .addra(AddrOut),
      .dina(dina),
      .douta(weight)
    );
    
    
    always @(tictoc) begin
        CurrentOut <= 32'b0;
        case (State)
            Waiting:    begin
                            if(SpikeIn > 0) begin
                                NextState <= Delay;
                                spikeVal <= SpikeIn; 
                                AddrOut <= AddrIn; end
                            else begin
                                NextState <= Waiting; 
                                spikeVal <= 0; 
                                AddrOut <= 32'b0; end
                            enableTimer <= 0;
                        end
            Delay:      begin          
                            if(count == synapticDelay) begin
                                NextState <= Spike;
                                enableTimer <= 0;
                            end
                            else begin
                                enableTimer <= 1;
                                NextState <= Delay; 
                            end
                        end
            Spike:      begin
                            CurrentOut <= weight * spikeVal;
                            enableTimer <= 0;
                            NextState <= Waiting;
                        end
            default:    begin
                            enableTimer <= 0;
                            NextState <= Waiting;
                        end
        endcase
    end

    always @(posedge Clk) begin
        if (Rst == 1) begin
            State <= Waiting; end
        else begin
            State <= NextState; end   
            
        if (enableTimer == 1) begin
            count <= count + 1; end
        else
            count <= 0; 
  
        tictoc <= ~tictoc;
    end
   
endmodule