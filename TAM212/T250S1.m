m = 8
g = -9.8
x = 3
v = 1
vDot = 3

x_origin = x
syms x

y = -2*cos(2.5*x)
v_direct = 1 % right for 1, left for -1

% Above for user inputs.
% Vector solution

p = [x,y];
dp = diff(p,x);
t = dp/norm(dp);
tdot = diff(t,x);
curvature = norm(tdot)/norm(dp);

an = v^2*subs(tdot,x_origin)/norm(subs(tdot,x_origin))*subs(curvature,x_origin);
at = vDot*subs(t,x_origin);
F = vpa((an+at*v_direct)*m-[0,g]*m)