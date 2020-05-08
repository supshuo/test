clear all

%%part_1

p = [0 1 2 3 4 5 6 7 8];                        %��������
t = [0 0.84 0.91 0.14 -0.77 -0.96 -0.28 0.66 0.99];   %Ŀ������
%����һ������ǰ��������������10����Ԫ
net = feedforwardnet(10);
net = configure(net,p,t);
y1 = sim(net,p)                         %���������
plot(p,t,'o',p,y1,'x')
legend('ѵ��ǰ����','ѵ��������');

%%part_2
net.trainParam.epochs = 50;
net.trainParam.goal = 0.01;
net = train(net,p,t);
y2 = sim(net,p)                         %ѵ�����������
plot(p,t,'o',p,y1,'x',p,y2,'*')
legend('ԭʼ����','���������','ѵ��������');

