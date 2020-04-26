theta = -4;
omega = 1;
alpha = -3;

syms t
theta = theta+(2*omega+t*alpha)*t/2
r = 4-2*sin(-4*theta+3)
position = r*[cos(theta),sin(theta)]
v = diff(position,t)
a = diff(v,t)
vpa(subs(a,0))