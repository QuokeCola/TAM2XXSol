a = [4,1];
bLength = 2;

%negative for a to b rotate counter clockwise
%positive for a to b rotate clockwise
theta = 2*pi/9;

rotationmatrix = [cos(theta),-sin(theta);sin(theta),cos(theta)];

(a/normest(a))*rotationmatrix*bLength