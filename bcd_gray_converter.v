// BCD to Gray Code and Gray Code to BCD Converter
module bcd_gray_converter(
    input [3:0] bcd,
    input [3:0] gray,
    input mode,
    output reg [3:0] out );
    
    always @(*) begin
        if (mode == 0) begin
            // BCD to Gray Code conversion
            out[3] = bcd[3];
            out[2] = bcd[3] ^ bcd[2];
            out[1] = bcd[2] ^ bcd[1];
            out[0] = bcd[1] ^ bcd[0];
        end else begin
            // Gray to BCD conversion
            out[3] = gray[3];
            out[2] = gray[3] ^ gray[2];
            out[1] = out[2] ^ gray[1];
            out[0] = out[1] ^ gray[0];
        end
    end
endmodule


