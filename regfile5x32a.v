module regfile5x32a(input clk,input reset,input write, input [4:0] wrAddr, input [31:0] wrData, input [4:0] rdAddrA, output [31:0] rdDataA, input [4:0] rdAddrB, output [31:0] rdDataB);
reg [31:0] register[31:0];
integer i;
assign rdDataA = rdAddrA == 0? register[0]:rdAddrA==1? register[1]:rdAddrA == 2? register[2]:rdAddrA == 3? register[3]: rdAddrA == 4? register[4]:rdAddrA == 5? register[5]:rdAddrA == 6? register[6]:rdAddrA == 7? register[7]:rdAddrA == 8? register[8]:rdAddrA == 9? register[9]:rdAddrA == 10? register[10]:rdAddrA == 11? register[11]:rdAddrA == 12? register[12]:rdAddrA == 13? register[13]:rdAddrA == 14? register[14]:rdAddrA == 15? register[15]:rdAddrA == 16? register[16]:rdAddrA == 17? register[17]:rdAddrA == 18? register[18]:rdAddrA == 19? register[19]:rdAddrA == 20? register[20]:rdAddrA == 21? register[21]:rdAddrA == 22? register[22]:rdAddrA == 23? register[23]:rdAddrA == 24? register[24]:rdAddrA == 25? register[25]:rdAddrA == 26? register[26]:rdAddrA == 27? register[27]:rdAddrA == 28? register[28]:rdAddrA == 29? register[29]:rdAddrA == 30? register[30]:rdAddrA == 31? register[31]:0;
assign rdDataB = rdAddrB == 0? register[0]:rdAddrB==1? register[1]:rdAddrB == 2? register[2]:rdAddrB == 3? register[3]: rdAddrB == 4? register[4]:rdAddrB == 5? register[5]:rdAddrB == 6? register[6]:rdAddrB == 7? register[7]:rdAddrB == 8? register[8]:rdAddrB == 9? register[9]:rdAddrB == 10? register[10]:rdAddrB == 11? register[11]:rdAddrB == 12? register[12]:rdAddrB == 13? register[13]:rdAddrB == 14? register[14]:rdAddrB == 15? register[15]:rdAddrB == 16? register[16]:rdAddrB == 17? register[17]:rdAddrB == 18? register[18]:rdAddrB == 19? register[19]:rdAddrB == 20? register[20]:rdAddrB == 21? register[21]:rdAddrB == 22? register[22]:rdAddrB == 23? register[23]:rdAddrB == 24? register[24]:rdAddrB == 25? register[25]:rdAddrB == 26? register[26]:rdAddrB == 27? register[27]:rdAddrB == 28? register[28]:rdAddrB == 29? register[29]:rdAddrB == 30? register[30]:rdAddrB == 31? register[31]:0;
always @(posedge clk) begin
if(write)begin
register[wrAddr] <= wrData;
end
else if(reset)begin
for(i=0;i<31;i=i+1)
register[i] <= 0;
end
end
endmodule
		
						
