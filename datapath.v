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
	input store_data_bus,
	input[3:0] ula_operation,
	inout[7:0] data_bus
);

wire[7:0]  register_operand;
wire[15:0] ula_result;
wire[11:0] BCDCODE;

Display disp(BCDCODE, HEX3, HEX2, HEX1, HEX0);

general_register regA(clock, reset, gp_reg_write, gp_reg_read, data_bus, register_operand); 

ula m_ula(clock, reset, register_operand, data_bus, ula_operation, ula_result);
ula_latch m_ula_latch(clock, reset, ula_result, grab, store_data_bus, data_bus);

assign BCDCODE =((ula_result%10)+(ula_result/10)*16+(ula_result/100)*256);

endmodule
