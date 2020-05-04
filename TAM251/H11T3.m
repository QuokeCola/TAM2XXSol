P = 6; % kN
M = 10; % kN.m
L = 7; % m
E = 201; % GPa
Iz = 0.000045; % m^4

syms x;
M1 = P*L-P*x-M;
M2 = 0;
B1 = collect(vpa(int(int(M1/E/1e6/Iz,x))));
b1 = coeffs(B1);
[0,0,b1(1),b1(2),0]
B2 = collect(vpa(subs(B1,L)+int(M1/E/1e6/Iz,x,0,L)*(x-L)));
b2 = coeffs(B2);
[b2(1),b2(2),0,0,0]