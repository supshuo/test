moudle test(a,y);//端口列表
input a;//输入，wire，1位
output y;//输出，wire，1位
assign y=~a;//连线，连续赋值语句，取反，相当于非门
endmodule