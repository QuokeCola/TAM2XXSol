b = 30; % mm
V = 4; % kN

Iz = (2*int(y^2*3*b,y,-2*b,-b)+int(y^2*b,y,-b,b))/1e6
Q1 = b^2*3/2*b/1e3
Q2 = 3*b^2*3/2*b/1e3
tau1 = vpa(V*Q1/Iz/b)
tau2 = vpa(V*Q2/Iz/b)