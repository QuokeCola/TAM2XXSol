rOP = [0,1,0];
rPQ = [1,2,0];
vQ = [0,1,0];

rOP = [rOP]
rPQ = [rPQ]
vQ = [vQ]

syms omega1
syms omega2

[omega1,omega2]=solve(cross([0,0,omega1],rOP)+cross([0,0,omega2],rPQ)==vQ,omega1,omega2)