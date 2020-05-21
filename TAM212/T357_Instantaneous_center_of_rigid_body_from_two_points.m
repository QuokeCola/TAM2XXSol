rP = [3, -1, 0];
rQ = [2, 0, 0];
vP = [24, -6, 0];
vQ = [30, 0, 0];

syms x y
eq1 = rP+cross([0,0,1],vP)*x == rQ+cross([0,0,1],vQ)*y
[x,y]=vpasolve(eq1,x,y)
rM = rP+cross([0,0,1],vP)*x