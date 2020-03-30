L1 = 283; % mm
L2 = 526; % mm
L3 = 258; % mm
d1 = 23; % mm
d2 = 45; % mm
G = 60; % GPa
Tb = 1200; % N.m
Tc = 1220; % N.m

k1 = G*pi/32*(d1^4)/L1
k2 = G*pi/32*(d2^4)/L2
k3 = G*pi/32*(d2^4-(d2/2)^4)/L3

syms fi11 fi21;
[fi11 fi21] = solve((fi11-fi21)*k2==fi21*k3,fi11*k1+(fi11-fi21)*k2+fi21*k3==Tb,fi11,fi21)
syms fi12 fi22;
[fi12 fi22] = solve((fi22-fi12)*k2==fi12*k1,fi22*k3+(fi22-fi12)*k2+fi12*k1==Tc,fi12,fi22)

fi1 = vpa(fi11-fi12)
fi2 = vpa(fi21-fi22)

%syms fi1 fi2;
%[fi1, fi2]=solve(fi1*k1+(fi1+fi2)*k2==Tb,fi2*k3+(fi1+fi2)*k2==Tc,fi1,fi2)
%fi1*k1
%(fi1-fi2)*k2
%fi2*k3
tau = vpa((fi1+fi2)*k2*d2/2*1e-3/(pi/32*d2^4*1e-12))/1e6