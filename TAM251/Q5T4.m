b = 203; % mm
t = 32; % mm
d = 13; % mm
deltaS = 88; % mm
Vy = 3; % kN

Q=int((3*t+2*b)*y,y,b/2,b/2+t)
Iz = int((3*t+2*b)*y^2,y,-b/2-t,b/2+t)-int(2*b*y^2,y,-b/2,b/2)

tau = Vy*1e3*Q*1e-9/Iz/1e-12/(3*t)/1e-3/1e6
tauBolt = vpa(tau*(3*t*deltaS)/(3*pi*d^2/4))