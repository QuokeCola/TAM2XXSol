x = 4;
y = -4;
z = -2;
v = 8;
uvec = [-2,2,-2];

direct_uvec = uvec/norm(uvec)
syms omega
angular_speed=omega*direct_uvec
velocity = cross(angular_speed,[x,y,z])
omega = solve(norm(velocity)==v,omega)