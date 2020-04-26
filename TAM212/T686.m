theta = 4
omega = 1
alpha = 3

syms t
theta = theta+(2*omega+alpha*t)*t/2
r = (3+2*sin(-4*theta+3))
r = [r*cos(theta),r*sin(theta)]
v = diff(r,t)
r = diff(v,t)
vpa(subs(r,0))