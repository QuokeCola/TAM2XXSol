sx = 0
sy = 29
txy = -22
theta = 30


% r_M = [cosd(2*theta),sind(2*theta);sind(2*theta),cosd(2*theta)]
% sc = (sx+sy)/2;
% X = [sx,-txy];
% Y = [sy,txy];
% Xn = (X-[sc,0])*r_M+[sc,0];
% Yn = (Y-[sc,0])*r_M+[sc,0];
% sxn = Xn(1)
% syn = Yn(1)
% txyn = Yn(2)
% sc = sc
% tc = 0
% R = norm(X-Y)/2

sx_=(sx+sy)/2+(sx-sy)/2*cosd(2*theta)+txy*sind(2*theta)
sy_=(sx+sy)/2-(sx-sy)/2*cosd(2*theta)-txy*sind(2*theta)
txy_=-(sx-sy)/2*sind(2*theta)+txy*cosd(2*theta)
s1=(sx+sy)/2+sqrt(((sx-sy)/2)^2+txy^2)
s2=(sx+sy)/2-sqrt(((sx-sy)/2)^2+txy^2)
r=sqrt(((sx-sy)/2)^2+txy^2)
t=(s1+s2)/2