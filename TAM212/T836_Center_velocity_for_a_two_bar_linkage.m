rPA = [3,-3,0];
rQA = [0,-2,0];
vP = [3,3,0];
vQ = [-2,1,0];

syms x y

va = [x,y,0]
vreP = va - vP
vreQ = va - vQ
[x,y] = solve(dot(rPA,vreP)==0,dot(rQA,vreQ)==0,x,y)
vpa([x,y])
