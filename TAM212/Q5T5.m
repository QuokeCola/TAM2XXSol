r1 = 7;
r2 = 6;
r3 = 7;
r4 = 8;
aP = 518;
omega3Mag = 6;

omega2=omega3Mag*r3/r2
syms a2
eqn = aP^2==(omega2^2*r2)^2+(a2*r2)^2
a2 = vpasolve(eqn)
a4 = a2*r2/r4