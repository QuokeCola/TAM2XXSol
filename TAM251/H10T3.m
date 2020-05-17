sx = -7; 
sy = -27;
txy = 10;

sigmanew1 = (sx+sy)/2+sqrt((sx-sy)^2/4+txy^2)
sigmanew2 = (sx+sy)/2-sqrt((sx-sy)^2/4+txy^2)

X = [sx,txy];
Y = [sy,-txy];
cent = (X+Y)/2

plot([(sx+sy)/2,X(1)],[0,X(2)],[(sx+sy)/2,Y(1)],[0,Y(2)]);
circle((sx+sy)/2,0,(sigmanew1-sigmanew2)/2);

thetap1 = atand((sigmanew1-sx)/txy)
thetap = 1/2*atand(2*txy/(sx-sy));
thetapEq2 = 0.5*atan2d( 2*txy, (sx - sy));

tmax = (sigmanew1-sigmanew2)/2
thetas = thetap1+45
if(thetas>90)
    thetas = thetas-180
end
'note the tau sign:'

XN = (X-cent)*[cosd(2*thetas),-sind(2*thetas);sind(2*thetas),cosd(2*thetas)]+cent;
YN = (Y-cent)*[cosd(2*thetas),-sind(2*thetas);sind(2*thetas),cosd(2*thetas)]+cent;

(XN(2)>0)*2-1

plot([(sx+sy)/2,XN(1)],[0,XN(2)],[(sx+sy)/2,YN(1)],[0,YN(2)]);

'note the sigma sign:'
((sigmanew1+sigmanew2)>0)*2-1

function h = circle(x,y,r)
hold on
th = 0:pi/50:2*pi;
xunit = r * cos(th) + x;
yunit = r * sin(th) + y;
h = plot(xunit, yunit);
hold off
end