%%��֤init�����������ʼ������
%net = inin(Net)
clear all
net = newp([0 1;-2 2],1);
disp('Ĭ�������Ȩֵ����ֵΪ��')
net.iw{1,1}
net.b{1}
P = [0 1 0 1;0 0 1 1];
T = [0 0 0 1];
net = train(net,P,T);
disp('���羭��ѵ�����Ȩֵ����ֵΪ��');
net.iw{1,1}
net.b{1}
disp('��ʼ�������������Ȩֵ����ֵΪ��')
net = init(net);
net.iw{1,1}
net.b{1}