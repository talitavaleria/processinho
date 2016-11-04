/*
 *	BCDdecode.v
 *
 *  Decodificador BCD
 */
 
 module BCDdecode(
	input[7:0] value, 
	output[7:0] decoded
 );
 
 reg [0:6]decode[0:9];
 
 initial begin
	decode[0] = 7'b1000000;
	decode[1] = 7'b1111001;
	decode[2] = 7'b0100100;
	decode[3] = 7'b0110000;
	decode[4] = 7'b0011001;
	decode[5] = 7'b0010010;
	decode[6] = 7'b0000010;
	decode[7] = 7'b1111000;
	decode[8] = 7'b0000000;
	decode[9] = 7'b0010000;
 end
 
 assign decoded = decode[value];
 
 endmodule
 