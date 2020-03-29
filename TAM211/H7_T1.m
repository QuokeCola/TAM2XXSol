P = 55;
theta = 5;
fie = 10;
a = 70;
b = 230;
c = 60;
d = 15;

DC = [a+b;-c-d;0]
Fc = [-sind(theta)*P;-cosd(theta)*P;0]
M = cross(DC,Fc)
unit_vBE=[sind(fie);-cosd(fie);0];
r = [a;-c;0];
Mbe = cross(r,unit_vBE);
magFbe = M(3)/Mbe(3)
F = magFbe * unit_vBE;
-F(2)
