sx = -15; 
sy = 30;
txy = 24;


sigmanew1 = (sx+sy)/2+sqrt((sx-sy)^2/4+txy^2)
sigmanew2 = (sx+sy)/2-sqrt((sx-sy)^2/4+txy^2)

thetap1 = atand((sigmanew1-sx)/txy)
thetap = 1/2*atand(2*txy/(sx-sy));
thetapEq2 = 0.5*atan2d( 2*txy, (sx - sy));

tmax = (sigmanew1-sigmanew2)/2
thetas = thetap1+45-180

sigmanew1+sigmanew2