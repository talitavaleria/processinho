module rom (
	input clock, //clock do processador
	input enable, //habilita a rom
	input[2:0] addr, //endereço 
	output reg[3:0] data_out // instruçao
);

reg [3:0]rm[6:0];

initial begin
	rm[0] = 4'b1001; //STORE
	rm[1] = 4'b0001;
	rm[2] = 4'b0111;
	rm[3] = 4'b0110;
	rm[4] = 4'b0101;
	rm[5] = 4'b0100;
	rm[6] = 4'b0011;
end

always @(negedge clock) begin //mudar para negedge quando usar o clock interno
  if (enable == 1'b1) begin
		data_out = rm[addr];
	end
end

endmodule
