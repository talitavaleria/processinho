/*
 * processinho.v
 * 
 */
 
module processinho(
	input clock,
	//input reset,
	input latch_ula,
	input[3:0] ula_operation,
	input[7:0] operando,
	input setRegA,
	input setRegB,
	output[9:0] result,
	output[7:0] HEX0,
	output[7:0] HEX1,
	output[7:0] HEX2,
	output[7:0] HEX3
);

reg reset;

initial
begin
	reset = 0;
	//ram_enable = 1;
end

/* 
 *  TODO - fazer o controle da RAM
 */
ram ram_memory(clock, ram_enable, we, addr, data_in, data_out);

datapath dp(clock, reset, gp_read, gp_write, data_bus, latch_ula, operando);

assign result = ula_result;

endmodule
