module alu (
  input  logic [7:0] A,
  input  logic [7:0] B,
  input  logic [1:0] sel,
  output logic [7:0] Y
);

  always_comb begin
    case (sel)
      2'b00: Y = A + B;
      2'b01: Y = A - B;
      2'b10: Y = A | B;
      2'b11: Y = A & B;
      default: Y = 8'b00000000;
    endcase
  end

endmodule
