rOP = [-1,3,0];
rPQ = [-8,-2,0];
omega1 = [16];
omega2 = [-2];
vP = [-48,-16,0];
vQ = [-52,0,0];
alpha2 = 1;

syms aQ
aQv = [aQ,0,0] % Be aware that horizontal or vertical!

aQr = rPQ*omega2^2
aQtheta = cross([0,0,alpha2],-rPQ)
aP = aQr+aQtheta+aQv
aPr = -rOP*omega1^2
aPtheta = aP-aPr

aQ = vpasolve(dot(aPtheta,aPr)==0,aQ)
aQv = [aQ,0,0]
aP = aQr+aQtheta+aQv