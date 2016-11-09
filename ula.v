/*
 * ula.v
 * Unidade Logica de Aritmetica
 */
`include "constants.vh"

module ula(
input clock,
input reset, 
input[3:0] operando1, 
input[2:0] operando2, 
input[3:0] opcode, 
output reg[7:0] result
);


always @(*) begin
	result[7:0] = 8'b0;

	case(opcode)
		`ULA_ADD: begin
			result[3:0] = operando1 + operando2;
		end
	
		`ULA_SUB: begin
			if (operando1<operando2)
				result[3:0] = (operando2 - operando1);
			else
				result[3:0] = operando1 - operando2;
		end
		
		`ULA_MULT: begin
			result[7:0] = operando1 * operando2;
		end
		
		`ULA_DIV: begin
			result[3:0] = operando1 / operando2;
		end
		
		`ULA_AND: begin
			result[3:0] = operando1 & operando2;
		end
		
		`ULA_OR: begin
			result[3:0] = operando1 | operando2;
		end
		
		`ULA_XOR: begin
			result[3:0] = operando1 ^ operando2;
		end
		
		`ULA_NOT: begin
			result[3:0] = ~operando1;
		end
	
	endcase 
	

end

endmodule
