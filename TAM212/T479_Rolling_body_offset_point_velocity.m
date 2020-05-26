clear all
clc

r = 9;
vQ = [-8, 8, 0];

theta = 0 % for position of Q, degree, ccw +

if(exist('r')==1)
    syms omega;
elseif(exist('omega')==1)
    syms r;
end

ra = [cosd(theta),-sind(theta);sind(theta),cosd(theta)]*[r;0]
vt = cross([0,0,omega],[ra',0])
vh = cross([0,0,omega],[0,norm(ra),0])
eq = vt+vh==vQ
try
    res = vpasolve(eq)
catch ME
    if(ME.identifier=='symbolic:numeric:CannotHandleCase1')
        v = vt+vh;
        res = vpasolve(v(2)==vQ(2))
    end
end
    
try
    r = res.r
end
try
    omega = res.omega
end