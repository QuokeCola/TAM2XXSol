b = 56; % mm
a = 697; % mm
w = 6; % kN/m
sigmaAll = 123; % MPa
tauAll = 64; % MPa

b = b/1e3;
a = a/1e3;
w = w*1e3;
sigmaAll = sigmaAll*1e6;
tauAll = tauAll*1e6;

syms x h y
Iz = int(y^2*b,y,-h/2,h/2);
V = w*a/2-w*x;
V0 = subs(V,0);
h1 = vpa(solve(V0*(h/2*b*h/4)/Iz/b==tauAll,h))

M = int(V,x,0,a/2);
h2 = vpa(solve(M*h/2/Iz==sigmaAll,h))

max(norm(h2(2)),h1)*1000