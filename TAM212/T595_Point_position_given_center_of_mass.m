clear all;
clc;

m1 = 4;
m2 = 2;
m3 = 3;
r1 = [9,-6,0];
r2 = [5,9,0];
rC = [12,-2];

if(exist('r1')==0)
    syms r1x r1y;
    r1=[r1x,r1y,0];
elseif(exist('r2')==0)
    syms r2x r2y;
    r2=[r2x,r2y,0];
elseif(exist('r3')==0)
    syms r3x r3y;
    r3=[r3x,r3y,0];
end
[x,y] = vpasolve(r1*m1+r2*m2+r3*m3==[rC,0]*(m1+m2+m3))