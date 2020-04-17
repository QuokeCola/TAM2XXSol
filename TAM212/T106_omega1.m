rAB = [1,0]
rAD = [-1,2]
rBC = [1,1]
rDC = [3,-1]
omega2 = 1

rAB = [rAB, zeros(1,1)]
rAD = [rAD, zeros(1,1)]
rBC = [rBC, zeros(1,1)]
rDC = [rDC, zeros(1,1)]

syms omega3

vD = cross([0,0,omega3],-rDC)+cross([0,0,omega2],rBC)
omega3 = solve(dot(vD,rAD)==0,omega3)
vD = cross([0,0,omega3],-rDC)+cross([0,0,omega2],rBC)

syms omega1

vD_new = cross([0,0,omega1],rAD)
omega1 = vpa(solve(vD_new==vD,omega1))
