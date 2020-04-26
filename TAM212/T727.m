r1 = 8;
r2 = 7;
r3 = 7;
r4 = 6;
aP = 44;
alpha1Mag = 5;

alpha3 = alpha1Mag*r1/r3
ak = alpha3*r3
ar = sqrt(aP^2-ak^2)
omega3 = sqrt(ar/r3)
omega4 = -omega3*r3/r4