P = 73; % kN
d = 25; % mm
E = 108; % GPa
L = 692; % mm
a = 200; % mm
b = 302; % mm
alpha = 35; % degrees

% + for left and - for right
F = P*b/(a+b)/cosd(alpha)
A = pi*d^2/4;
deformation = F/A/E*L