Rb = 92; % mm
Rc = 45; % mm
ft = 0.000002; % (1/N.m)
TD = 681; % N.m

TB = TD/Rc*Rb
theta1=TB*ft
theta2=TD*ft
thetad = theta1*Rb/Rc+theta2