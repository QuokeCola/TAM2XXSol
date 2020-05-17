clear all;
clc;
r1 = 7;
r2 = 9;
r3 = 6;
r4 = 7;
aP = 86;
alpha2Mag = 5;

P = 4;%The circle p locate


if(exist('alpha1Mag')==1)
    syms alpha2Mag alpha3Mag alpha4Mag omega1 omega2 omega3 omega4
elseif(exist('alpha2Mag')==1)
    syms alpha1Mag alpha3Mag alpha4Mag omega1 omega2 omega3 omega4
elseif(exist('alpha3Mag')==1)
    syms alpha1Mag alpha2Mag alpha4Mag omega1 omega2 omega3 omega4
elseif(exist('alpha4Mag')==1)
    syms alpha1Mag alpha2Mag alpha3Mag omega1 omega2 omega3 omega4    
elseif(exist('omega1')==1)
    syms alpha1Mag alpha2Mag alpha3Mag alpha4Mag omega2 omega3 omega4
elseif(exist('omega2')==1)
    syms alpha1Mag alpha2Mag alpha3Mag alpha4Mag omega1 omega3 omega4
elseif(exist('omega3')==1)
    syms alpha1Mag alpha2Mag alpha3Mag alpha4Mag omega1 omega2 omega4
elseif(exist('omega3')==1)
    syms alpha1Mag alpha2Mag alpha3Mag alpha4Mag omega1 omega2 omega3
end

eq1 = alpha1Mag*r1==alpha2Mag*r2;
eq2 = alpha2Mag*r2==alpha3Mag*r3;
eq3 = alpha3Mag*r3==alpha4Mag*r4;
eq4 = omega1*r1 == -omega2*r2;
eq5 = omega2*r2 == -omega3*r3;
eq6 = omega3*r3 == -omega4*r4;
if (P == 1)
    eq7 = aP^2 == (alpha1Mag*r1)^2+(omega1^2*r1)^2;
elseif (P == 2)
    eq7 = aP^2 == (alpha2Mag*r2)^2+(omega2^2*r2)^2;
elseif (P == 3)
    eq7 = aP^2 == (alpha3Mag*r3)^2+(omega3^2*r3)^2;
elseif (P == 4)
    eq7 = aP^2 == (alpha4Mag*r4)^2+(omega4^2*r4)^2;
end
res = vpasolve(eq1,eq2,eq3,eq4,eq5,eq6,eq7);
try
    alpha1Mag = res.alpha1Mag
end
try
    omega1 = res.omega1
end
try
    alpha2Mag = res.alpha2Mag
end
try
    omega2 = res.omega2
end
try
    alpha3Mag = res.alpha3Mag
end
try
    omega3 = res.omega3
end
try
    alpha4Mag = res.alpha4Mag
end
try
    omega4 = res.omega4
end