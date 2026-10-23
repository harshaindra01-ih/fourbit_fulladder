// Testbench for 4-bit adder

module adder_tb;

reg  [3:0] a, b;
reg        cin;
wire [3:0] s;
wire       cout;

// Instantiate the Unit Under Test (UUT)
adder4bit uut (
    .a(a),
    .b(b),
    .cin(cin),
    .s(s),
    .cout(cout)
);

initial begin
    // Dump waveform
    $dumpfile("wave.vcd");
    $dumpvars(0, adder_tb);

    // Test case 1
    a   = 4'b0011;
    b   = 4'b0001;
    cin = 1'b0;
    #10;

    $finish;
end

endmodule