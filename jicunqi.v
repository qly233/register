`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:18:50 12/08/2021 
// Design Name: 
// Module Name:    jicunqi 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module jicunqi(d,clk,oe,clr,q);
	input[3:0] d;
	input clk,oe,clr;
	output reg[3:0] q;
	always@(oe or clr or clk)
	begin
		if(oe)
			q<=4'bzzzz;
		else if(clr)
			q<= 4'b0000;
		else if(clk)
		begin
			q <= d;
		end
	end
endmodule
