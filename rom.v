module rom (
	wire enable, 
	wire[2:0] addr,
	output reg[2:0] data_out
);

reg [3:0]rom[6:0];

initial begin
	rom[0] = 3'b101;
	rom[1] = 3'b010;
	rom[2] = 3'b111;
	rom[3] = 3'b110;
	rom[4] = 3'b101;
	rom[5] = 3'b100;
	rom[6] = 3'b011;
end

always @(1) begin
  if (enable == 1) begin
		data_out <= rom[addr];
	end
end

endmodule
