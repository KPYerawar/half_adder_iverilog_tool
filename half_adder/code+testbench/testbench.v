module testbench;
        reg a,b;
        wire carry,sum;


        half_adder uut(
            .a(a),
            .b(b),
            .carry(carry),
            .sum(sum)
        );
         
       
    initial begin 
        $dumpfile("dump.vcd");
        $dumpvars(0, testbench);

        // Apply test vectors
        a = 0; b = 0; #100;
        a = 1; b = 0; #100;
        a = 0; b = 1; #100;
        a = 1; b = 1; #100;

        // End simulation
        $finish;
    end
endmodule
