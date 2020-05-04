L =3
syms x
y1 = -3*L^2*x^2/16+L*x^3/12
M2 = int(L-x,x,L,x)
dy2 = int(M2,x,L/2,x)+subs(diff(y1,x),L/2)
y2 = int(dy2,x,L/2,x)+subs(y1,L/2)
coeffs(vpa(collect(y2)))