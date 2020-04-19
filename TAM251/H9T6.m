a = 369; 
b = 202;
c = 273;
Pz = 494; 
Py = 377; 
p = 604;
do = 95;
di = 55;

absVy = Py;
absVz = Pz;
Fx = 0;

Tx = (-Py*b-Pz*c)/1e3;
My = -Pz*a/1e3;
Mz = -Py*a/1e3;

syms x y;
Iz = vpa(int(int(y^2,x,-sqrt((do/2)^2-y^2),sqrt((do/2)^2-y^2)),y,-do/2,do/2)-int(int(y^2,x,-sqrt((di/2)^2-y^2),sqrt((di/2)^2-y^2)),y,-di/2,di/2));
J = vpa(int(int(x^2+y^2,x,-sqrt((do/2)^2-y^2),sqrt((do/2)^2-y^2)),y,-do/2,do/2)-int(int(x^2+y^2,x,-sqrt((di/2)^2-y^2),sqrt((di/2)^2-y^2)),y,-di/2,di/2));
Q = vpa(int(int(y,x,-sqrt((do/2)^2-y^2),sqrt((do/2)^2-y^2)),y,0,do/2)-int(int(y,x,-sqrt((di/2)^2-y^2),sqrt((di/2)^2-y^2)),y,0,di/2));

SigmaX = -Mz*do/2/Iz*1e3+p*(di/2)/((do-di)/2)/2/1000
SigmaZ = p*di/2/(do-di)*2/1e3
TauXZ = vpa(Tx*do/2/J*1e3+absVz*Q/Iz/(do-di))