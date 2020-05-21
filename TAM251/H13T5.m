E = 201; % MPa
L = 4.872; % m
t = 36; % mm
a = 187; % mm
b = 337; % mm

a=a/1000
b=b/1000
t=t/1000
E=E*1e6
%L=0.5*L % select length
Ix=1/12*a*b^3-1/12*(a-2*t)*(b-2*t)^3;
Iy=1/12*a^3*b-1/12*(a-2*t)^3*(b-2*t);
Pcy=pi^2*E*Ix/(L)^2/1000
Pcx=pi^2*E*Iy/(L)^2/1000
