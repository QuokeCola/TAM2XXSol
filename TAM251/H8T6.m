h = 159; % mm
t = 30; % mm
d = 12; % mm
taub = 2; % MPa
V = 2; % kN


syms x y
cy = (2*int(t*y,y,0,h)+int(t*y,y,h/2,3/2*h))/(3*t*h)

Iz = (2*int(t*y^2,y,0-cy,h-cy)+int(t*y^2,y,h/2-cy,3/2*h-cy))/1e6
tau = V*(t*h)*(cy-h/2)*1e-3/(Iz*h/2)

syms dis
dis = vpa(solve(dis*h/2*tau/(pi/4*d^2)==taub,dis))