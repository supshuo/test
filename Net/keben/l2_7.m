%%验证init对于神经网络初始化功能
%net = inin(Net)
clear all
net = newp([0 1;-2 2],1);
disp('默认网络的权值和阈值为：')
net.iw{1,1}
net.b{1}
P = [0 1 0 1;0 0 1 1];
T = [0 0 0 1];
net = train(net,P,T);
disp('网络经过训练后的权值和阈值为：');
net.iw{1,1}
net.b{1}
disp('初始化修正后网络的权值与阈值为：')
net = init(net);
net.iw{1,1}
net.b{1}