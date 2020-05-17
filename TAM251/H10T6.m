sx = 29
sy = 0
txy =-16
sigmanew1 = (sx+sy)/2+sqrt((sx-sy)^2/4+txy^2)
sigmanew2 = (sx+sy)/2-sqrt((sx-sy)^2/4+txy^2)

X = [sx,txy];
Y = [sy,-txy];
cent = (X+Y)/2;

plot([(sx+sy)/2,X(1)],[0,X(2)],[(sx+sy)/2,Y(1)],[0,Y(2)]);
circle((sx+sy)/2,0,(sigmanew1-sigmanew2)/2);

thetap1 = atand((sigmanew1-sx)/txy)

max_tau = (sigmanew1-sigmanew2)/2 

function h = circle(x,y,r)
hold on
th = 0:pi/50:2*pi;
xunit = r * cos(th) + x;
yunit = r * sin(th) + y;
h = plot(xunit, yunit);
hold off
end