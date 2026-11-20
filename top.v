module top(
    input sw,
    output [9:0] led,
    input btnC,
    input btnU
);

    // Hook up binary and one-hot state machines
    wire z_oh, z_bin;
    wire [4:0] oh_state;
    wire [2:0] bin_state;

    one_hot oh(
        .w(sw),
        .clk(btnC),
        .reset(btnU),
        .z(z_oh),
        .state(oh_state)
    );

    binary bin(
        .w(sw),
        .clk(btnC),
        .reset(btnU),
        .z(z_bin),
        .state(bin_state)
    );

    assign led[0] = z_oh;
    assign led[1] = z_bin;
    assign led[6:2] = oh_state;
    assign led[9:7] = bin_state;

endmodule
