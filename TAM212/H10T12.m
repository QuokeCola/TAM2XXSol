d = 63; % mm
sigyield = 203; % MPa
P = 135; % kN

T = linspace(-10,10,100)
sx=-P*1000/(pi*(d/2)^2)
sy=0
J=pi/2*(d/2)^4
txy=T*d/2/J*1e6
s1=(sx+sy)/2+sqrt(((sx-sy)/2)^2+txy.^2)
s2=(sx+sy)/2-sqrt(((sx-sy)/2)^2+txy.^2)

plot(T,s1,T,s2)

% [T]=solve(sigyield==s1-s2)
% T=vpa(T)