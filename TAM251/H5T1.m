L = 1715; % mm
r = 25; % mm
G = 56; % GPa
tu = 60; % MPa
FS = 3;

L = L
J = pi*r^4

syms angle
Tmax = angle/L*(G*1e9*J)
vpa(solve(Tmax*r/J == tu*1e6/FS,angle))