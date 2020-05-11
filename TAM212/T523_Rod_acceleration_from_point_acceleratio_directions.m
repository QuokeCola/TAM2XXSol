l = 6;
aP = 3;
thetaP = 76;
aQ = 3.5;
thetaQ = 40;

aQ=[-cosd(thetaQ),-sind(thetaQ)]*aQ
aP=[cosd(thetaP),sind(thetaP)]*aP

a = (aQ-aP)
omega = sqrt(norm(a(1))/l)
alpha = a(2)/l
