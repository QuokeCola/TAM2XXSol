rP = [5,-5, 0];
vP = [-5,4, 0];
omega = -4;


omega = [0,0,omega];
syms x y z
rC = vpasolve(cross(omega,[x,y,z])==vP,x,y,z)
rC = [rC.x,rC.y,rC.z]
rM = rP-rC