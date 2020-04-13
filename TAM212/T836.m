rPA = [3,1]
rQA = [1,1]
vP = [3,3]
vQ = [2,-2]

syms x y

va = [x,y]
vreP = va - vP
vreQ = va - vQ
[x,y] = solve(dot(rPA,vreP)==0,dot(rQA,vreQ)==0,x,y)
vpa([x,y])
