clear all
clc

m1 = 4;
m2 = 3;
I1O = 3;
I2C = 16;
rOP = [1,-1,0];
rPQ = [8,0,0];
omega1 = -16;
omega2 = 2;
vP = [-16,-16,0];
vQ = [-16,0,0];
alpha2 = 2;
aP = [-528,-16,0];
Fp = [-1632,-16,0];


theta = 0 % degree, slider horizontal for 0, vertical for 90
if(exist('aQ')==1)
    aQ_di = ([cosd(theta),-sind(theta);sind(theta),cosd(theta)]*[1;0])';
    syms alpha1 alpha2 aPx aPy;
    aP = [aPx,aPy,0];
elseif(exist('aP')==1)
    aQ_di = ([cosd(theta),-sind(theta);sind(theta),cosd(theta)]*[1;0])';
    syms alpha1 alpha2 aQm;
    aQ = aQm*[aQ_di,0];
elseif(exist('alpha1')==1)
    aQ_di = ([cosd(theta),-sind(theta);sind(theta),cosd(theta)]*[1;0])';
    syms alpha2 aPx aPy aQm;
    aQ = aQm*[aQ_di,0];
    aP = [aPx,aPy,0];
elseif(exist('alpha2')==1)
    aQ_di = ([cosd(theta),-sind(theta);sind(theta),cosd(theta)]*[1;0])';
    syms alpha1 aPx aPy aQm;
    aQ = aQm*[aQ_di,0];
    aP = [aPx,aPy,0];
end

aPt = cross([0,0,alpha1],rOP);
aPr = omega1^2*(-rOP);
aQt = cross([0,0,alpha2],rPQ);
aQr = omega2^2*(-rPQ);
aQn = aPt+aPr+aQt+aQr;
eq1=aQn(1)==aQ(1);
eq2=aQn(2)==aQ(2);
eq3=aP(1)==aPt(1)+aPr(1);
eq4=aP(2)==aPt(2)+aPr(2);
res = solve(eq1,eq2,eq3,eq4);

try
    aQ = [res.aQm*aQ_di,0]
end
try
    aP = [res.aPx,res.aPy,0]
end
try
    alpha1 = res.alpha1
end
try
    alpha2 = res.alpha2
end
aC = (aP+aQ)/2;
if(exist('Fp')==1)
    syms FqMag M;
    Fq = FqMag*cross([aQ_di,0],[0,0,1]);
elseif(exist('Fq')==1)
    syms Fpx Fpy M;
    Fp = [Fpx,Fpy,0];
elseif(exist('M')==1)
    syms Fpx Fpy FqMag
    Fq = FqMag*cross([aQ_di,0],[0,0,1]);
    Fp = [Fpx,Fpy,0];
end

M1=cross(rOP,-Fp)+[0,0,M];
eq5=M1(3)/I1O==alpha1;
eq6=(Fp(1)+Fq(1))==m2*aC(1);
eq7=(Fp(2)+Fq(2))==m2*aC(2);
res2=vpasolve(eq5,eq6,eq7);

try
    Fq = res2.FqMag*cross([aQ_di,0],[0,0,1])
end
try
    Fp = [res2.Fpx,res2.Fpy,0]
end
try
    M = res2.M
end