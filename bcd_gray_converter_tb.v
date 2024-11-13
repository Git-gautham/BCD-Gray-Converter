// Testbench for BCD to Gray Code and Gray Code to BCD Converter
module tb_bcd_gray_converter;
    reg [3:0] bcd;         // BCD input
    reg [3:0] gray;        // Gray input
    reg mode;              // Mode: 0 for BCD to Gray, 1 for Gray to BCD
    wire [3:0] out;        // Output from the converter

    // Instantiate the bcd_gray_converter module
    bcd_gray_converter uut (
        .bcd(bcd),
        .gray(gray),
        .mode(mode),
        .out(out)
    );

    initial begin
        // Create the VCD file for GTKWave
        $dumpfile("output.vcd");
        $dumpvars(0, tb_bcd_gray_converter);

        // Monitor outputs
        $monitor("Mode: %b, BCD Input: %b, Gray Input: %b, Output: %b", mode, bcd, gray, out);

        // Test BCD to Gray conversion
        mode = 0; // Set mode to BCD to Gray
        bcd = 4'b0000; #10;
        bcd = 4'b0001; #10;
        bcd = 4'b0010; #10;
        bcd = 4'b0100; #10;
        bcd = 4'b1000; #10;
        bcd = 4'b1001; #10;

        // Test Gray to BCD conversion
        mode = 1; // Set mode to Gray to BCD
        gray = 4'b0000; #10;
        gray = 4'b0001; #10;
        gray = 4'b0011; #10;
        gray = 4'b0110; #10;
        gray = 4'b1100; #10;
        gray = 4'b1001; #10;

        $finish; // End the simulation
    end
endmodule

