%hardlim,hardlims����
clear all
%��0.1Ϊ����������һ������
N = -6:0.1:6;
A1 = hardlim(N);
A2 = hardlims(N);
plot(N,A1,'or');
hold on
plot(N,A2,'b+');
hold on