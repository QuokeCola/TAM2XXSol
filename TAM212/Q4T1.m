clear all
clc
rOP = [2,1,0];
rPQ = [1,2,0];
omega1 = 2;
omega2 = 3;
alpha1 = -1;
alpha2 = -3;

atPO = cross([0,0,alpha1],rOP)
arPO = omega1^2*(-rOP)
atPQ = cross([0,0,alpha2],rPQ)
arPQ = omega2^2*(-rPQ)

aQ = atPO+arPO+atPQ+arPQ