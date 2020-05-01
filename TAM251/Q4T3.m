t = 20
syms y
yave = (int(12*t*y,y,-6*t,-4*t)+int(4*t*y,y,4*t,6*t))/(3*24*t^2+8*t^2)
Iz = int(y^2*12*t,y,-6*t-yave,-4*t-yave)+int(y^2*4*t,y,-6*t-yave,6*t-yave)+int(y^2*4*t,y,4*t-yave,6*t-yave)
vpa(Iz/1e6)
Mz = 1532;
tau = vpa(Mz*(6*t-yave)/Iz*1e3)