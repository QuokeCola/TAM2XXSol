l = 10
w = 2
f1 = 88 
f2 = 140 
alpha = 35

f2 = [cosd(alpha)*f2; sind(alpha)*f2; 0]
f1 = [f1;0;0]
r2 = [0;w;0]
r1 = [0;w;0]

M = cross(r1,f1) + cross(r2,f2)