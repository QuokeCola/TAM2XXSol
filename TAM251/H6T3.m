di = 21; % mm
TB = 1513; % N.m
TC = 406; % N.m
G = 55; % MPa
L = 1376; % mm
tauMax = 20; % MPa

T1=-TC+TB
T2=-TC


syms d;
d = solve(normest(T1)*d/2*1e-3/(pi/32*d^4*1e-12)==tauMax*1e6,d);
d = vpa(d(1))
fi1 = T1*L*1e-3/(G*1e6*(pi/32*d^4*1e-12));
fi2 = T2*L*1e-3/(G*1e6*pi/32*(d^4-di^4)*1e-12);
fiC = normest(vpa(fi1+fi2))