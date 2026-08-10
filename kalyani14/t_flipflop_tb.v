`timescale 1ns/1ps

module t_flipflop_tb;

    reg T;
    reg CLK;

    wire Q;
    wire Q_bar;

    // Instantiate T Flip-Flop
    t_flipflop uut (
        .T(T),
        .CLK(CLK),
        .Q(Q),
        .Q_bar(Q_bar)
    );

    // Clock generation
    initial begin
        CLK = 0;
        forever #5 CLK = ~CLK;
    end

    // Test inputs
    initial begin

        // Create waveform file
        $dumpfile("t_flipflop.vcd");
        $dumpvars(0, t_flipflop_tb);

        // Initially T = 0
        T = 0;

        #10;

        // T = 1 -> Toggle
        T = 1;

        #20;

        // T = 0 -> Hold
        T = 0;

        #10;

        // T = 1 -> Toggle
        T = 1;

        #20;

        // Stop simulation
        $finish;
    end

    // Display output
    initial begin
        $monitor(
            "Time=%0t | CLK=%b | T=%b | Q=%b | Q_bar=%b",
            $time, CLK, T, Q, Q_bar
        );
    end

endmodule