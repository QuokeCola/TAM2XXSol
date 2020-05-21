E = 207; % MPa
L = 1501; % mm
t = 25; % mm
a = 50; % mm
b = 150; % mm
I=(1/12*t*(2*a)^3+2*1/12*b*t^3+2*b*t*(a+t/2)^2)/1e6
I1=I/1e6;
L=L/1e3;
E=E*1e6;
L1=L;
L2=2*L;
L3=0.7*L;
L4=0.5*L;
Pc1=pi^2*E*I1/(L1)^2/1000
Pc2=pi^2*E*I1/(L2)^2/1000
Pc3=pi^2*E*I1/(L3)^2/1000
Pc4=pi^2*E*I1/(L4)^2/1000
