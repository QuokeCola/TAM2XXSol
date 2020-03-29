a = 0.821;
F1 = 291;
F2 = 514;
Mb = 386;
w = 119;
alpha = 45;

F1 = [cosd(alpha)*F1;-sind(alpha)*F1;0];
F2 = [0;-F2;0];

syms x;

Fw = [0;-int(w,x,-2*a,-a);0];
Mw = [0;0;-int(w*x,x,-2*a,-a)];

M1 = cross([-2*a;0;0],F1);
M2 = cross([-a;0;0],F2);

M = M1+M2+Mw-[0;0;Mb];
vpa(M(3)/3/a)
F1(1)
ala = [0;vpa(M(3)/3/a);0]+F1+F2+Fw;
vpa(ala(2))