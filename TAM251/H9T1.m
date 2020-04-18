a = 655; % mm
L = 2963; % mm
P = 1212; % N
theta = 32; % degrees
b = 1185; % mm

Vy = vpa(sind(theta)*P)
Fx = vpa(-cosd(theta)*P)
Mz = vpa(-(sind(theta)*(L-b)/1e6+cosd(theta)*a/1e6)*P)