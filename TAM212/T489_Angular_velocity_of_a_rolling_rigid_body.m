rCQ = [-24,7,0];
vQ = [32,24,0];

syms omega

eq1 = cross([0,0,omega],rCQ)-[omega*norm(rCQ),0,0]==vQ
omega = vpasolve(eq1,omega)