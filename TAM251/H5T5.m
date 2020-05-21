L1 = 331; % mm
L2 = 379; % mm
d1 = 60; % mm
d2 = 44; % mm
G1 = 39; % GPa
G2 = 42; % GPa
TB = 927; % N.m
TC = 873; % N.m

J1 = pi/32*d1^4
J2 = pi/32*d2^4

fi1 = (TC-TB)*L1/G1/J1
fi2 = TC*L2/G2/J2

vpa(TC*d2/J2/2*1e3)