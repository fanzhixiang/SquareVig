module behave;
    reg [1:0] a,b; // a and b are 2-bit register data types
    initial // this statement is executed only once
        begin
            a = 2'b01; // a is initialized to 01
            b = 2'b00; // b is initialized to 00
        end
    always // this statement is repetitively executed until
        begin // simulation is completed
            #50 a = ~a; // register a inverts every 50 time units
        end
    always // this statement is repetitively executed
        begin // simulation is completed
            #100 b = ~b; // register b inverts every 100 time units
        end
endmodule