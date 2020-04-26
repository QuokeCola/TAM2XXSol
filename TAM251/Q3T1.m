L1 = 0.46; % m
L2 = 0.24; % m
L3 = 0.36; % m
d1 = 117.00; % mm
d2 = 146.00; % mm
d3 = 146.00; % mm
Tb = 1425.00; % N.m
Td = 7565.00; % N.m
G1 = 108.00; % GPa
G2 = 108.00; % GPa
G3 = 174.00; % GPa

syms x y
J1 = vpa(pi/32*(d1^4))
J2 = vpa(pi/32*(d2^4))
J3 = vpa(pi/32*(d3^4))

fi1 = vpa((Td+Tb)*L1*1e3/G1/J1)
fi2 = vpa(Td*L2*1e3/G2/J2)
fi3 = vpa(Td*L3*1e3/G3/J3)
angle = vpa(fi1+fi2+fi3)*1e3