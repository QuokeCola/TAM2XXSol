Fj = 588.6;
Fk = 451.26;
a = 5;
b = 7.5;
c = 4.5;
alpha = 47;

Fj = [Fj*cosd(alpha),Fj*sind(alpha),0];
Fk = [0,-Fk,0];
F_tot = Fj + Fk;
F_norm = vpa(F_tot(2))
F_shear = vpa(F_tot(1))
vector_M = -cross([-a,b-c,0],F_tot);
M = vpa(vector_M(3))