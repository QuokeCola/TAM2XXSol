L = 218; % mm
a = 182; % mm
theta = 0.5; % degrees
alpha = 21; % degrees

D = [a,0] + [-cosd(alpha),sind(alpha)]*L;
B_new = a*[cosd(theta),-sind(theta)];
B_old = a*[1,0];
(normest(B_new-D)-normest(B_old-D))/normest(B_old-D)*1000