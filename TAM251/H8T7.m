b = 216; % mm
t = 40; % mm
d = 11; % mm
deltaS = 81; % mm
Vy = 3; % kN

syms x y
Iz = (int(int(y^2,x,-b/2,b/2),y,-b/2-t,b/2+t)-int(int(y^2,x,-b/2+t,b/2-t),y,-b/2,b/2))/1e6;
tau = Vy*t*b*(b/2+t/2)/1e3/Iz/(2*t);
vpa(tau*deltaS*t/(pi/4*d^2))