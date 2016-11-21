/*
 * ula.v
 * Unidade Logica de Aritmetica
 */
`include "constants.vh"

module ula(
input clock,
input reset, 
input grab,
input[3:0] operando1, 
input[3:0] operando2, 
input[3:0] opcode, 
output reg[7:0] result
);

wire[11:0] BCDCODE;

initial begin
	result = 8'b0;
end

Display disp(BCDCODE, HEX3, HEX2, HEX1, HEX0);

always @(*) begin
	//result[7:0] = 8'b0;
	
	if(!reset) begin
		result = 8'b0;
	end

	case(opcode)
		`ULA_ADD: begin
			result[7:0] = operando1 + operando2;
		end
	
		`ULA_SUB: begin
			result[7:0] = operando1 - operando2;
		end
		
		`ULA_MULT: begin
			result[7:0] = operando1 * operando2;
		end
		
		`ULA_DIV: begin
			result[7:0] = operando1 / operando2;
		end
		
		`ULA_AND: begin
			result[7:0] = operando1 & operando2;
		end
		
		`ULA_OR: begin
			result[7:0] = operando1 | operando2;
		end
		
		`ULA_XOR: begin
			result[7:0] = operando1 ^ operando2;
		end
		
		`ULA_NOT: begin
			result[7:0] = ~operando1;
		end
	
	endcase 
	
end

assign BCDCODE =((result%10)+(result/10)*16+(result/100)*256);

endmodule
