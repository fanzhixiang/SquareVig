module square_root_finder(
    input wire rst,
    input wire clk,
    input wire [15 : 0] in,
    output wire [31 : 0] sqrt
    );
reg [1 : 0] state, state_next;
reg [0 : 0] cat, cat_temp;
reg [31 : 0] up, up_temp, low, low_temp, g, g_temp;
wire [31 : 0] inx;

assign sqrt = g;

always@( * )
    case(state)
        2'b11: begin
                state_next = state;
                cat_temp = cat;
                up_temp = up;
                low_temp = low;
                g_temp = g;
            end
        2'b00: begin
                state_next = 2'b01;
                cat_temp = 1'b0;
                up_temp = {10'd0, in, 6'd0};
                low_temp = 32'd0;
                g_temp = 32'd0;
            end
        2'b01: begin
            if (inx > (g * g))
                begin
                    if ((inx - g * g) < 32'd02) begin
                        state_next = 2'b11;
                        cat_temp = cat;
                        up_temp = up;
                        low_temp = low;
                        g_temp = g;

                    end
                    else begin
                        cat_temp = 1'b1;
                        state_next = 2'b10;
                        up_temp = up;
                        low_temp = low;
                        g_temp = g;
                    end
                end
            else
                begin
                    if ((g * g - inx) < 32'd02) begin
                        state_next = 2'b11;
                        cat_temp = cat;
                        up_temp = up;
                        low_temp = low;
                        g_temp = g;
                    end
                    else begin
                        cat_temp = 1'b0;
                        state_next = 2'b10;
                        up_temp = up;
                        low_temp = low;
                        g_temp = g;
                    end
                end
            end
        2'b10: begin
            case(cat)
                1'b1: begin
                    cat_temp = cat;
                    up_temp = up;
                    low_temp = g;
                    g_temp = ((up + g) >> 1);
                    state_next = 2'b01;
                end
                1'b0: begin
                    cat_temp = cat;
                    up_temp = g;
                    low_temp = low;
                    g_temp = ((g + low) >> 1);
                    state_next = 2'b01;
                end
            endcase
         end
    endcase




always @ (negedge rst or  posedge clk) begin
if(~rst)begin
    state <= 2'b00;
    end
else begin
    state <= state_next;
    end
end

assign inx = {4'd0, in, 12'd0};

always @ (negedge rst or  posedge clk) begin
if(~rst)begin
    up <= {10'd0, in, 6'd0};
    end
else begin
    up <= up_temp;
    end
end

always @ (negedge rst or  posedge clk) begin
if(~rst)begin
    low <= 32'd00;
    end
else begin
    low <= low_temp;
    end
end

always @ (negedge rst or  posedge clk) begin
if(~rst)begin
    cat <= 1'b0;
    end
else begin
    cat <= cat_temp;
    end
end

always @ (negedge rst or  posedge clk) begin
if(~rst)begin
    g <= 32'd00;
    end
else begin
    g <= g_temp;
    end
end



endmodule
