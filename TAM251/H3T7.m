Lo = 200; % mm
d = 27; % mm
P = 123; % kN
delta = 0.1; % mm
sy = 350; % MPa
G = 166; % GPa

E = P/(pi*d^2/4)/(delta/Lo)
v = (E/G-2)/2
sd = delta/Lo*(v)*d