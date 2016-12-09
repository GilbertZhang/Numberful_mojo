/*
   This file was generated automatically by the Mojo IDE version B1.3.5.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module adder_34 (
    input [7:0] a,
    input [7:0] b,
    input alufn,
    output reg [7:0] out,
    output reg z,
    output reg v,
    output reg n
  );
  
  
  
  reg [7:0] outp;
  
  always @* begin
    
    case (alufn)
      1'h0: begin
        outp = a + b;
      end
      1'h1: begin
        outp = a - b;
      end
      default: begin
        outp = 1'h0;
      end
    endcase
    
    case (outp[7+0-:1])
      1'h1: begin
        n = 1'h1;
      end
      1'h0: begin
        n = 1'h0;
      end
      default: begin
        n = 1'h0;
      end
    endcase
    if (outp == 8'h00) begin
      z = 1'h1;
    end else begin
      z = 1'h0;
    end
    v = a[7+0-:1] & (b[7+0-:1] ^ alufn) & (~outp[7+0-:1]) | (~a[7+0-:1]) & (~b[7+0-:1] ^ alufn) & outp[7+0-:1];
    out = outp;
  end
endmodule