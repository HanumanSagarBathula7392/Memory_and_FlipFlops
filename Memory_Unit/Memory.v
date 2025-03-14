module Memory(input reg_write,clk,reset,
                input [4:0] rs1,rs2,rd,
                input [31:0]write_data,
                output [31:0]data1,
                output [31:0] data2);

reg [31:0] reg_mem[31:0];

integer i=0;

always @(posedge clk or posedge reset) begin
    if (reset) begin
        for (i = 0; i < 32; i = i + 1) begin //Initialize register memory from 0 to 31.
            reg_mem[i] <= i;
        end
    end 
    else if (reg_write) begin
        reg_mem[rd] <= write_data; // Storing the ALU output to the rd location.
    end
end

assign data1 = reg_mem[rs1];
assign data2 = reg_mem[rs2];             

endmodule