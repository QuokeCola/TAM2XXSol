syms x
l = 7
hbig = 80
hsmall = 40
row = 600
t = 10

g= 9.81;
hbig = hbig/100;
hsmall = hsmall/100;
t = t/100;
Fr = (hbig+hsmall)*l/2*t*row * g
F = (-(hbig-hsmall)/l * x + hbig)* t * row * g;
M = F * x;
Mr = vpa(int(M,x,0,l))
