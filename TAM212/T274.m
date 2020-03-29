theta = 45;
rOQ = [4,-1];
rQP = [-2,4];

%transfer the vector form to a column
rOQ = [rOQ(1);rOQ(2)];
rQP = [rQP(1);rQP(2)];

%got rOP with the original coordinates
rOP_origin = rOQ+rQP;

% + for clockwise, - for counter-clockwise
theta = theta;

%rotation matrix
rotationMatrix = [cosd(theta),-sind(theta);+sind(theta),cosd(theta)];
rOP_transf = rotationMatrix * rOP_origin