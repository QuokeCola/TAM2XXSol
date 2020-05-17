t = 10
L = 118
P = 9
x = 79

Iz = 3140*t^4;
if(x<2*L)
    V = P
    M = V*x-2*P*3*L+P*2*L
else
    V = 2*P
    M = V*(2*L)+(2*P)*(x-2*L)-2*P*3*L+P*2*L
end

syms y;
sx = -M*5*t/Iz*1e3
sy = 0
txy= vpa(-V*(int(2*t*y,y,5*t,9*t)+int(12*t*y,y,9*t,10*t))/Iz/2/t*1e3)
X = [sx,txy];
Y = [sy,-txy];
s1v = (X+Y)/2+[norm(X-Y)/2,0];
s2v = (X+Y)/2-[norm(X-Y)/2,0];

s1 = s1v(1)
s2 = s2v(1)
taumax = norm(X-Y)/2
s = (s1+s2)/2

thetap1 = vpa(atand((s1-sx)/txy))
thetas1 = thetap1+45;
if(norm(thetas1)>90)
    if(thetas1>0)
        thetas1=thetas1-90;
    else
        thetas1=thetas1+90;
    end
end
thetas1 = thetas1

plot([(sx+sy)/2,X(1)],[0,X(2)],[(sx+sy)/2,Y(1)],[0,Y(2)]);
circle((sx+sy)/2,0,(s1-s2)/2);

r_M = [cosd(2*thetas1),-sind(2*thetas1);sind(2*thetas1),cosd(2*thetas1)]
Xn = vpa((X-(X+Y)/2)*r_M)+(X+Y)/2;

'note the sign of tauxy!'
Xn(2)
'note the sign of s!'
Xn(1)
function h = circle(x,y,r)
hold on
th = 0:pi/50:2*pi;
xunit = r * cos(th) + x;
yunit = r * sin(th) + y;
h = plot(xunit, yunit);
hold off
end