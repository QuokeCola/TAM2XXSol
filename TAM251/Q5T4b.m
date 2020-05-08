b = 203; % mm
t = 32; % mm
d = 13; % mm
deltaS = 88; % mm
Vy = 3; % kN

I = int((3*t+2*b)*y^2,y,-b/2-t,b/2+t)-int(2*b*y^2,y,-b/2,b/2)
%I=1/12*t*b^3*3+2*t*b*(b+t)^2+2*(2*b+3*t)*t^3+2*(2*b+3*t)*t*(b/2+t/2)^2
Q=(2*b+3*t)*t*(b/2+t/2)
F=Vy*Q*deltaS/I*1000/3
t=F/(pi*d*d/4)