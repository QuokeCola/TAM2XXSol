W = 6; % kN
a = 6; % m
b = 5; % m
d = 11; % mm
theta = 43; % degrees

W = W * 1e3
F = W*(a+b)/a
FyA = F-W
MomentC = cross([b*cosd(theta),b*sind(theta),0], [0,-W,0])
MomentAy= cross([-a*cosd(theta),-a*sind(theta),0], [0,-FyA,0])
FxA = (MomentC(3)+MomentAy(3))/(a*sind(theta))
tau = vpa(normest([FxA,FyA])/(pi*(d/2)^2*1e-6)/1e6)

T = W*(a+b)/a
FA = T-W
FA/(pi*(d/2)^2*1e-6)/1e6