clear all
m = 3;
r = 4;
D = [-26,-2,0];
mu = 0.75;
g = -9.8;

theta = 0 % degree, position of P

rP = [r,0]*[cosd(theta),sind(theta);-sind(theta),cosd(theta)]
syms FrictionX acx N alphaz aQx;
F = [FrictionX,0,0];
eqn1 = F(1)+D(1)==m*acx;
eqn2 = N+m*g+D(2)==0;
Msum1 = cross([rP,0],D)+cross([0,-r,0],F);
Msum2 = 0.5*m*r^2*[0,0,alphaz];
eqn3 = Msum1(3)==Msum2(3);
eqn4 = acx == -alphaz*r;
eqn5 = aQx == 0;

res = vpasolve(eqn1,eqn2,eqn3,eqn4,eqn5);
acx = res.acx;
alphaz = res.alphaz;
N = res.N;
FrictionX = res.FrictionX;

if (norm(FrictionX)-norm(mu*N)<0) % stick
    acx = res.acx;
    alphaz = res.alphaz;
    N = res.N;
    FrictionX = res.FrictionX;
    aQx = res.aQx;
else % slipping left
    syms FrictionX acx N alphaz aQx;
    F = [FrictionX,0,0];
    eqn1 = F(1)+D(1)==m*acx;
    eqn2 = N+m*g+D(2)==0;
    Msum1 = cross([rP,0],D)+cross([0,-r,0],F);
    Msum2 = 0.5*m*r^2*[0,0,alphaz];
    eqn3 = Msum1(3)==Msum2(3);
    eqn4 = FrictionX == mu*N;
    eqn5 = aQx == acx+alphaz*r;
    res = vpasolve(eqn1,eqn2,eqn3,eqn4,eqn5);
    acx = res.acx;
    alphaz = res.alphaz;
    N = res.N;
    FrictionX = res.FrictionX;
    aQx = res.aQx;
    if(aQx*FrictionX<0)
        acx = res.acx;
        alphaz = res.alphaz;
        N = res.N;
        FrictionX = res.FrictionX;
        aQx = res.aQx;
    else % slipping left
        syms FrictionX acx N alphaz aQx;
        F = [FrictionX,0,0];
        eqn1 = F(1)+D(1)==m*acx;
        eqn2 = N+m*g+D(2)==0;
        Msum1 = cross([rP,0],D)+cross([0,-r,0],F);
        Msum2 = 0.5*m*r^2*[0,0,alphaz];
        eqn3 = Msum1(3)==Msum2(3);
        eqn4 = FrictionX == -mu*N;
        eqn5 = aQx == acx+alphaz*r;
        res = vpasolve(eqn1,eqn2,eqn3,eqn4,eqn5);
        acx = res.acx;
        alphaz = res.alphaz;
        N = res.N;
        FrictionX = res.FrictionX;
        aQx = res.aQx;
    end
end
aC = [acx,0,0]
aP = aC+cross([0,0,alphaz],[rP,0])
alphaz = alphaz