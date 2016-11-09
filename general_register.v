/*
 *	general_register.v
 *
 *  Registrador de 8 bits de uso geral
 */

module general_register(
	input clock,
	input reset,				 // Ativado em nivel baixo
	input setValue, 			 // Quando em nivel alto armazena valor no registrador	
	input[3:0] valueIn,		 // Valor a ser armazenado no registrador
	output reg[3:0] valueOut // Valor armazenado no registrador
);

always @(posedge clock)
begin
	if(reset)   //reseta o registrador
	begin
		valueOut = 0;
	end
	
	if(setValue)
	begin
		valueOut = valueIn;
	end
	
end

endmodule
