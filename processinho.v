/*
 * processinho.v
 * 
 */
 
module processinho(
	input clock,
	//input reset,
	input latch_ula,
	input[3:0] ula_operation,
	input[3:0] operando,
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
	enable = 1;
end

wire[11:0] BCDCODE;
wire[7:0] register_operand;
wire[7:0] ula_result;
wire[3:0] regAValue;
wire[3:0] regBValue;

// Registradores de uso geral RegA e RegB
general_register regA(clock, reset, setRegA, operando, regAValue);
general_register regB(clock, reset, setRegB, operando, regBValue);

// Instancia a ULA
ula m_ula(clock, reset, regAValue, regBValue, ula_operation, ula_result);

// Coloca o resultado da ula nos displays de 7 segmentos
Display disp(BCDCODE, HEX3, HEX2, HEX1, HEX0);

/* 
 *  TODO - fazer o controle da RAM
 */
ram ram_memory(clock, enable, we, addr, data_in, data_out);

assign result = ula_result;
assign BCDCODE =((ula_result%10)+(ula_result/10)*16+(ula_result/100)*256);

endmodule
