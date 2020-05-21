rho = 40;
omega = -2;
alpha = -6;
r = [6,6,0];

theta = 0 % for position of C, degree, ccw +
problem = 1 % -1 for inner, 1 for outer

r = r';
er = [cosd(theta),-sind(theta);sind(theta),cosd(theta)]*[1;0]
et = [cosd(theta),-sind(theta);sind(theta),cosd(theta)]*[0;1]
R = (rho+problem*norm(r))*er
aCr = [-((omega*norm(r))/norm(R))^2*R;0]
aCt = cross([0;0;alpha],[norm(r)*er;0])*(problem)
aQcr = omega^2*(-r)
aQct = cross([0;0;alpha],r)

aQ = aCr+aCt+aQcr+aQct