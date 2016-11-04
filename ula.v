/*
 * ula.v
 * Unidade Logica de Aritmetica
 */
`include "constants.vh"

module ula(
input clock,
input reset, 
input[3:0] operando1, 
input[3:0] operando2, 
input[3:0] opcode, 
output reg[7:0] result
);

always @(*) begin
	//result = 0;

	case(opcode)
		`ULA_ADD: begin
			result = operando1 + operando2;
		end
	
		`ULA_SUB: begin
			if (operando1 < operando2)
				result = (operando2 - operando1);
			else
				result = operando1 - operando2;
		end
		
		`ULA_MULT: begin
			result = operando1 * operando2;
		end
	
	endcase

end

endmodule
