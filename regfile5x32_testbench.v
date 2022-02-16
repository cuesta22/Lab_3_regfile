module regfile5x32_testbench();
reg clk, reset, write;
reg [4:0] wrAddr, rdAddrA, rdAddrB;
reg [31:0] wrData;
wire [31:0] rdDataA, rdDataB;
regfile5x32a dut(clk,reset,write,wrAddr,wrData,rdAddrA,rdDataA,rdAddrB,rdDataB);
initial begin
reset = 1;
write = 0;
clk = 0;
wrAddr = 31;
rdAddrA = 30;
rdAddrB = 29;
wrData = 0;
#10 reset = 0;
write = 1;
#700 $stop;
end
always
#10 clk = ~clk;

always begin
#10;
wrData = $random;
wrAddr = wrAddr + 1;
rdAddrA = rdAddrA + 1;
rdAddrB = rdAddrB + 1;
#10;
end
wire [31:0] register [31:0];
assign register[0] = dut.register[0];
assign register[1] = dut.register[1];
assign register[2] = dut.register[2];
assign register[3] = dut.register[3];
assign register[4] = dut.register[4];
assign register[5] = dut.register[5];
assign register[6] = dut.register[6];
assign register[7] = dut.register[7];
assign register[8] = dut.register[8];
assign register[9] = dut.register[9];
assign register[10] = dut.register[10];
assign register[11] = dut.register[11];
assign register[12] = dut.register[12];
assign register[13] = dut.register[13];
assign register[14] = dut.register[14];
assign register[15] = dut.register[15];
assign register[16] = dut.register[16];
assign register[17] = dut.register[17];
assign register[18] = dut.register[18];
assign register[19] = dut.register[19];
assign register[20] = dut.register[20];
assign register[21] = dut.register[21];
assign register[22] = dut.register[22];
assign register[23] = dut.register[23];
assign register[24] = dut.register[24];
assign register[25] = dut.register[25];
assign register[26] = dut.register[26];
assign register[27] = dut.register[27];
assign register[28] = dut.register[28];
assign register[29] = dut.register[29];
assign register[30] = dut.register[30];
assign register[31] = dut.register[31];
endmodule
