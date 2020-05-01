m1 = 4;
m2 = 6;
I1O = 6;
I2C = 32.5;
rOP = [-1,1,0];
rPQ = [-1,8,0];
omega1 = -16;
omega2 = 2;
vP = [16,16,0];
vQ = [0,14,0];
M = 4771;
alpha2 = -2;
Fp = [167,-3282,0];

%solve for aP
syms aPx aPy alpha1
aP1 = [aPx,aPy,0]
aQ = omega2^2*(-rPQ)+cross([0,0,alpha2],rPQ)+aP
aP2 = cross([0,0,alpha1],rOP)-omega1^2*rOP
eq1 = aQ(1)==0
eq2 = aP1(1)==aP2(1)
eq3 = aP1(2)==aP2(2)
[aPx,aPy,alpha1]=solve(eq1,eq2,eq3,aPx,aPy,alpha1)