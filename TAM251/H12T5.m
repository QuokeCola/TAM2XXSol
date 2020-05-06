P = 57; % kN
L = 1594; % mm
delta = 3; % mm
E = 148; % GPa
Iz = 155981141; % mm^4

syms F
eq1 = -P*L^3/(3*E*Iz)-P*L^2/(2*E*Iz)*L+F*(2*L)^3/(3*E*Iz)==-delta
F = vpasolve(eq1,F)