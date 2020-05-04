w = 7; % kN/m
L = 8; % m
E = 158; % GPa
Iz = 0.000048; % m^4

syms x
V1 = w*L/2
V2 = w*L-w*x
M2 = w*L^2/12+int(V2,x,x,L)
M1 = subs(M2,L/2)+int(V1,x,x,L/2)
dy1 = int(M1/E/Iz/1e6,x,0,x)
dy2 = int(M2/E/Iz/1e6,x,L/2,x)+subs(dy1,L/2)
y1 = int(dy1,x,0,x)
y2 = int(dy2,x,L/2,x)+subs(y1,L/2)
vpa(subs(y2,L))*1e3