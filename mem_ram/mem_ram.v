module mem_ram(
output reg [7:0]saida, 
input [7:0] entrada, 
input [6:0] end_saida,
input [6:0] end_entrada,
input escrita,
input clk
);
 
   reg [6:0] reg_end_saida;
   //reg [7:0] saida;
   reg [7:0] mem [32:0]; // registrador da memoria 8x32
 
always @(posedge clk) 
begin
      
		if (escrita) // se tiver no modo de escrita
         mem[end_entrada] <= entrada; //O endereço da memoria recebe a variavel de entrada (na borda de subida do clock)
			
end
 
always @(negedge clk) 
begin

      saida <= mem[reg_end_saida]; // a variavel de saida recebe o endereço de memoria do registrador da saida (na borda de descida do clock)
      reg_end_saida <= end_saida; // o endereço da saida vai para o registrador do endereço
		
end
        
endmodule
