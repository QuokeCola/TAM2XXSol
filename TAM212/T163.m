syms x y

rho = 4

ylow = -x^2-4*x-7
yhigh= -x^2+4*x+8
xlow = -1
xhigh= 2

Px = -1
Py = -4

A = int(int(1,y,ylow,yhigh),x,xlow,xhigh)
Yave = int(int(y,y,ylow,yhigh),x,xlow,xhigh)/A
Xave = int(int(x,y,ylow,yhigh),x,xlow,xhigh)/A

I = vpa(int(int(rho*((x-Xave)^2+(y-Yave)^2),y,ylow,yhigh),x,xlow,xhigh))
Inew = abs(I)+((Px-Xave)^2+(Py-Yave)^2)*A*rho