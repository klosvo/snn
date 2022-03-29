`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/23/2022 01:25:53 PM
// Design Name: 
// Module Name: Register256_8
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
//Register256_8 weightsStorage(R_Addr, R_en, R_Data, Clk, Rst);

module Register256_8(R_Addr, R_en, R_Data, Clk);

    input [7:0] R_Addr;
    input R_en;
    output reg [7:0] R_Data;
    input Clk;
    
    reg [7:0] RegFile [0:255];
    
    // Read procedure
//    always @* begin
//        if(R_en == 1)
//            R_Data <= RegFile[R_Addr];
//        else
//            R_Data <= 32'hZZZZZZZZ;
//     end

    // Read procedure
    always @* begin
        R_Data <= RegFile[R_Addr];
     end

endmodule
