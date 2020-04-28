sx = -25
sy = -26
txy = 0
theta = 80

sx_=(sx+sy)/2+(sx-sy)/2*cosd(2*theta)+txy*sind(2*theta)
sy_=(sx+sy)/2-(sx-sy)/2*cosd(2*theta)-txy*sind(2*theta)
txy_=-(sx-sy)/2*sind(2*theta)+txy*cosd(2*theta)