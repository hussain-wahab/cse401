`timescale 1ns / 1ps

module memory (
   output reg [31:0] data,       // Output of Instruction Memory
   input wire [31:0] addr        // Input of Instruction Memory
   );

// Register Declarations
   reg [31:0] MEM[0:127];  // 128 words of 32-bit memory

// 002300AA
// 10654321
// 00100022
// 8C123456
// 8F123456
// AD654321
// 13012345
// AC654321
// 12012345

// Initialize Registers
   initial begin
   MEM[0] <= 'h002300AA;
   MEM[1] <= 'h10654321;
   MEM[2] <= 'h00100022;
   MEM[3] <= 'h8C123456;
   MEM[4] <= 'h8F123456;
   MEM[5] <= 'hAD654321;
   MEM[6] <= 'h13012345;
   MEM[7] <= 'hAC654321;
   MEM[8] <= 'h12012345;
   MEM[9] <= 'h00000000;
   end
   
   always @ (addr) data <= MEM[addr];
endmodule // memory
