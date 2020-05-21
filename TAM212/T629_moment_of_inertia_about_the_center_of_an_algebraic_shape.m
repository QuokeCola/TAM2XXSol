syms x y

ylow = 2*x^2+8*x-25
yhigh= 1*x^2+4*x+5
xlow = -1
xhigh= 2

rho = 6

if(subs(ylow,xlow)>subs(yhigh,xlow))
    temp=ylow
    ylow=yhigh
    yhigh=temp
end

A = int(int(1,y,ylow,yhigh),x,xlow,xhigh)
Yave = int(int(y,y,ylow,yhigh),x,xlow,xhigh)/A
Xave = int(int(x,y,ylow,yhigh),x,xlow,xhigh)/A

I = vpa(int(int(rho*((x-Xave)^2+(y-Yave)^2),y,ylow,yhigh),x,xlow,xhigh))