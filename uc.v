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
				else if(instruction[3] === 1'b0)
					state <= `S_ULA_OP;
				else if(instruction == `STOR)
					state <= `S_STORE_REGA;
			end
		`S_ULA_OP:
			state <= `S_STORE_ULA_RES;	// Salva resultado da ULA no registrador
		`S_STORE_ULA_RES:
			state <= `S_FETCH;
		`S_STORE_REGA:
			state <= `S_FETCH;
			
	endcase

end
  
endmodule
