m = 6;
l = 8;
D = [51,98,0];
mu = 1;
g = -9.8;

lr = 1 % P on right -1
D(1) = D(1)*lr

%static
syms N aCy aCx aQy aQx alphaZ FrictionX
eqn1 = aCy == -alphaZ*(l/2);
eqn2 = m*aCy == D(2)+N+m*g;
eqn3 = aCx == 0;
eqn4 = aQx == 0;
eqn5 = aQy == 0;
eqn6 = alphaZ*1/3*m*l^2 == -m*g*l/2-D(2)*l;
eqn7 = -FrictionX == D(1);

res = vpasolve(eqn1,eqn2,eqn3,eqn4,eqn5,eqn6,eqn7);
if(norm(res.N*mu)-norm(res.FrictionX)>0)
    aCx = res.aCx
    aCy = res.aCy
    aQx = res.aQx
    aQy = res.aQy
    alphaZ = res.alphaZ
    FrictionX = res.FrictionX
else
    syms N aCy aCx aQy aQx alphaZ FrictionX
    eqn1 = aCy == -alphaZ*(l/2);
    eqn2 = m*aCy == D(2)+N+m*g;
    eqn3 = aCx*m == D(1)-D(1)/norm(D(1))*mu*N;
    eqn4 = aQx == aCx;
    eqn5 = aQy == 0;
    eqn6 = alphaZ*1/3*m*l^2 == -m*g*l/2-D(2)*l;
    eqn7 = -FrictionX == D(1);
    res = vpasolve(eqn1,eqn2,eqn3,eqn4,eqn5,eqn6,eqn7);
    aCx = res.aCx
    aCy = res.aCy
    aQx = res.aQx
    aQy = res.aQy
    alphaZ = res.alphaZ
    FrictionX = res.FrictionX
end
alphaZ = lr*alphaZ
aQ = [lr*aQx,aQy,0]
aC = [lr*aCx,aCy,0]
aP = aQ+cross([0,0,alphaZ],[-l,0,0])
