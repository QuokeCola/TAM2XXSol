t = 20; % mm
Mz = -1503; % N.m

syms x y
yave = vpa((int(int(y,x,-2*t,2*t),y,-3*t,7*t)-int(int(y,x,-t,t),y,-2*t,2*t))/(40*t^2-8*t^2))
Iz = vpa((int(int(y^2,x,-2*t,2*t),y,-3*t-yave,7*t-yave)-int(int(y^2,x,-t,t),y,-2*t-yave,2*t-yave))/1e6)
tau = Mz/Iz * max(yave+3*t,7*t-yave)/1e3
tau = Mz/Iz * min(yave+3*t,7*t-yave)/1e3

int(x,x,1,2)
int(x,x+1,0,1)