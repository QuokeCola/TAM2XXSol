clear all
clc

omega = [0, 0, 2];
aQ = [3,-8, 0];
theta = 0 % for position of Q, degree, ccw +

if(exist('alpha')==1)
    a = 1
    syms omega r;
elseif(exist('omega')==1)
    a = 2
    syms alpha r;
elseif(exist('r')==1)
    a = 3
    syms alpha omega;
end
ra = [cosd(theta),-sind(theta);sind(theta),cosd(theta)]*[r;0];
try
    aQt = cross([0;0;alpha],[ra;0]);
    aCh = cross([0;0;alpha],[0;norm(ra);0]);
    aQr = omega^2*[-ra;0];
catch ME
   if (strcmp(class(alpha),'double'))
       alpha = alpha(3);
   elseif(strcmp(class(omega),'double'))
       omega = omega(3);
   end
   aQt = cross([0;0;alpha],[ra;0]);
   aQr = omega^2*[-ra;0];
   aCh = cross([0;0;alpha],[0;norm(ra);0]);
end

aQn = aQt+aCh+aQr;
eq = aQn == aQ';

res = vpasolve(eq);

try
    alpha = res.alpha
end
try
    omega = res.omega
end
try
    r = res.r
end