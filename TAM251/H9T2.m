a = 655; 
b = 1466;
L = 2931;
do = 95;
di = 55;
P = 871; 
theta = 34; 

taux = vpa(-cosd(theta)*P/pi*4/(do^2-di^2)*1e3)
tauy = 0
syms x y
Iz = int(int(y^2,x,-sqrt((do/2)^2-y^2),sqrt((do/2)^2-y^2)),y,-do/2,do/2)-int(int(y^2,x,-sqrt((di/2)^2-y^2),sqrt((di/2)^2-y^2)),y,-di/2,di/2);
Q = int(int(y,x,-sqrt((do/2)^2-y^2),sqrt((do/2)^2-y^2)),y,0,do/2)-int(int(y,x,-sqrt((di/2)^2-y^2),sqrt((di/2)^2-y^2)),y,0,di/2);
sxy = -vpa(sind(theta)*P*Q/Iz/(do-di)*1e12*1e3/1e9/1e3)