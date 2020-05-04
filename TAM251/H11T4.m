L = 9
syms x
y1 = (-L^2*x/16)+x^3/12
y2 = subs(y1,L-x)
coeffs(vpa(collect(y2)))