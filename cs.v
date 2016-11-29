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

assign ula_operation = (state == `S_ULA_OP) ? opcode : 4'b0000;
//assign ula_operation = opcode;

assign gp_read = (state == `S_ULA_OP); // Le valor do RegA

assign gp_write = (state == `S_STORE_REGA); // Armazena valor em RegA

assign grab_ula = (state == `S_ULA_OP); // Salva resultado da ula

assign latch_ula = (state == `S_STORE_ULA_RES); // Salva resultado da ula no registrador ula_res

assign pc_increment = (state == `S_FETCH);

assign rom_read = (state == `S_FETCH);

endmodule
