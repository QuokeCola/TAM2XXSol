theta = 160;

% - for clockwise, + for counter-clockwise
theta = theta;
rotationMatrix = [cosd(theta),-sind(theta);sind(theta),cosd(theta)]

u = rotationMatrix * [1;0]
v = rotationMatrix * [0;1]