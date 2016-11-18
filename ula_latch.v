module ula_latch(
	input clock,
	input reset,
	input[7:0] ula_result,
	input grab,    			// armazena o valor 
	input store_data_bus,	// coloca resultado no barramento	
	output reg out
);

reg[7:0] value;

always @(posedge clock) begin
	if(reset == 1'b0)
		value <= 8'b0;
	end
	
	if(grab == 1'b1) begin
		value = ula_result;
	end
	
end

always @(*) begin
	if(store_data_bus == 1'b1)
		out = value;
end

endmodule
