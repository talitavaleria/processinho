/*
 * processinho.v
 * 
 */
 
module processinho(
	input clock,
	//input reset,
	input latch_ula, 				// coloca resultado da ula no barramento
	input grab_ula,            // salva o resultado na ula no buffer
	input[3:0] ula_operation,  // operaco a ser realizada na ula
	inout[7:0] data_bus,  	      // dado a ser armazenado
	input pc_increment,
	output[7:0] result,
	output[7:0] HEX0,
	output[7:0] HEX1,
	output[7:0] HEX2,
	output[7:0] HEX3
);

reg reset;
reg [2:0]pc_count;
wire[2:0] opcode;

initial
begin
	reset = 1'b0;
	//data_bus = 8'b0;
//	pc_increment = 1'b0;
//	pc_count = 3'b0;
//	rom_enable = 1;
end

/* 
 *  TODO - fazer o controle da RAM
 */
ram ram_memory(clock, ram_enable, we, addr_ram, data_in, data_out);
rom rom_memory(clock, rom_enable, pc_count, opcode);

/*datapath dp(	clock, 
					reset, 
					gp_read, 
					gp_write, 
					grab_ula, 
					latch_ula, 
					ula_operation,
					data_bus,
					pc_increment,
					pc_count, 
					HEX3, HEX2, HEX1, HEX0
				);*/

//assign data_bus = operando;
assign result = opcode;
assign rom_enable = 1;

always @(posedge pc_increment) begin
	pc_count = pc_count+3'b1 > 6 ? 3'b0 : pc_count+3'b1;
end

endmodule
