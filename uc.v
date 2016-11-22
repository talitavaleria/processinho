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
 
 
 always @(posedge clock)
 begin
	case(state)
		`S_FETCH:
		if(instruction == `NOP)
			state <= `S_FETCH;
		else if(instruction[3] == 1'b0)
			state <= `S_ULA_OP;
		`S_ULA_OP:
			state <= `S_STORE_RES;
		`S_STORE_RES:
			state <= `S_FETCH;
	endcase

end
  
 endmodule
 