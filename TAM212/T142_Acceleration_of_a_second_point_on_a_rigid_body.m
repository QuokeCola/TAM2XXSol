omega = 0; alpha = -1; rPQ = [-1,-3,0]; aP = [-1,-2,0];

a1 = omega^2*(-rPQ)
angular = cross([rPQ(1),rPQ(2),0],[0,0,-alpha])
a2 = [angular(1),angular(2),0]
aQ = aP+a1+a2