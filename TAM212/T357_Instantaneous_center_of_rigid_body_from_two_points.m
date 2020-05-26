rP = [-4, 1, 0];
rQ = [-3, 4, 0];
vP = [-8, -8, 0];
vQ = [-14, -6, 0];


syms x y
eq1 = rP+cross([0,0,1],vP)*x == rQ+cross([0,0,1],vQ)*y
[x,y]=vpasolve(eq1,x,y)
rM = rP+cross([0,0,1],vP)*x