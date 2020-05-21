d = 62; % mm
TB = 1324; % N.m
TC = 587; % N.m

J1 = pi/32*(d^4-(d/2)^4)
J2 = pi/32*d^4

T1 = TC*d/2/J2*1e3
T2 = (TB-TC)*d/2/J1*1e3
vpa(max(T1,T2))