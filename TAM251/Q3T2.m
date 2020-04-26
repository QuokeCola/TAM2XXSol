a = 620; % mm
b = 390; % mm
d1 = 55; % mm
d2 = 82; % mm
t = 380; % mm
F = 2.4; % kN
G = 85; % GPa

T = F*t

J1 = pi/32*(d1^4)
J2 = pi/32*(d2^4)
k1 = G*J1/a
k2 = G*J2/b

fi = T/(k1+k2)
T2 = fi*k2
taumax = T2*d2/2/J2 *1e-3*1e12/1e6