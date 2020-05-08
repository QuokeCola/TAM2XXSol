a = 311; % mm
b = 214; % mm
c = 252; % mm
do = 100; % mm
di = 80; % mm
p = 721; % kPa
Py = 329; % N
Pz = 301; % N

 Fx = 0;Vy = -Py;Vz = Pz;
 Tx = -(Py*b+Pz*c);
My = -Pz*a;Mz = -Py*a;
 A = pi*((do/2)^2-(di/2)^2);
 I = pi/4*((do/2)^4-(di/2)^4);
 J = pi/32*(do^4-di^4);
 yb = (pi*(do/2)^2/2*4*do/2/3/pi-pi*(di/2)^2/2*4*di/2/3/pi)/(A/2);
 sigmax = Fx/A+Mz*(do/2)/I+p*(di/2)/2/(do/2-di/2)*1e-3;
 sigmaz = p*(di/2)/(do/2-di/2)*1e-3;
 tauxz = -Tx*do/2/J+Vz*(A/2*yb)/I/(do-di);
 disp([sigmax sigmaz tauxz])