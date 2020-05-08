%%验证revert函数恢复权值和阈值初始化的功能
% net = revert(net)

clear all
net = newp([0 1;-2 2],1);
disp('默认函数的权值与阈值为：')
net.iw{1,1}
net.b{1}
%改变网络的权值与阈值
net.iw{1,1} = [1 2];
net.b{1} = 5;
disp('显示改变网络的权值与阈值为：')
net.iw{1,1}
net.b{1}
net = revert(net);                    %更新网络权值与阈值
disp('更新网络权值与阈值为：')
net.iw{1,1}
net.b{1}