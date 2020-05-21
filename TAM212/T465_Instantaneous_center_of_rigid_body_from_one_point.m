rP = [4,-3, 0];
vP = [1,2, 0];
omega = -1;


omega = [0,0,omega];
syms x y z
rC = vpasolve(cross(omega,[x,y,z])==vP,x,y,z)
rC = [rC.x,rC.y,rC.z]
rM = rP-rC