%case 1
b = 53; % mm
a = 735; % mm
P = 11; % kN
sigmaAll = 116; % MPa
tauAll = 75; % MPa

b = b/1000
a = a/1000
P = P*1000
sigmaAll = sigmaAll*1e6
tauAll = tauAll*1e6

syms y h
Iz = int(y^2*b,y,-h/2,h/2)

h1 = vpa(solve(tauAll==P*(h*b*h/2)/(Iz*b),h));
M = P*a;
h2 = vpa(solve(M*h/2/Iz==sigmaAll,h));
max(norm(h2(1)),h1)*1000
