w = 6; % kN/m
L = 5; % m
E = 165; % GPa
Iz = 0.000045; % m^4
M = w*1e3*L^2/24

wB1 = -w*1e3*(L/2)^4/(8*E*1e9*Iz)+(-w*1e3*(L/2)^3)/(6*E*1e9*Iz)*L/2
wB2 = M*L^2/(2*E*1e9*Iz)
(wB1+wB2)*1e3
theta1 = -w*(L/2)^3/(6*E*1e9*Iz)*1e3
theta2 = M*L/(E*1e9*Iz)
theta1+theta2