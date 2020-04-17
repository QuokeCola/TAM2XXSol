rAB = [1,0]
rAD = [-1,2]
rBC = [0,1]
rDC = [2,-1]
omega2 = 1

rAB = [rAB, zeros(1,1)]
rAD = [rAD, zeros(1,1)]
rBC = [rBC, zeros(1,1)]
rDC = [rDC, zeros(1,1)]

syms omega3

vD = cross([0,0,omega2],rBC)+cross([0,0,omega3],-rDC)
omega3 = solve(dot(rAD,vD)==0,omega3)