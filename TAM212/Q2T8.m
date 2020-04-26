x = 5;
y = 5;
z = 5;
omega = [-1,0,-1];
alpha = [1,-1,-2];

r = [x,y,z]

cross(alpha,r) + cross(omega,cross(omega,r))