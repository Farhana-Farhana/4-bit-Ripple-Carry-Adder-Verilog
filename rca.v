`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.06.2026 01:19:08
// Design Name: 
// Module Name: rca
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


module rca(
    input [3:0] A,
    input [3:0] B,
    input Cin,
    output [3:0] Sum,
    output Cout
);

wire C1, C2, C3;

fa FA0(A[0], B[0], Cin, Sum[0], C1);
fa FA1(A[1], B[1], C1,  Sum[1], C2);
fa FA2(A[2], B[2], C2,  Sum[2], C3);
fa FA3(A[3], B[3], C3,  Sum[3], Cout);

endmodule
