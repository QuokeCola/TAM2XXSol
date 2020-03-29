x = 5
y = 3
z = 2
omega = [1,3,-3]
alpha = [2,-3,3]

position = [x,y,z];
a1 = cross(alpha,position);
a2 = cross(omega,cross(omega,position));
a1+a2