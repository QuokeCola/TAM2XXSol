L = 1791; % mm
di = 26; % mm
do = 40; % mm
G = 30; % GPa
T = 1522; % N.m

fi = T*L/G/(pi/32*(do^4-di^4));
strain = vpa(fi*di/2/L*1e3)