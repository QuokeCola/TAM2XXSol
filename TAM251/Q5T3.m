t = 17; 
a = 34;  
r = 51;  
Iz = 126.0013*10^6;
V = 15;

t = t/1e3
a = a/1e3
r = r/1e3
Iz = Iz/1e12
V = V*1e3

ysc = 4*r/3/pi
syms x y
Q = int(8*t*y,y,a,7*t)-int(int(y,x,-sqrt(r^2-(y-a)^2),sqrt(r^2-(y-a)^2)),y,a,a+r)
tau = vpa(V*Q/Iz/(8*t-2*r)/1e6)
