E1 = 73; % GPa
E2 = 208; % GPa
d = 22; % mm
D = 44; % mm
L = 723; % mm
P = 82; % kN

S2 = pi*(D^2-d^2)/4;
S1 = pi*(d^2)/4;

tau1tau2r = 1;
k1 = E1*S1/L;
k2 = E2*S2/L;
F1F2r = tau1tau2r*k1/k2;
syms F1;
F2 = F1/F1F2r;
F1 = solve(F1+F2==P);
F2 = F1/F1F2r;
tau1 = vpa(-F1/S1*1e3)
tau2 = vpa(-F2/S2*1e3)

