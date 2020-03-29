a = 675; % mm
b = 580; % mm
dbx = 1; % mm
dcx = 4; % mm
dcy = 3; % mm
ddx = 2; % mm
ddy = 1; % mm

vpa((sqrt((dcx-ddx+a)^2+(dcy-ddy)^2)-a)/a*1000)
vpa(atan(ddx/(ddy+b)))