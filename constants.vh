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
`define ADD   4'b0001
`define SUB   4'b0010
`define MULT  4'b0011
`define DIV   4'b0100
`define AND   4'b0101
`define OR    4'b0110
`define XOR   4'b0111
`define LOAD  4'b1000
`define STORE 4'b1001

// Control state

`define S_RESET  4'd0
`define S_FETCH  4'd1
`define S_ULA_OP 4'd2
`define S_STORE_RES 4'd3
`define S_STORE_REG 4'd4

`endif
