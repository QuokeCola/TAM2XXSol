L = 5; % m
H = 2; % m
E = 199; % GPa
Iz = 60000000; % mm^4
w = 8; % kN/m
A = 188; % mm^2

syms P
eqn1 = (-w*(L/2)^4/8-w*(L/2)^3/6*L/2-P*L^3/3)/E/1e9/Iz/1e-12==+P/A*1e6/E/1e9*H
R_C = norm(vpasolve(eqn1,P))