module final2(
input [5:0] in,
input Clk,Clear,com,
output reg [1:0]A_count,
output reg [1:0]B_count,
output reg [3:0] ans,
output reg a,b,c,d,e,f,g,
output reg beep,
output reg [2:0]complay
);
	always@(posedge Clk)
		begin
		complay = 3'b000;
		begin
		case({in[0],in[1],in[2],in[3],in[4],in[5]})//awin aeqb bwin error 
			6'b001001:{ans[0],ans[1],ans[2],ans[3]}=4'b0100;//eq
			6'b001010:{ans[0],ans[1],ans[2],ans[3]}=4'b1000;//Aw
			6'b001100:{ans[0],ans[1],ans[2],ans[3]}=4'b0010;//Bw
			6'b010001:{ans[0],ans[1],ans[2],ans[3]}=4'b0010;//Bw
			6'b010010:{ans[0],ans[1],ans[2],ans[3]}=4'b0100;//eq
			6'b010100:{ans[0],ans[1],ans[2],ans[3]}=4'b1000;//Aw
			6'b100001:{ans[0],ans[1],ans[2],ans[3]}=4'b1000;//Aw
			6'b100010:{ans[0],ans[1],ans[2],ans[3]}=4'b0010;//Bw
			6'b100100:{ans[0],ans[1],ans[2],ans[3]}=4'b0100;//eq
			default:{ans[0],ans[1],ans[2],ans[3]}=4'b0001;//error
		endcase 
		if (Clear)  
			begin
				A_count<=2'b00;
				B_count <=2'b00;
			end

		else if(ans[0])
			begin
				A_count=A_count+1;
			end
		else if(ans[2])
			begin
				B_count=B_count+1;
			end

		end
		end
endmodule

