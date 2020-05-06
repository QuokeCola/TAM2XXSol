L = 5; % m
E = 218; % GPa
Iz = 0.000044; % m^4
w = 8; % kN/m
syms R M
eqn1 = -w*(L/2)^4/(8*E*1e6*Iz)-w*(L/2)^3/(6*E*1e6*Iz)*L/2-M*L^2/(2*E*1e6*Iz)-R*L^3/(3*E*1e6*Iz)==0
eqn2 = -w*(L/2)^3/(6*E*1e6*Iz)-M*L/(E*1e6*Iz)-R*L^2/(2*E*1e6*Iz)==0
[R,M]=vpasolve(eqn1,eqn2,R,M)