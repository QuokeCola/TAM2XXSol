clear all
clc

r = 7;
vQ = [-6, -6, 0];

if(exist('r')==1)
    syms omega;
elseif(exist('omega')==1)
    syms r;
end

theta = 180 % for position of Q, degree, ccw +

r = [cosd(theta),-sind(theta);sind(theta),cosd(theta)]*[r;0]
vt = cross([0,0,omega],[r',0])
vr = cross([0,0,omega],[0,norm(r),0])
eq = vt+vr==vQ
res = vpasolve(eq)
try
    r = res.r
end
try
    omega = res.omega
end