L = 8; % m
E = 247; % GPa
Iz = 0.000042; % m^4
w = 11; % kN/m

syms x P
y1 = -w/(24*E*1e6*Iz)*(x^4-2*L*x^3+L^3*x)
y2 = P/(48*E*1e6*Iz)*(4*x^3-3*L^2*x)

P = norm(vpasolve(subs(y1,L/2)+subs(y2,L/2)==0,P))