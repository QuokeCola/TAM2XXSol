b = 38; % in
t = 15; % in
d = 0.60; % in
deltaS = 64; % in
Vmax = 5; % lb

syms y
Iz = int(y^2*t,y,-b/2,b/2)+2*int(y^2*b,y,b/2,b/2+t);
vpa(Iz/1e3)
Q1 = int(y*b,y,b/2,b/2+t);
Q2 = int((b/2-t/2)*y,y,b/2,b/2+t);
syms Vm;

eq1 = (Vm*Q1/Iz/t)*t*deltaS==Vmax;
eq2 = (Vm*Q2/Iz/t)*t*deltaS==Vmax;

V1 = vpasolve(eq1,Vm)
V2 = vpasolve(eq2,Vm)