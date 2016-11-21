/*
 * program_counter.v
 * 
 */

module program_counter(
	input clock,
	input reset,
	input increment,
	output reg [15:0] count
);


always @(posedge clock)
begin
	if(~reset)
		count <= 0;
	else if(increment)
		count <= count + 1;
end

endmodule
