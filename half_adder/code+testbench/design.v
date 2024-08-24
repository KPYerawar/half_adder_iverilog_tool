module half_adder(
    input a,b,
    output carry,
    output sum
);
assign carry = a & b;
assign sum= a ^ b;
endmodule