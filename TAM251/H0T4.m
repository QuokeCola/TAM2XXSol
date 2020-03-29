a = 319;
b = 274;
c = 182;
d = 275;
e = 276.5;
P1 = 61;
P2 = 50;
theta = 22;
dab = 21;

directAB = [-cosd(theta),-sind(theta),0];
P1 = [0,-P1,0];
P2 = [0,-P2,0];
momentTot = cross([b,0,0],P1)+cross([b+c,0,0],P2);
syms x
momentAB = x*cross([0,d+e+sind(theta)*a,0],directAB);
x = vpa(solve(momentTot(3)+momentAB(3)==0))