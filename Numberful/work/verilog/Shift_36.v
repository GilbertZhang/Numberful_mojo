/*
   This file was generated automatically by the Mojo IDE version B1.3.5.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module shift_36 (
    input [1:0] alufn,
    input [7:0] a,
    input [7:0] b,
    output reg [7:0] out
  );
  
  
  
  always @* begin
    
    case (alufn)
      2'h0: begin
        out = a << b;
      end
      2'h1: begin
        out = a >> b;
      end
      2'h3: begin
        out = $signed(a) >>> b;
      end
      default: begin
        out = 1'h0;
      end
    endcase
  end
endmodule
