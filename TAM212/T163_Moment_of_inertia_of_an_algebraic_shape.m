syms x y

rho = 2

ylow = -x^2-4*x-5
yhigh= -1*x^2+4*x+13
xlow = -2
xhigh= 2

Px = 1
Py = -2
if(subs(ylow,xlow)>subs(yhigh,xlow))
    temp=ylow;
    ylow=yhigh;
    yhigh=temp;
end

A = int(int(1,y,ylow,yhigh),x,xlow,xhigh);
Yave = int(int(y,y,ylow,yhigh),x,xlow,xhigh)/A;
Xave = int(int(x,y,ylow,yhigh),x,xlow,xhigh)/A;

I = vpa(int(int(rho*((x-Xave)^2+(y-Yave)^2),y,ylow,yhigh),x,xlow,xhigh));
Inew = abs(I)+((Px-Xave)^2+(Py-Yave)^2)*A*rho