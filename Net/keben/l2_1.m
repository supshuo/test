clear all

%%part_1

p = [0 1 2 3 4 5 6 7 8];                        %输入向量
t = [0 0.84 0.91 0.14 -0.77 -0.96 -0.28 0.66 0.99];   %目标向量
%创建一个两层前馈。网络隐层有10个神经元
net = feedforwardnet(10);
net = configure(net,p,t);
y1 = sim(net,p)                         %仿真后数据
plot(p,t,'o',p,y1,'x')
legend('训练前数据','训练后数据');

%%part_2
net.trainParam.epochs = 50;
net.trainParam.goal = 0.01;
net = train(net,p,t);
y2 = sim(net,p)                         %训练后仿真数据
plot(p,t,'o',p,y1,'x',p,y2,'*')
legend('原始数据','仿真后数据','训练后数据');

