h = 160; % mm
b = 235; % mm
t1 = 20; % mm
t2 = 24; % mm
Mz = 1332; % N.m

syms x y

yave = vpa((int(int(y,x,0,b+2*t1),y,0,h+2*t2)-int(int(y,x,t1,t1+b),y,t2,t2+h))/((2*t1+b)*(2*t2+h)-b*h))
Iz = vpa(int(int(y^2,x,-b/2-t1,b/2+t1),y,-h/2-t2,h/2+t2)-int(int(y^2,x,-b/2,b/2),y,-h/2,h/2))/1e6
vpa(Mz/Iz*1e12*(h/2+t2)*1e-3/1e6/1e6)