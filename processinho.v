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
	//input pc_increment,
	//input pc_cout,
	output[7:0] result,
	output[7:0] HEX0,
	output[7:0] HEX1,
	output[7:0] HEX2,
	output[7:0] HEX3
);

reg reset;
wire pc_increment;
wire pc_count;
//wire[7:0] data_bus;

initial
begin
	reset = 1'b0;
	//data_bus = 8'b0;
//	pc_increment = 1'b0;
//	pc_count = 1'b0;
	//ram_enable = 1;
end

/* 
 *  TODO - fazer o controle da RAM
 */
ram ram_memory(clock, ram_enable, we, addr, data_in, data_out);

datapath dp(	clock, 
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
				);

//assign data_bus = operando;
assign result = data_bus;
assign pc_count = 1'b0;
assign pc_increment = 1'b0;

endmodule
