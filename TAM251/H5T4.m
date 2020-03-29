L1 = 366; % mm
L2 = 302; % mm
d1 = 78; % mm
d2 = 40; % mm
G1 = 37; % GPa
G2 = 35; % GPa
TB = 994; % N.m
TC = 799; % N.m

J1 = pi/32*d1^4
J2 = pi/32*d2^4

fi1 = (TC-TB)*L1/G1/J1
fi2 = TC*L2/G2/J2

vpa(fi1+fi2)