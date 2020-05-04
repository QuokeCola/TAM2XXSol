P = 18; % kN
L = 7; % m
E = 220; % GPa
Iz = 0.000046; % m^4

syms x
V1 = -P/L*x
V2 = -P/L*x+P
M2 = int(V2,x,L,x)
M1 = int(V1,x,L/2,x)+subs(M2,L/2)
dy1 = int(M1,x,0,x)/E/1e6/Iz
dy2 = (int(M2,x,L/2,x))/E/1e6/Iz+subs(dy1,L/2)
y1 = int(dy1,x,0,x)
y2 = int(dy2,x,L/2,x)+subs(y1,L/2)

xp1 = linspace(0,L/2,100)
xp2 = linspace(L/2,L,100)
%plot(xp1,subs(M1,xp1),xp2,subs(M2,xp2))

plot(xp1,subs(y1,xp1),xp2,subs(y2,xp2))
vpa(subs(y2,L))*1e3
vpa(atan(subs(dy2,L)))
