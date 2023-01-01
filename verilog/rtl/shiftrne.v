`timescale 1ns / 1ps
module shiftrne ( R,L,E,w,clock,q); 
parameter n=8; 
input [n-1:0] R; 
input L,E,w,clock; 
output [n-1:0] q; 
reg [n-1:0] q; 
integer k; 
always @(posedge clock) 
 if (L) 
 q <= R; 
 else if (E) 
 begin 
 for (k=n-1;k>0;k=k-1) 
 q[k-1] <= q[k]; 
 q[n-1] <= w; 
 end 
endmodule