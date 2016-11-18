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

reg [7:0] value;
wire[11:0] BCDCODE;

initial begin
	value = 8'b0;
	result = 8'b0;
end

Display disp(BCDCODE, HEX3, HEX2, HEX1, HEX0);

always @(*) begin
	//result[7:0] = 8'b0;
	
	if(!reset) begin
		value = 8'b0;
		result = 8'b0;
	end

	case(opcode)
		`ULA_ADD: begin
			value[7:0] = operando1 + operando2;
		end
	
		`ULA_SUB: begin
			value[7:0] = operando1 - operando2;
		end
		
		`ULA_MULT: begin
			value[7:0] = operando1 * operando2;
		end
		
		`ULA_DIV: begin
			value[7:0] = operando1 / operando2;
		end
		
		`ULA_AND: begin
			value[7:0] = operando1 & operando2;
		end
		
		`ULA_OR: begin
			value[7:0] = operando1 | operando2;
		end
		
		`ULA_XOR: begin
			value[7:0] = operando1 ^ operando2;
		end
		
		`ULA_NOT: begin
			value[7:0] = ~operando1;
		end
	
	endcase 
	
end

assign result = grab ? value : result;
assign BCDCODE =((ula_result%10)+(ula_result/10)*16+(ula_result/100)*256);

endmodule
