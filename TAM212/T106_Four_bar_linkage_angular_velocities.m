clear all
clc

rAB = [1,0,0];
rAD = [-1,1,0];
rBC = [1,2,0];
rDC = [3,1,0];
omega1 = -3;

if(exist('omega1')==1)
    syms omega2 omega3
elseif(exist('omega2')==1)
    syms omega1 omega3
elseif(exist('omega3')==1)
    syms omega1 omega2
end

vD = cross([0,0,omega1],rAD)
vC = cross([0,0,omega2],rBC)
vCn = vD+cross([0,0,omega3],rDC)
eqn = vC == vCn
res = vpasolve(eqn)

try
    omega1 = res.omega1
end
try
    omega2 = res.omega2
end
try
    omega3 = res.omega3
end