t = 650; 
l = 3;  
theta = 10;
alpha = 20;

A = [0;0;0]
B = [l;-l*tand(alpha);0]
C = [0;-4*l*tand(alpha)*2;0]
D = [4*l;-4*l*tand(alpha);0]
DirectD = (D-C)/normest(D-C)

T = t*[sind(theta);-cosd(theta);0]
Mt = cross(D-A,T)
Unit_Md = cross(D,DirectD)
mag_D = Mt(3)/Unit_Md(3)
FD = -DirectD*mag_D
F = -(FD+T)
Direct_BA = A-B
Mag_AB = dot(Direct_BA,F)/normest(Direct_BA)