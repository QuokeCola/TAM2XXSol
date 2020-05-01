clear all;
clc;
m1 = 8;
m2 = 2;
m3 = 5;
r1 = [7,-1,0];
r2 = [7,6,0];
rC = [13,-4];


syms x y
r3 = [x,y,0];
[x,y] = vpasolve(r1*m1+r2*m2+r3*m3==[rC,0]*(m1+m2+m3))