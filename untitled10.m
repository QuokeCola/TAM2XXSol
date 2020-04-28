m = 3;
g = -9.8;
v = 3;
x = 8;

syms t
y=-4*cos(2.5*t);

dy_dt=diff(y,t)
rho=subs((1+dy_dt^2)^(3/2)/diff(dy_dt),x)
theta=atan(subs(dy_dt,x))
F=m*v^2/rho;
Fx=vpa(-F*sin(theta))
Fy=vpa(F*cos(theta)-m*g)