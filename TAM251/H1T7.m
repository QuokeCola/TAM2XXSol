a = 314; % mm
b = 290; % mm
c = 163; % mm
d = 254; % mm
e = 192; % mm
P1 = 90; % kN
P2 = 78; % kN
theta = 29; % degrees
dab = 42; % mm

directAB = [-cosd(theta),-sind(theta),0];
P1 = [0,-P1,0];
P2 = [0,-P2,0];
momentTot = cross([b,0,0],P1)+cross([b+c,0,0],P2);
syms x
momentAB = x*cross([0,d+e+sind(theta)*a,0],directAB);
x = solve(momentTot(3)+momentAB(3)==0);

tau = vpa(x*1e3/(pi*(dab/2)^2*1e-6)/1e6)