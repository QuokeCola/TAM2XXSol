a = 396; % mm
b = 217; % mm
c = 255; % mm
do = 99; % mm
di = 79; % mm
p = 697; % kPa
Py = 466; % N
Pz = 473; % N

Iz = pi/32*(do^4-di^4)
Mz = Py*a %N*mm
sigmaX = -Mz*do/2/Iz*1e-3/1e-12/1e6/1e3%-p*1000*di/(do-di)/1e6
sigmaZ = p*di/(do-di)/1e3

