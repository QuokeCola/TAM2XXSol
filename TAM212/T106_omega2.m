rAB = [2,0]
rAD = [-1,1]
rBC = [0,2]
rDC = [3,1]
omega3 = 1

syms omega1

v = cross([0,0,omega1],[rAD(1),rAD(2),0])+cross([0,0,omega3],[rDC(1),rDC(2),0])

omega1 = solve(v(2)==0,omega1)

v = cross([0,0,omega1],[rAD(1),rAD(2),0])+cross([0,0,omega3],[rDC(1),rDC(2),0])

syms omega2
v_new = cross([0,0,omega2],[rBC(1),rBC(2),0])
omega2 = solve(v_new==v,omega2)