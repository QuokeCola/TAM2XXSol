rCQ = [12,5,0];
vQ = [54,-36,0];

syms omega

eq1 = cross([0,0,omega],rCQ)-[omega*norm(rCQ),0,0]==vQ
omega = vpasolve(eq1,omega)