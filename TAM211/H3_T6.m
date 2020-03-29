F1x = 3;
F1y = -3;
F2x = -1.5;
F2y = -1.5;
F3x = -0.6;
F3y = 0;
x1 = 0.1;
y1 = 0.2;
x2 = 0.15;
y2 = 0.12;
y3 = 0.08;

f1 = [F1x;F1y;0]
f2 = [F2x;F2y;0]
f3 = [F3x;F3y;0]

r1 = [-x1;y1;0]
r2 = [-x2;-y2;0]
r3 = [2;y3;0]

F = normest(f1 + f2 + f3)
M = normest(cross(r1,f1) + cross(r2,f2) + cross (r3, f3))