P = 471; % N
L = 1.724; % m
E = 209; % GPa
FS = 2.7;
E=E*1e9
syms d
P1=P*FS;
I=pi/4*(d/2)^4;
L=L*0.7;
Pc1=pi^2*E*I/(L)^2;
[d]=solve(Pc1==P1);
d=vpa(d)