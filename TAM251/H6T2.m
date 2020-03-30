d = 34; % mm
R1 = 192; % mm
R2 = 48; % mm
G = 73; % GPa
L = 128; % mm
TE = 491; % N.m

T5 = TE*(R2/R1)^2
T3 = TE*(R2/R1)
T1 = TE

fi5 = T5*L*1e-3/G/1e9/(pi/32*d^4*1e-12)
fi3 = T3*L*1e-3/G/1e9/(pi/32*d^4*1e-12)
fi1 = T1*L*1e-3/G/1e9/(pi/32*d^4*1e-12)

fi = vpa((fi5*R2/R1+fi3)*R2/R1+fi1)