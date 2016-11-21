/*
 * datapath.v
 * 
 */
 
module datapath(
	input clock,
	input reset,
	input gp_reg_read,
	input gp_reg_write,
	input grab_ula,
	input latch_ula,
	input[3:0] ula_operation,
	inout[7:0] data_bus,
	input pc_inc,
	output [15:0] pc_count,
	output [7:0] mil,
	output [7:0] cent,
	output [7:0] dez,
	output [7:0] und
);

wire[7:0]  register_operand;
wire[15:0] ula_result;
wire[11:0] BCDCODE;

Display disp(BCDCODE, mil, cent, dez, und);

general_register regA(clock, reset, gp_reg_write, gp_reg_read, data_bus, register_operand); 

ula m_ula(clock, reset, register_operand, data_bus, ula_operation, ula_result);
ula_latch m_ula_latch(clock, reset, ula_result, grab_ula, latch_ula, data_bus);

program_counter pc(clock, reset, pc_inc, pc_count);

assign BCDCODE =((ula_result%10)+(ula_result/10)*16+(ula_result/100)*256);

endmodule
