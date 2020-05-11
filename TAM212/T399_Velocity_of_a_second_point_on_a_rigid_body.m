rPQ = [3,2,0];
vP = [-3,4,0];
omega = 2;
omega = [0,0,omega];
vQP = cross(omega,rPQ)
vQ = vP+vQP