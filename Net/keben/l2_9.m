%hardlim,hardlims函数
clear all
%以0.1为步长，建立一个数组
N = -6:0.1:6;
A1 = hardlim(N);
A2 = hardlims(N);
plot(N,A1,'or');
hold on
plot(N,A2,'b+');
hold on