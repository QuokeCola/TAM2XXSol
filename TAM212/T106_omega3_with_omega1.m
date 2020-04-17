rAB = [2,0]
rAD = [-1,1]
rBC = [0,2]
rDC = [3,1]
omega1 = -2

rAB = [rAB, zeros(1,1)]
rAD = [rAD, zeros(1,1)]
rBC = [rBC, zeros(1,1)]
rDC = [rDC, zeros(1,1)]

syms omega3

vC = cross([0,0,omega3],rDC)+cross([0,0,omega1],rAD)
omega3 = vpa(solve(dot(rBC,vC)==0,omega3))