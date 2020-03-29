Fj = 756;
Fk = 882;
a = 6;
b = 8;
alpha = 63;

V_Fk = [0;-Fk;0]
V_Fj = [cosd(alpha);sind(alpha);0] * Fj

F0 = -(V_Fk + V_Fj)

r = [-a;b;0]

M0 = cross(r,F0)