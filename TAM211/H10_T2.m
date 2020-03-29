a = 50;
b = 10
syms x
y = sqrt(2*x)

g   = int(b-y,x,0,a);
M_x = int((b-y)*x,x,0,a);
C_x = vpa(M_x/g)

M_y = int((b-y)*(b+y)/2,x,0,a);
C_y = vpa(M_y/g)