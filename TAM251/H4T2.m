h = 120; % mm
b = 112; % mm
d = 17; % mm
E1 = 180; % MPa
E2 = 205; % MPa
W = 99; % N

h = h/1000;
b = b/1000;
d = d/1000;

A = [0,h,0];
B = [0,0,0];

C = [b,0,0];
D = [2*b,0,0];

syms x;

L_AC(x) = sqrt((h+b*sin(x))^2+(b*cos(x))^2)
L_AD(x) = sqrt((h+2*b*sin(x))^2+(2*b*cos(x))^2)

diff_LAC(x) = diff(L_AC(x),x,1)
diff_LAD(x) = diff(L_AD(x),x,1)

t1t2r = vpa(diff_LAC(0)/diff_LAD(0))

f1 = vpa(1/(E1*pi*d^2/4/L_AC(0))*1e-3)
f2 = vpa(1/(E2*pi*d^2/4/L_AD(0))*1e-3)

F1F2r = vpa(t1t2r*f2/f1)

syms F1
F2 = F1/F1F2r;

F_CA = F1*(A-C)/normest(A-C);
F_DA = F2*(A-D)/normest(A-D);
F1 = vpa(solve(F_CA(2)*b+F_DA(2)*2*b-W/2*b-W/2*2*b==0,F1));
F2 = vpa(F1/F1F2r);
tau1 = vpa(F1/(pi*d^2/4)*1e-6)
tau2 = vpa(F2/(pi*d^2/4)*1e-6)
