syms x y

ylow = -x^2-2*x-2
yhigh= x^2-2*x+3
xlow = -1
xhigh= 0

rho = 2

A = int(int(1,y,ylow,yhigh),x,xlow,xhigh)
Yave = int(int(y,y,ylow,yhigh),x,xlow,xhigh)/A
Xave = int(int(x,y,ylow,yhigh),x,xlow,xhigh)/A

I = vpa(int(int(rho*((x-Xave)^2+(y-Yave)^2),y,ylow-Yave,yhigh-Yave),x,xlow-Xave,xhigh-Xave))
I = vpa(int(int(rho*((x-Xave)^2+(y-Yave)^2),y,ylow,yhigh),x,xlow,xhigh))