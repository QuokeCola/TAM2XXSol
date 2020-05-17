l = 6; aP = 2; thetaP = 44; aQ = 2; thetaQ = 45;

aQ=[-cosd(thetaQ),-sind(thetaQ)]*aQ
aP=[cosd(thetaP),sind(thetaP)]*aP

a = (aQ-aP)
omega = sqrt(norm(a(1))/l)
alpha = a(2)/l
