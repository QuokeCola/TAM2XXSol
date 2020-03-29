syms x
a = 20
b = 1
c = 0.6
l = 6

F = a + b * x + c * x^2

Fr = vpa(int (F,x,0,l))
M = F * x
Mr = vpa(int (M,x,0,l))