w = 12; % kN/m
a = 5; % m

M0 = 3*w*a^2

syms x
M1 = int(w*(4*a-x),x,a,3*a)
M = M0+M1

F = M/(3*a)

int((F-(w*x)),x,0,2*a)

3*w*a^2