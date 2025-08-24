module alu(
    input rs1,
    input rs2,
    input imm12,
    output rd
);

always @(posedge clk) begin
    
    case (state)

        ADD: rd <= rs1 + rs2;
        ADDI: rd <= rs1 + 

        SUB: r3 <= r1 - r2;

        LW: rd <= imm12;

        SW: rs1 <= imm12;

        BEQ:


    endcase

end


endmodule