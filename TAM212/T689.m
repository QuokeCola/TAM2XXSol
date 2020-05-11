r = 2;
aQMag = 13;
omega = -2; %ccw +
alpha = -2; %ccw +
theta = 180; %for position of Q, degree, ccw +


syms row;
r = [cosd(theta),-sind(theta);sind(theta),cosd(theta)]*[r;0];
r = [r;0];
omega = [0;0;omega];
alpha = [0;0;alpha];
v = cross(omega,r);
aQct = cross(alpha,r);
aQcr = norm(omega)^2*(-r);
aCt = cross(-alpha,[0;-norm(r);0]);
aCr = norm(v)^2/(row-norm(r))*[0;1;0];
aQ = aQct+aQcr+aCt+aCr;
row = solve(norm(aQ)==aQMag,row);
vpa(row)
%vpa(row(1))
%vpa(row(2))