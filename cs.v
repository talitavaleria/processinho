/*
 * cs.v
 * Unidade de Controle de Sinais
 *
 */
 
module cs(
	input[3:0] state,
	input[3:0] opcode,
	output gp_read,
	output gp_write,
	output latch_ula,
	output grab_ula,
	output pc_increment,
	output rom_read,
	output[3:0] ula_operation
);

assign ula_operation = opcode;

assign gp_read = (state === `S_ULA_OP);

assign latch_ula = (state === `S_ULA_OP);

assign grab_ula = (state === `S_STORE_RES);

assign pc_increment = (state === `S_FETCH);

assign rom_read = (state === `S_FETCH);

endmodule
