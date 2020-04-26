L = 1584; % mm
di = 24; % mm
do = 36; % mm
G = 59; % GPa
tau = 42; % MPa
FS = 2;

syms T
J = pi/32*(do^4-di^4)
eq1 = T*do/2/J*1e3==tau/FS
T = solve(eq1,T)