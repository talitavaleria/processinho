/*
 * uc.v
 * Unidade de Controle
 *
 */
 module uc(
	input clock,
	input reset,
	input[3:0] instruction,
	output reg[3:0] state
 );
 
 
 always @(negedge clock)
 begin
	case(state)
		`S_RESET:
			state <= `S_FETCH;
		`S_FETCH:
			begin
				if(instruction == `NOP)
					state <= `S_FETCH;
				else if(instruction[3] == 1'b0)
					state <= `S_ULA_OP;
				else if(instruction == `STORE)
					state <= `S_STORE_REG;
			end
		`S_ULA_OP:
			state <= `S_STORE_RES;
		`S_STORE_RES:
			state <= `S_FETCH;
		`S_STORE_REG:
			state <= `S_FETCH;
			
	endcase

end
  
 endmodule
 
/*

`define NOP   4'b0000
`define ADD   4'b0001
`define SUB   4'b0010
`define MULT  4'b0011
`define DIV   4'b0100
`define AND   4'b0101
`define OR    4'b0110
`define XOR   4'b0111
`define LOAD  4'b1000
`define STORE 4'b1001
 
 
`define S_RESET  4'd0
`define S_FETCH  4'd1
`define S_ULA_OP 4'd2
`define S_STORE_RES 4'd3
`define S_STORE_REG 4'd4
*/