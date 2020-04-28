m = 3;
g = -9.8;
vx = 3;
x = 8;

x_origin = x

syms x
%enter y here
y = -4*cos(2.5*x) 

y = subs(y,x*vx)
vy = diff(y,x)
ay = diff(vy,x)
vpa(subs(ay,x_origin/vx))
Fy = vpa(subs((ay-g)*m,x_origin/vx))