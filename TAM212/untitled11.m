m = 6;
g = -9.8;
x = 11;
v = 3;
vDot = -2;

x_origin = x

syms x

r = [x,-4*sin(3*x)]

rDot = diff(r,x)
T = rDot/norm(rDot)
curvature = norm(diff(T,x))/norm(rDot,x)
accel_r = curvature*v^2*diff(T,x)/norm(diff(T,x))
accel_r_ = vpa(subs(accel_r,x_origin))
accel_n_ = vpa(vDot*subs(T,x_origin))
accel = vpa(accel_r_+accel_n_)
F = (accel-[0,g])*m