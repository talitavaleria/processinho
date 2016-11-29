`ifndef _constants_vh_
`define _constants_vh_

// ALU Opcodes	

`define ULA_ADD  4'b0001
`define ULA_SUB  4'b0010
`define ULA_MULT 4'b0011
`define ULA_DIV  4'b0100
`define ULA_AND  4'b0101
`define ULA_OR   4'b0110
`define ULA_XOR  4'b1000
`define ULA_NOT  4'b1001

// Unit Control Opcodes
// 4 bits para opcodes

`define NOP   4'b0000
`define ADD   4'b0001  // Soma valor de mem(x) com valor do barramento
`define SUB   4'b0010
`define MULT  4'b0011
`define DIV   4'b0100
`define AND   4'b0101
`define OR    4'b0110
`define XOR   4'b0111
`define LOAD_REGA  4'b1000 // Transfere dados do barramento para o regA
`define LOAD_MEM 	 4'b1001 // Transfere dados de mem(x) para regA
`define STOR       4'b1010 // Transfere conteudo do ula_result_reg para posiçao de memoria 'X'

// Control state

`define S_RESET  4'd0
`define S_FETCH  4'd1
`define S_ULA_OP 4'd2
`define S_STORE_ULA_RES 4'd3
`define S_READ_ULA_RES  4'd4   
`define S_STORE_REGA 4'd5
`define S_READ_REGA  4'd6

`endif


/*
	
	(ADD | SUB | MULT | DIV | AND | OR | XOR) M(X)
	LOAD_BUFF
	LOAD_MEM M(X)
	LOAD_REGA VAL

*/