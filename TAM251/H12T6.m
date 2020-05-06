M = 65; % kN.m
L = 1557; % mm
del = 2; % mm
E = 158; % GPa
Iz = 110905280; % mm^4

syms P
eq1 = -M*L^2/2/E/Iz-M*L/E/Iz*L+P*(2*L)^3/3/E/Iz*1e-3==-del/1e3
P = vpasolve(eq1,P)