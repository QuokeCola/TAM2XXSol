L1 = 230; % mm
L2 = 595; % mm
L3 = 213; % mm
d1 = 32; % mm
d2 = 54; % mm
G = 74; % GPa
Tb = 1292; % N.m
Tc = 1340; % N.m
Tb=-Tb
J1=pi/32*d1^4;
J2=pi/32*d2^4;
J3=pi/32*(d2^4-d1^4);
syms TA TD %TA
[TA,TD]=solve([TA+Tb+Tc+TD==0,TA*L1/G/J1+(TA+Tb)*L2/G/J2+(TA+Tb+Tc)*L3/G/J3==0],[TA,TD])
TA=vpa(TA)
TD=vpa(TD)
stress1=abs((TA*d1/2/J1*1000))
stress2=abs(((TA+Tb)*d2/2/J2*1000))
stress3=abs((TD*d2/2/J3*1000))