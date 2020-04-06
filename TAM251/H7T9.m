R = 20; % mm
Mz = -1698; % N.m

syms x y
yave = vpa((int(int(y,x,-pi/2*R,pi/2*R),y,-2*R,3*R)-int(int(y,x,-sqrt(R^2-y^2),sqrt(R^2-y^2)),y,-R,R))/(int(int(1,x,-pi/2*R,pi/2*R),y,-2*R,3*R)-int(int(1,x,-sqrt(R^2-y^2),sqrt(R^2-y^2)),y,-R,R)))
Iz = vpa(61*pi*R^4/12+1/12*pi*R^4+pi*R^2*(2.5*R-yave)^2+3*pi*R^2*yave^2)/1e6
tau = Mz/Iz*(3*R-yave)/1e3

