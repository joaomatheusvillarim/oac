module mux4x1 (
  input  logic [1:0] sel,
  output logic [7:0] Y
);

  logic [7:0] A = 8'b00011001;
  logic [7:0] B = 8'b00011000;
  logic [7:0] C = 8'b11111100;
  logic [7:0] D = 8'b11111110;

  always_comb begin
    case (sel)
      2'b00: Y = A;
      2'b01: Y = B;
      2'b10: Y = C;
      2'b11: Y = D;
      default: Y = 8'b00000000;
    endcase
  end

endmodule
