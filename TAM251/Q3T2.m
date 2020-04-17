do = 99; % mm
di = 80; % mm
h = 361; % mm
P = 171; % kN
delta = 0.14; % mm

A = pi*(do^2-di^2)/4*1e-6;
tau = P*1e3/A/1e6

strain = delta/h;
strain*1e3
E = tau*1e6/strain/1e9