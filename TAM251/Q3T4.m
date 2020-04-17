E = 231; % GPa
d = 26; % mm
P = 82; % kN
L = 165; % mm
a = 199.00; % mm

syms disp1
disp2 = 2*disp1

strain1 = disp1/L
strain2 = disp2/L

F1 = E*strain1*pi*d^2/4
F2 = E*strain2*pi*d^2/4

vpa(solve(F1*a+F2*2*a==P*2*a,disp1))