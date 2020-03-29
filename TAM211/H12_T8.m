theta = 35
l = 2
W = 211

W*l*cosd(theta)

h = 10; 
s = 8.4;  
R = 1.6;
t = 2;
rho = 1000;

g = 9.81

syms d
Fx = vpa(int(rho*g*d*t/cosd(asind((d-s)/R))*cosd(asind((d-s)/R)),d,s,h))
Fy = vpa(int(rho*g*d*t/sqrt(1-((d-s)/(R+0.0000000000001))^2)*(d-s)/R,d,s,h))

vpa(sqrt(Fx^2+Fy^2)/1000)