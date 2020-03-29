a = 30;
b = 10;
c = 40;
d = 230;
e = 80;
f = 40;
g = 10;
h = 30;
i = 345;
W = 220;

a = a/1000;
b = b/1000;
c = c/1000;
d = d/1000;
e = e/1000;
f = f/1000;
g = g/1000;
h = h/1000;
i = i/1000;

P = [0;W;0]
M = -d*W
r_P = [c+d;e;0];
F_P = [0;W;0];
M_P = cross(r_P,F_P);
r_AB = [-a-b;-f;0];
direct_BC = [-a;h+g;0]/normest([-a;h+g;0]);

syms mag_BC;
M_BC = cross(r_AB,mag_BC*direct_BC);
mag_BC = solve(M_BC(3)+M_P(3)+ M==0,mag_BC);
F_BC = mag_BC * (-direct_BC);

r_DX = [-d;-h-i;0];
syms F_Clip;
F = [-F_Clip;-W/2;0];
M_F_Clip = cross(r_DX,F);
M_F_BC = cross([-b-c;-h;0],F_BC);

F_Clip = solve(M_F_Clip(3)+M_F_BC(3) == 0, F_Clip)