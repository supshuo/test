%%实现一个3层神经网络
clear all
clc
P = [0.1 0.5;0.3 -0.2];     %已知输入矢量数据
S1 = 2;
S2 = 3;
S3 = 5;
[r,q] = size(P);
[W1,B1] = rands(S1,r);
[W2,B2] = rands(S2,S1);
[W3,B3] = rands(S3,S2);
B10 = cat(2,B1,B1);
n1 = W1*P+B10;
A1 = hardlims(n1);
B20 = cat(2,B2,B2);
n2 = W2*A1+B20;
A2 = logsig(n2);
B30 = cat(2,B3,B3);
n3 = W3*P+B30;
A3 = purelin(n3);
