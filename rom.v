module rom (
	input clock, //clock do processador
	input enable, //habilita a rom
	input[2:0] addr, //endereço 
	output reg[2:0] data_out // instruçao
);

reg [3:0]rm[6:0];

initial begin
	rm[0] = 3'b101;
	rm[1] = 3'b010;
	rm[2] = 3'b111;
	rm[3] = 3'b110;
	rm[4] = 3'b101;
	rm[5] = 3'b100;
	rm[6] = 3'b011;
end

always @(posedge clock) begin
  if (enable == 1'b1) begin
		data_out = rm[addr];
	end
end

endmodule
