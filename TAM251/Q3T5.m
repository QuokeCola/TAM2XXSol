L = 941; % mm
d = 20; % mm
G = 65; % GPa
gamma_all = 0.0007; % rad
rb = 101; % mm
rc = 31; % mm

J = pi/32*(d^4)

phi = gamma_all*L/d*2
syms T2
T1 = T2/rc*rb
phi1 = T1*L/G/J
phi2 = T2*L/G/J

vpasolve(phi1==phi,T2)