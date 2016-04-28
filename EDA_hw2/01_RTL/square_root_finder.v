module square_root_finder(
    input wire rst,
    input wire clk,
    input wire [15 : 0]in,
    output reg [31 : 0] sqrt
    );

reg [31 : 0] up, low, g, g_temp;
reg[31 : 0] inx;


// always@(posedge clk)        //closeEdge
//     if (inx > (g * g)) begin
//         if((inx - g * g) < 32'd02) sqrt = g;
//         else begin
//             up = up;
//             low = g;
//             g = ((up + low) >> 1);
//             sqrt = g;
//         end
//     else begin
//         if ((g * g - inx) < 32'd02) sqrt = g;
//         else begin
//             up = g;
//             low = low;
//             g = ((up + low) >> 1);
//             sqrt = g;
//     end
// end

always@(posedge clk)        //closeEdge
    case (inx > (g * g))
        1'b1: begin
            case((inx - g * g) < 32'd02)
                1'b1: sqrt = g;
                1'b0: begin
                    up = up;
                    low = g;
                    g_temp = ((up + g) >> 1);
                    // sqrt = g;
                end
            endcase
        end
        1'b0: begin
            case((g * g - inx) < 32'd02)
                1'b1: sqrt = g;
                1'b0: begin
                    up = g;
                    low = low;
                    g_temp = ((g + low) >> 1);
                    // sqrt = g;
                end
            endcase
        end
    endcase



always @ (posedge rst) begin
    inx <= in << 12;
    up <= (in << 6);
    low <= 32'd00;
    g <= 32'd00;
end
always @ (negedge clk) begin
    g <= g_temp;
    sqrt <= g_temp;
end

endmodule
