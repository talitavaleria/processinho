/*
 * datapath.v
 * 
 */
 
module processinho(
	input clock,
	input reset,
	input latch_ula,
	input[1:0] ula_operation,
	input[3:0] operando1,
	input[3:0] operando2,
	output[7:0] result
);

wire[7:0]  register_operand;
wire[15:0] ula_result;

ula m_ula(clock, reset, operando1, operando2, ula_operation, ula_result);

assign result = ula_result;

endmodule
