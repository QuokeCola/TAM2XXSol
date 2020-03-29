theta = 2
omega = 2

er = [cos(theta),sin(theta)]
etheta = [-sin(theta),cos(theta)]

v = omega*etheta*rtheta(theta) + er*drthetadt(theta,omega)

function r = rtheta(theta)
r = 3+2*sin(5*theta+2);
end

function vr = drthetadt(theta,omega)
vr = 5*2*cos(5*theta+2)*omega;
end
