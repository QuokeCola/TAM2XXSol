Lo = 200; % mm
d = 26; % mm
P = 147; % kN
delta = 0.3; % mm
sy = 350; % MPa
G = 69; % GPa

E = P/(pi*(d/2*1e-3)^2)/(delta/Lo)/1e6
v = E/G/2-1
vpa((delta/Lo)*v*d)