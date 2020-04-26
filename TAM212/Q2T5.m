theta = 4;
omega = -2;
alpha = 3;

syms t
angle = theta+(2*omega+alpha*t)*0.5*t
r = 4+sin(4*angle+3)

v = diff(r,t)
a = diff(v,t)
subs(v,0)
vpa(subs(a,0))