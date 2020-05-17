P = 6; % kN
E = 191; % GPa
A = 189; % mm^2
L = 8; % m
H = 3; % m
Iz = 59000000; % mm^4

F = P/2
Pr = -F*1e3/A/1e-6/E/1e9*H
db = norm(Pr/2-P*1e3*L^3/(48*E*1e9*Iz*1e-12))*1e3