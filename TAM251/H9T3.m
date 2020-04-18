a = 680; 
b = 593;
L = 2963;
do = 88;
di = 48;
P = 876; 
theta = 45; 

taux = vpa(-cosd(theta)*P/pi*4/(do^2-di^2)*1e3);
tauy = 0;
syms x y
Iz = int(int(y^2,x,-sqrt((do/2)^2-y^2),sqrt((do/2)^2-y^2)),y,-do/2,do/2)-int(int(y^2,x,-sqrt((di/2)^2-y^2),sqrt((di/2)^2-y^2)),y,-di/2,di/2);
tau1 = vpa(-cosd(theta)*P/pi*4/(do^2-di^2)*1e6);
Mz = vpa(-(sind(theta)*(L-b)/1e3+cosd(theta)*a/1e3)*P);
tau2 = Mz*do/2/Iz*1e9;
taux = vpa(tau1+tau2)/1e6
tauz = 0
s = 0