clear all;
%%part1
p1 = {-1 0 1 0 1 1 -1 0 -1 1 0 1};
t1 = {-1 -1 1 1 1 2 0 -1 -1 0 1 1};
net = linearlayer([0 1],0.5);
[net,y,e,pf] = adapt(net,p1,t1);        %����Ӧѵ��
while (mae(e)<1e-20)
    [net,y,e,pf] = adapt(net,p1,t1);
end
mae(e)                                  %ƽ���������