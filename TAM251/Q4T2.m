Iz = 122.57e6  %mm^4
Mz = 613       %N.m

h = 183
t = 48
syms y
yave = (int(y*2*t,y,0,h)+int(y*t,y,h/2,3/2*h))/(3*t*h)

y_new = 3/2*h-yave

SigmaNew = Mz*y_new/Iz*1e3 %N*m*/mm^3