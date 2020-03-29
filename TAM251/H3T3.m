P = 3; % kN
a = 510; % mm
b = 594; % mm
L = 1085; % mm
E = 190; % GPa
Ac = 937; % mm^2
theta = 58; % degrees

delta = P*L/a/sind(theta)/Ac*1e3*1e6/1e9/E*b
AD = sqrt((a-b*cosd(theta))^2+(b*sind(theta))^2)
degree = -(atand((b*sind(theta))/(a-b*cosd(theta)))-acosd((AD^2+a^2-(b+delta)^2)/(2*AD*a)))
verticle = L*sind(degree)