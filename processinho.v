/*
 * processinho.v
 * 
 */
 
module processinho(
	input clock,
	input reset,
	//input latch_ula, 				// coloca resultado da ula no barramento
	//input grab_ula,            // salva o resultado na ula no buffer
	//input[3:0] ula_operation,  // operaco a ser realizada na ula
	input[3:0] data_bus_in,  	      // dado a ser armazenado
	//input gp_read,
	//input gp_write,
	//input pc_increment,
	//input pc_cout,
	output[3:0] state,
	output[7:0] result,
	output[7:0] HEX0,
	output[7:0] HEX1,
	output[7:0] HEX2,
	output[7:0] HEX3
);

wire[3:0] pc_count;
wire[7:0] data_bus_out;
wire[3:0] ula_operation;
wire pc_increment;
wire latch_ula;
wire grab_ula;
wire gp_read;
wire gp_write;
wire rom_enable; 

initial
begin
	//state = `S_FETCH;
	//reset = 1'b0;
	//data_bus = 8'b0;
	//pc_increment = 1'b0;
	//pc_count = 3'b0;
	//rom_enable = 1;
end

/* 
 *  TODO - fazer o controle da RAM
 */
ram ram_memory(clock, ram_enable, we, addr_ram, data_in, data_out);
rom rom_memory(clock, rom_enable, pc_count, opcode);
//uc control_unit(clock, reset, opcode, state);
//cs control_signal(clock, opcode, gp_read, gp_write, latch_ula, grab_ula, pc_increment, rom_enable, ula_operation);

datapath dp(	clock, 
					reset, 
					gp_read, 
					gp_write, 
					grab_ula, 
					latch_ula, 
					ula_operation,
					data_bus_in,
					data_bus_out,
					pc_increment,
					pc_count,
					mar_value,
					ir_value,
					HEX3, HEX2, HEX1, HEX0
				);
				
//assign data_bus = operando;
assign result = opcode;
assign rom_enable = 1'b1;
//assign pc_increment = 1'b0;
//assign ula_operation = `ULA_ADD;
endmodule
