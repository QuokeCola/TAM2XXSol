a = 9;
b = 19;
d = 12;
P = 305;

A = [0;0;0];
B = [b;-a;0];
C = [b;0;0];
D = [b+b;0;0];
W = [b+2/3*b;0;0];

w = P/a * sqrt(a^2 + b^2)

F_P = [-b;a;0]/normest([-b;a;0]) * P;
F_W = [0;-w;0];
F_A_B = normest(F_P + F_W);

R_BA = A - B;
R_AB = B - A;
v_b = [a;b;0]/normest([a;b;0]);
v_a = [a;b;0]/normest([-a;-b;0]);

MA = cross(R_AB,v_b);
MB = cross(R_BA,v_a);

MwA = cross([5/3*b;0;0],F_W);
MwB = cross([2/3*b;a;0],F_W);

mag_B=MwA(3)/MA(3)