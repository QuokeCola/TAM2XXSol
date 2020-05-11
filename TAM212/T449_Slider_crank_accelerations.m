clear all
clc

rOP = [-3,-1,0];
rPQ = [4,12,0];
omega1 = [24];
omega2 = [2];
vP = [24,-72,0];
vQ = [0,-64,0];
aQ = [0,5568];

theta = 90 % degree, slider horizontal for 0, vertical for 90
if(exist('aQ')==1)
    aQ_di = ([cosd(theta),-sind(theta);sind(theta),cosd(theta)]*[1;0])'
    syms alpha1 alpha2 aPx aPy
    aP = [aPx,aPy,0]
elseif(exist('aP')==1)
    aQ_di = ([cosd(theta),-sind(theta);sind(theta),cosd(theta)]*[1;0])'
    syms alpha1 alpha2 aQm
    aQ = aQm*[aQ_di,0]
elseif(exist('alpha1')==1)
    aQ_di = ([cosd(theta),-sind(theta);sind(theta),cosd(theta)]*[1;0])'
    syms alpha2 aPx aPy aQm
    aQ = aQm*[aQ_di,0]
    aP = [aPx,aPy,0]
elseif(exist('alpha2')==1)
    aQ_di = ([cosd(theta),-sind(theta);sind(theta),cosd(theta)]*[1;0])'
    syms alpha1 aPx aPy aQm
    aQ = aQm*[aQ_di,0]
    aP = [aPx,aPy,0]
end

aPt = cross([0,0,alpha1],rOP);
aPr = omega1^2*(-rOP);
aQt = cross([0,0,alpha2],rPQ)
aQr = omega2^2*(-rPQ)
aQn = aPt+aPr+aQt+aQr
eq1=aQn(1)==aQ(1)
eq2=aQn(2)==aQ(2)
eq3=aP(1)==aPt(1)+aPr(1)
eq4=aP(2)==aPt(2)+aPr(2)
res = solve(eq1,eq2,eq3,eq4)

try
    aQ = res.aQm*aQ_di
end
try
    aP = [res.aPx,res.aPy]
end
try
    alpha1 = res.alpha1
end
try
    alpha2 = res.alpha2
end