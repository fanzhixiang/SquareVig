module square_root_finder(clk, rst, in, sqrt);
input [15 : 0] in;
input rst;
input clk;
output [15 : 0] sqrt;
reg [15 : 0] sqrt, g, up, low;
reg[31 : 0] inx;

initial@(posedge rst) begin
    inx <= in << 12;
end

always@(posedge clk)        //closeEdge
    if (inx > (g * g)) begin
        if((inx - g * g) < 16'd02) sqrt <= g;
        else begin
            up = up;
            low = g;
            g = ((up + low) >> 1); end
        end
    else begin
        if ((g * g - inx) < 16'd02) sqrt <= g;
        else begin
            up = g;
            low = low;
            g = ((up + low) >> 1);
    end
end



always @ (posedge rst) begin
    up <= (in << 6);
    g  <= 16'd00;
    low <= 16'd00;
end

endmodule
