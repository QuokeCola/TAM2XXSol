theta = 130;
rij = [-1,2];

rij = rij'
% + for clockwise, - for counter clockwise
theta = -theta
rotationMatrix = [cosd(theta),-sind(theta);sind(theta),cosd(theta)]

r_rotated = rotationMatrix * rij