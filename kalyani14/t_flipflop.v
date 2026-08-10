`timescale 1ns/1ps

module t_flipflop (
    input  wire T,
    input  wire CLK,
    output reg  Q,
    output wire Q_bar
);

    // T Flip-Flop
    // Changes state on every rising clock edge when T = 1
    always @(posedge CLK) begin
        if (T)
            Q <= ~Q;      // Toggle
        else
            Q <= Q;       // Hold
    end

    // Complement of Q
    assign Q_bar = ~Q;

endmodule