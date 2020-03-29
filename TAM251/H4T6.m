deltaM = 1; % mm
k1 = 38000; % N/mm
k2 = 20000; % N/mm
L = 2200; % mm

F1F2r = 1;
t1t2r = F1F2r*k2/k1;
syms t2;
t1 = t2*t1t2r;
t2 = vpa(solve(t1+t2==deltaM,t2));
t1 = t2*t1t2r;
epsilon1 = t1/(L-deltaM)*1e3
epsilon2 = -t2/L*1e3