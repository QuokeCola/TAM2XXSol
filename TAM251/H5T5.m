L1 = 347; % mm
L2 = 387; % mm
d1 = 78; % mm
d2 = 44; % mm
G1 = 43; % GPa
G2 = 31; % GPa
TB = 671; % N.m
TC = 872; % N.m

J1 = pi/32*d1^4
J2 = pi/32*d2^4

fi1 = (TC-TB)*L1/G1/J1
fi2 = TC*L2/G2/J2

vpa(TC*d2/J2/2*1e3)