theta = 45;
rOQ = [-4,2];
rQP = [6,-5];

rOP_origin = rOQ+rQP
rOP = rOP_origin*[cosd(theta),sind(theta);-sind(theta),cosd(theta)]

vpa(norm(rOP))-vpa(norm(rOP_origin))