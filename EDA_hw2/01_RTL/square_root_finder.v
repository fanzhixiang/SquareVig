module square_root_finder(
    input wire rst,
    input wire clk,
    input wire [15 : 0]in,
    output reg [31 : 0] sqrt
    );
reg [1 : 0] state, state_next;
reg [0 : 0] cat, cat_temp;
reg [31 : 0] up, up_temp, low, low_temp, g, g_temp;
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

// always@(state)        //closeEdge
//     case (inx > (g * g))
//         1'b1: begin
//             case((inx - g * g) < 32'd02)
//                 1'b1: state = 2'b11;
//                 1'b0: begin
//                     // g = g_temp;
//                     up = up;
//                     low = g;
//                     g_temp = ((up + g) >> 1);
//                     state = 2'b01;
//                 end
//             endcase
//         end
//         1'b0: begin
//             case((g * g - inx) < 32'd02)
//                 1'b1: state = 2'b11;
//                 1'b0: begin
//                     // g = g_temp;
//                     up = g;
//                     low = low;
//                     g_temp = ((g + low) >> 1);
//                     sqrt = g;
//                     state = 2'b01;
//                 end
//             endcase
//         end
//     endcase

// always @ (negedge clk) begin
//     g <= g_temp;
//     // sqrt <= g_temp;
// end

always@( * )
    case(state)
        2'b11: sqrt = g;
        2'b00: begin sqrt = g; state_next = 2'b01;
                up_temp = (in << 6);
                low_temp = 32'd0;
                g_temp = 32'd0;
                cat_temp = 1'd0;
            end
        2'b01: begin
            if (inx > (g * g))
                begin
                    if ((inx - g * g) < 32'd02) state_next = 2'b11;
                    else begin
                        cat_temp = 1'b1;
                        state_next = 2'b10;
                    end
                end
            else
                begin
                    if ((g * g - inx) < 32'd02) state_next = 2'b11;
                    else begin
                        cat_temp = 1'b0;
                        state_next = 2'b10;
                    end
                end
            end
        2'b10: begin
            case(cat)
                1'b1: begin
                    low_temp = g;
                    g_temp = ((up + g) >> 1);
                    state_next = 2'b01;
                    sqrt = g;
                end
                1'b0: begin
                    up_temp = g;
                    g_temp = ((g + low) >> 1);
                    state_next = 2'b01;
                    sqrt = g;
                end
            endcase
         end
    endcase

always @ (posedge clk or posedge rst) begin
if(rst)begin
    state <= state_next;
    inx <= in << 12;
    up <= up_temp;
    low <= low_temp;
    cat <= cat_temp;
    g <= g_temp;
    end
else begin
    state <= 2'b00;
    inx <= in << 12;
    up <= (in << 6);
    low <= 32'd00;
    cat <= 1'b0;
    g <= 32'd00;
    end
end



endmodule
