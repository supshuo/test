%%��֤revert�����ָ�Ȩֵ����ֵ��ʼ���Ĺ���
% net = revert(net)

clear all
net = newp([0 1;-2 2],1);
disp('Ĭ�Ϻ�����Ȩֵ����ֵΪ��')
net.iw{1,1}
net.b{1}
%�ı������Ȩֵ����ֵ
net.iw{1,1} = [1 2];
net.b{1} = 5;
disp('��ʾ�ı������Ȩֵ����ֵΪ��')
net.iw{1,1}
net.b{1}
net = revert(net);                    %��������Ȩֵ����ֵ
disp('��������Ȩֵ����ֵΪ��')
net.iw{1,1}
net.b{1}