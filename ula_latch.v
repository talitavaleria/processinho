module ula_latch(
	input clock,
	input reset,
	input[7:0] ula_result,
	input grab,    			// armazena o valor 
	input store_data_bus,	// coloca resultado no barramento	
	output reg[7:0] out
);

reg[7:0] value;

always @(negedge clock) begin
	if(reset == 1'b1)
		value <= 8'b0;
	
	if(grab == 1'b1) begin
		value <= ula_result;
	end
	
	if(store_data_bus == 1'b1)
		out <= value;
	
end

/*always @(*) begin
	if(store_data_bus == 1'b1)
		out = value;
end*/

endmodule
