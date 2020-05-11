/*
module flow_led(
input sys_clk50m,
input rst_l,
output reg[3:0] led
);
*/
module flow_LED(sys_clk50m,rst_n,led);
	input sys_clk50m;
	input rst_n;
	output reg[3:0] led;
	reg[23:0] cnt;

always @(posedge sys_clk50m , negedge rst_n)
begin
	if(!rst_n)
		cnt <= 24'b0;//是b还是D？结果是完全一样的。
	else
		if(cnt < 24'd3)
			cnt <= cnt+1'b1;
		else
			cnt <= 24'b0;		
	
end
/*
always @(posedge sys_clk50m , negedge rst_n)
begin
	if(!rst_n)
		led <= 4'b0000;
	else
		if(cnt == 24'd10000000)
			begin
			if(!led)
				led <= led+1'b1;//此处要注意
			else
				led <= {led[2:0],led[3]};//拼接符，还可以用case语句
			end
		else
			led <= led;
end
*/

always @(posedge sys_clk50m , negedge rst_n)
begin
	if(!rst_n)
		led <= 4'b0000;
	else
		if(cnt == 24'd3)
			case(led)
				4'b0000: led <= 4'b0001;
				4'b0001: led <= 4'b0010;
				4'b0010: led <= 4'b0100;
				4'b0100: led <= 4'b1000;
				4'b1000: led <= 4'b0001;
				default: led <= 4'b0000;
				//拼接符，还可以用case语句，与if语句＋拼接符实现完全一样肝功能
			endcase
		else
			led <= led;
end


endmodule