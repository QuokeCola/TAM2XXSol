w = 420/100
r = 160/100
h = 140/100

rho = 9810

g = 9.81

syms x
M = vpa(int(r-sqrt(r^2-(h-x)^2),x,0,h)*w/2*rho)

Fx = vpa(int(x*rho,x,0,h)*w/2)