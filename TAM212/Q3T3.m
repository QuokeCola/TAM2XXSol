m = 3;
g = -9.8;
v = 3;
x = 8;

syms t
r = [-4*cos(2.5*v*t),v*t]
ve = diff(r,t)
a = diff(ve,t)

acc = vpa(subs(a,x/v))

Fw = vpa(acc-[0,g])*m