/*
 * datapath.v
 * 
 */
 
module datapath(
	input 		 clock,
	input 		 reset,
	input 		 gp_reg_read,			
	input 		 gp_reg_write,
	input        grab_ula,
	input        latch_ula,
	input  [3:0] ula_operation,
	input  [7:0] data_bus_in,
	output [7:0] data_bus_out,
	input        pc_inc,
	output [7:0] pc_count,		// Contador de progama
	output [7:0] mar_value,    // Registrador de memoria
	output [7:0] ir_value,     // Registrador de instrucao
	output [7:0] mil,
	output [7:0] cent,
	output [7:0] dez,
	output [7:0] und
);

wire[7:0]  register_operand;
wire[7:0]  ula_reg;
wire[15:0] ula_result;
wire[11:0] BCDCODE;

Display disp(BCDCODE, mil, cent, dez, und);

general_register regA(clock, reset, gp_reg_read, gp_reg_write, data_bus_in, register_operand);
general_register ula_result_reg(clock, reset, latch_ula, grab_ula, ula_result, ula_reg); 

ula m_ula(clock, reset, register_operand, data_bus_in, ula_operation, ula_result);
ula_latch m_ula_latch(clock, reset, ula_reg, grab_ula, latch_ula, data_bus_out);

program_counter  pc(clock, reset, pc_inc, pc_count);
general_register mar_register(clock, reset, mar_reg_read, mar_reg_write, data_bus_in, mar_value);
general_register ir_register(clock, reset, ir_reg_read, ir_reg_write, data_bus_in, ir_value);

assign BCDCODE =((ula_reg%10)+(ula_reg/10)*16+(ula_reg/100)*256);

endmodule
