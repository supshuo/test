%%用于实现netsum，netprod，coucur函数的功能

clear all
clc
z1 = [1 2 4;3 4 1];
z2 = [-1 2 2;-5 -6 1];
b = [0;-1];
c = concur(b,3);
s1 = netsum(z1,z2)
s2 = netsum(z1,z2,c)
p1 = netprod(z1,z2)
p2 = netprod(z1,z2,c)