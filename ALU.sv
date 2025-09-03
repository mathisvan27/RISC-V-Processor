module alu(
    input clk,
    input logic [31:0] rs1,
    input logic [31:0] rs2,
    input logic [31:0] imm12,
    input [31:0] state,
    output logic [31:0] rd
);

parameter ADDI = 1, SUBI = 2;

always @(*) begin
    rd = 32'b0;

    case (state)
        ADDI: rd = rs1 + imm12;
        SUBI: rd = rs1 - imm12;
    endcase

end


endmodule