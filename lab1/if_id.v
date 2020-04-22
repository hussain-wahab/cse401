module if_id(
    input wire [31:0] instr,
                      npc,
    output reg [31:0] instrout,
                      npcout);

    initial begin
        instrout <= 'h0;
        npcout <= 'h0;
    end

    always @* begin
        #1;
        instrout <= instr;
        npcout <= npc;
    end
endmodule
