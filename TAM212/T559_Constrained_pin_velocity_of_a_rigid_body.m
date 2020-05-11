rPQ = [-3,-2,0];
vP = [-2,-3,0];

theta = 45 % degree, the angle of orbit. ccw for +

direct_V = [([cosd(theta),-sind(theta);sind(theta),cosd(theta)]*[1;0])',0]
syms vQm
vQ = direct_V*vQm
eqn = dot(vP-vQ,rPQ)==0
vQm=vpasolve(eqn)
norm(vQm)