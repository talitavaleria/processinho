/*
 *	BCDdecode.v
 *
 *  Decodificador BCD
 */
 
 module Display(
	input[11:0] value,
	output reg[7:0] mil,
	output reg[7:0] cent,
	output reg[7:0] dez,
	output reg[7:0] und
 );
 
reg [0:6]mem[0:10];
reg [11:0] val;

initial begin
	mem[0] = 7'b1000000;
	mem[1] = 7'b1111001;
	mem[2] = 7'b0100100;
	mem[3] = 7'b0110000;
	mem[4] = 7'b0011001;
	mem[5] = 7'b0010010;
	mem[6] = 7'b0000010;
	mem[7] = 7'b1111000;
	mem[8] = 7'b0000000;
	mem[9] = 7'b0010000;
	mem[10] = 7'b0111111;

end

always @(*) begin
 
	if ( value >= 296)
		begin
			val = 918-value;  // 4096 - 12 bits -> subtrair a quantidade de bits +1 pelo value
			mil = mem[10];
		end
	else
		begin
			val=value;
			mil = ~mem[8];
		end

	und = mem[val[3:0]];
	dez = mem[val[7:4]];
	cent = mem[val[11:8]];

end
	
endmodule
 