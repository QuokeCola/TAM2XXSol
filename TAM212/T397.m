rOP = [0,2]
rPQ = [-2,2]
vQ = [0,4]

rOP = [rOP,0]
rPQ = [rPQ,0]
vQ = [vQ,0]

syms omega1
syms omega2

[omega1,omega2]=solve(cross([0,0,omega1],rOP)+cross([0,0,omega2],rPQ)==vQ,omega1,omega2)