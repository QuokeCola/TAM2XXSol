h = 5; 
s = 4.2;  
R = 0.8;
t = 2;
rho = 1000;

g = 9.81;

syms x
Px = rho * g * (h-R+x)* sqrt(1-(x/R)^2)/1000;
Py = rho * g * (h-R+x)* x/R /1000;

Fx = Px *2/sqrt(1-x^2/R^2);
Fy = Py *2/sqrt(1-x^2/R^2);

vpa(sqrt(int(Fx,x,0,R)^2+int(Fy,x,0,R)^2))

syms theta

Fx = int(rho*g*(sin(theta)*R+s)*t*R*cos(theta),theta,0,pi/2);
Fy = int(rho*g*(sin(theta)*R+s)*t*R*sin(theta),theta,0,pi/2);

F = vpa(normest([Fx,Fy]))/1000

