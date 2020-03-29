T = 80; 
AB = 80;  
AC = 130;  
theta = 15;  

A = [0;0;0];
B = [AB * cosd(theta);-AB * sind(theta);0];
C = [AC;0;0];

Direct_BC = (C-B)/normest(C-B);
Mag_F_BC = -T/Direct_BC(2)
F_BC = -Mag_F_BC * Direct_BC;


mag_AB = -dot((B-A),F_BC)/normest(B-A)

F_AC = F_BC(1)
