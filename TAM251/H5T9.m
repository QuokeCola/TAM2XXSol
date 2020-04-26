a = 1377; % mm
b = 1525; % mm
d = 46; % mm
G = 70; % GPa
tall = 26; % MPa

syms T
syms x y
J = int(int(x^2+y^2,x,-sqrt((d/2)^2-y^2),sqrt((d/2)^2-y^2)),y,-d/2,d/2);
f1 = T*d/2/J*1e3==tall;
T = solve(f1,T);
P = vpa(T/a*1e3)

Fi = vpa(T*b/G/J)