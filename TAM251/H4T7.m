delta = 0.03; % in
L = 11; % in
E = 31000; % ksi
alpha = 0.000008; % /degrees F
A = 2; % in^2
dT = -84; % degrees F

Lfinal = (L+delta)*(1+alpha*dT)
deltaL = Lfinal-L
strain = -deltaL/Lfinal

E*strain/(1+alpha*dT)^2