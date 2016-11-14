module ram(
	input clock,				// clock do processador
	input enable,				// habilitar para testes com chave
	input we,					// write enable
	input [2:0] addr,			// endereco
	input [2:0] data_in,    // dados de entrada
	output reg[2:0]data_out // dados de saida
);

reg [2:0] mem [9:0]; // ram 9x3 bits

always @(posedge clock) begin
	if (we) begin // nivel alto, seta pra funçao escrever
	
		/* Serve para que primeiro seja escolhido o dado e posiçao e so 
		 *	salve na memoria depois de habilitar o enable, evitando reescrever
		 * em outras posiçoes. 
		 */
		if (enable) // nivel alto, escreve na posiçao "addres" da memoria o dado "data_in". 
			mem[addr] = data_in;
	end
	
	//nivel baixo, atribui a q o valor da memoria que ta na posiçao a
	else data_out = mem[addr];
		  
end
	
endmodule