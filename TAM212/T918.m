m = 7
vx = 4
g = -9.8
x = 12

x_origin = x

syms x
%enter y here
y = -3*cos(3*x) 

y = subs(y,x*vx)
vy = diff(y,x)
ay = diff(vy,x)
Fy = vpa(subs((ay-g)*m,x_origin/vx))