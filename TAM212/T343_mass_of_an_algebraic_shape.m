syms x y
ylow = 2*x^2+8*x+3
yhigh= 1*x^2+2*x+3
xlow = -2
xhigh = -1
row = 2

if(subs(ylow,xlow)>subs(yhigh,xlow))
    temp=ylow
    ylow=yhigh
    yhigh=temp
end
int(int(row,y,ylow,yhigh),x,xlow,xhigh)