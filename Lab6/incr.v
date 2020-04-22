// Class: CSCI 401 Computer Architecture
// Lab #1: Instruction Fetch Stage
// Filename        : incr.v

// Comments        : CHANGE: The incrementer is by 1 instead of by 4.
//                   This way, memory is word addressable.  If we need
//                   to change it later we will do that. You may make
//                   this change as well.

module incrementer (
   input  wire [31:0] pcin,      // Input of incrementer
   output wire [31:0] pcout      // Output of incrementer
   );
   assign pcout = pcin + 1;  // Increment PC by 1, *See Comments above
endmodule // incrementer
