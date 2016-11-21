/*
 *	general_register.v
 *
 *  Registrador de 8 bits de uso geral
 */

module general_register(
	input clock,
	input reset,				 // Ativado em nivel baixo
	input read_data, 			 // Coloca os dados no barramento
	input write_data,        // Salva dados do barramento no registrador
	input[7:0] data_bus,		 // Valor a ser armazenado no registrador
	output reg[7:0] valueOut // Valor armazenado no registrador
);

reg[7:0] value;

initial begin
	value = 8'b0;
end

always @(posedge clock)	
begin
	if(reset)   //reseta o registrador
	begin
		valueOut = 0;
	end
	
	if(write_data)
	begin
		value = data_bus;
	end
		
	if(read_data)
	begin
		valueOut = value;
	end
	
end

endmodule
