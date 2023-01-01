// SPDX-FileCopyrightText: 2020 Efabless Corporation
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// SPDX-License-Identifier: Apache-2.0

`default_nettype none
/*
 *-------------------------------------------------------------
 *
 * user_proj_example
 *
 * This is an example of a (trivially simple) user project,
 * showing how the user project can connect to the logic
 * analyzer, the wishbone bus, and the I/O pads.
 *
 * This project generates an integer count, which is output
 * on the user area GPIO pads (digital output only).  The
 * wishbone connection allows the project to be controlled
 * (start and stop) from the management SoC program.
 *
 * See the testbenches in directory "mprj_counter" for the
 * example programs that drive this user project.  The three
 * testbenches are "io_ports", "la_test1", and "la_test2".
 *
 *-------------------------------------------------------------
 */

module user_proj_example( A, B, reset, clock, sum); 
input [7:0] A,B; 
input reset,clock; 
output [7:0] sum; 
reg [3:0] count; 
reg s,y,Y; 
wire [7:0] qa,qb,sum; 
wire run; 
parameter G=0,H=1; 
shiftrne shift_A (A,reset,1'b1,1'b0,clock,qa); 
shiftrne shift_B (B,reset,1'b1,1'b0,clock,qb); 
shiftrne shift_sum (8'b0,reset,run,s,clock,sum); 
//adder fsm 
//output and next state combinational circuit 
always @(qa or qb or y) 
 case (y) 
 G : begin 
 s = qa[0]^qb[0]; 
 if (qa[0] &qb[0]) 
 Y = H; 
 else 
 Y = G; 
 end 
 H : begin 
 s = qa[0] ~^qb[0]; 
 if (~qa[0] & ~qb[0]) 
 Y = G; 
 else 
 Y = H; 
 end 
 default : Y = G; 
endcase
 //sequential block 
always @(posedge clock) 
 if (reset) 
 y <= G; 
 else 
 y <= Y; 
//control the shifting process 
always @(posedge clock) 
 if (reset) 
 count = 8; 
 else if (run) count = count - 1; 
assign run=|count; 
endmodule 
`default_nettype wire
