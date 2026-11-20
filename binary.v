// Implement binary state machine
module binary(
    input w,
    input clk,
    input reset,
    output z,
    output [2:0] state
);
    wire y2, y1, y0;
    wire Y2, Y1, Y0;

    dff two (.Default(1'b0), .D(Y2), .clk(clk), .reset(reset), .Q(y2));
    dff one (.Default(1'b0), .D(Y1), .clk(clk), .reset(reset), .Q(y1));
    dff zero(.Default(1'b0), .D(Y0), .clk(clk), .reset(reset), .Q(y0));

    assign Y2 = (w & y2) | (w & y1 & y0);
    assign Y1 = (~y1 & y0) | (y1 & ~y0) | (w & ~y2 & ~y1);
    assign Y0 = (~w & y1 & y0) | (~w & ~y1 & ~y0) | (w & ~y2 & ~y1) | (w & ~y2 & ~y0);

    assign z = y2 | (y1 & ~y0);

    assign state = {y2, y1, y0};
endmodule
