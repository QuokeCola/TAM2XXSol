a = 120; % mm
b = 160; % mm
c = 180; % mm
P = 10; % kN
theta = 40; % degrees

rB = [a, c, 0];
rC = [a+b,c,0];

P = [0,-P,0];
MomentP_A = cross(rB,P);
UnitC = [-sind(theta),cosd(theta),0];
syms Mag_C
MomentC_A = cross(rC,UnitC*Mag_C);
Mag_C = vpa(solve(MomentC_A(3) + MomentP_A(3)==0));
Mag_A = vpa(normest(P+Mag_C*UnitC))
Mag_C