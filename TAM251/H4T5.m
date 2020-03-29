E1 = 72; % GPa
E2 = 206; % GPa
A = 1761; % mm^2
L = 748; % mm
deltaM = 0.5; % mm

F1F2r = 1;
k1 = E1*A/L;
k2 = E2*A/L;
t1t2r = F1F2r/k1*k2;
syms t2
t1 = t1t2r*t2;
t2 = vpa(solve(t1+t2 == deltaM,t2));
t1 = vpa(t1t2r*t2);
epsilon1 = -t1/L*1e3
epsilon2 = -t2/(L+deltaM)*1e3