Fj = 510.12;
Fk = 519.93;
a = 5;
b = 7.5;
c = 4.5;
alpha = 33;

Fj = [cosd(alpha)*Fj;sind(alpha)*Fj;0];
Fk = [0;-Fk;0];

Fsum = Fj+Fk
normest(Fsum)
Fnormal = -Fsum(2)
Fshear = Fsum(1)
M = -cross([-a;b-c;0],Fsum)