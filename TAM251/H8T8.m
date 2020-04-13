D = 216; % mm
d = 125; % mm
V = 60; % kN

syms x y
Iz = vpa(int(int(y^2,x,-sqrt((D/2)^2-y^2),sqrt((D/2)^2-y^2)),y,-D/2,D/2)-int(int(y^2,x,-sqrt((d/2)^2-y^2),sqrt((d/2)^2-y^2)),y,-d/2,d/2))/1e6
Q = vpa(int(int(y,x,-sqrt((D/2)^2-y^2),sqrt((D/2)^2-y^2)),y,0,D/2)-int(int(y,x,-sqrt((d/2)^2-y^2),sqrt((d/2)^2-y^2)),y,0,d/2))/1e3
%t = (int(int(1,x,-sqrt((D/2)^2-y^2),sqrt((D/2)^2+y^2)),y,-D/2,D/2)-int(int(1,x,-sqrt((d/2)^2-y^2),sqrt((d/2)^2+y^2)),y,-d/2,d/2))/(D/2);
tau = vpa(V*Q/Iz/(D-d))