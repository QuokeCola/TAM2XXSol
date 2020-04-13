b = 30; % mm
t = 6; % mm
Vy = 25; % kN

syms y
Iz = (int(y^2*(4*b+2*t),y,-3*t-2*b,3*t+2*b)-2*int(y^2*(2*b+2*t),y,2*t,2*t+2*b)-2*int(y^2*2*t,y,2*t+2*b,3*t+2*b))/1e6
Q = (int(y*(4*b+2*t),y,0,3*t+2*b)-int(y*(2*b+2*t),y,2*t,2*t+2*b)-int(y*2*t,y,2*t+2*b,3*t+2*b))/1e3
tau = vpa(Vy*Q/Iz/(4*b+2*t))
Q1 = (int(y*(4*b+2*t),y,2*t,3*t+2*b)-int(y*(2*b+2*t),y,2*t,2*t+2*b)-int(y*2*t,y,2*t+2*b,3*t+2*b))/1e3
tau = vpa(Vy*Q1/(Iz*2*b))