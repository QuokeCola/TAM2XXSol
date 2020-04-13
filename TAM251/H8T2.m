t1 = 5; % mm
t2 = 5; % mm
b = 83; % mm
h = 82; % mm
ybar = 55.61741; % mm
Iz = 981740.89238; % mm^4
Vy = 27; % kN
Mz = 713; % N.m

syms y
Q = int(y*2*t1,y,0,-ybar)

tau1 = vpa(Mz*(h+t2-ybar)/Iz)*1e3
tau2 = vpa(Vy*Q/(Iz*2*t1))*1e3
