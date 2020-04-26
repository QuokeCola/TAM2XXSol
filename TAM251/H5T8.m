Rb = 79; % mm
Rc = 31; % mm
d = 12; % mm
TD = 39; % N.m

TB = TD/Rc*Rb
syms x y
J = int(int(x^2+y^2,x,-sqrt((d/2)^2-y^2),sqrt((d/2)^2-y^2)),y,-d/2,d/2)
Tau = vpa(TB*d/2/J*1e3)