L = 2142; % mm
Ac = 3817; % mm^2
E = 218; % GPa
P = 530; % kN
theta = 45; % degrees

%point to left
vpa((P*tand(90-theta)/2+P/2)/Ac/E*L)
