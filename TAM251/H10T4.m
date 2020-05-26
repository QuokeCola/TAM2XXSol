p = 1204; % kPa
F = 15; % kN
t = 8; % mm
r = 120; % mm
sigmaY = 165; % MPa

sx = F/(pi*(r+t)^2-pi*r^2)*1e3 + p*r/(((r+t)-r))/2/1e3
sy = p*r/t/1000
txy = 0

sigmanew1 = (sx+sy)/2+sqrt((sx-sy)^2/4+txy^2)
sigmanew2 = (sx+sy)/2-sqrt((sx-sy)^2/4+txy^2)

thetap1 = atand((sigmanew1-sx)/txy)

syms s1 s2;

eq1 = (s1-s2)^2+s1*s2 == sigmaY^2;
eq2 = s1/s2 == sigmanew1/sigmanew2;

[s1,s2]=solve(eq1,eq2,s1,s2);

vpa(sqrt((s1(1)^2+s2(1)^2)/(sigmanew1^2+sigmanew2^2)))