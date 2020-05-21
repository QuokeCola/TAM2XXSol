clear all
clc

m = 6;
l = 5;
F1 = [-3,3,0];
F2 = [2,4,0];
M = 2;

theta = 180
r_M = [cosd(theta),sind(theta);-sind(theta),cosd(theta)]
di = [1,0]*r_M

syms p
eqn = cross(l/2*[di,0],F1)+[0,0,M]+cross(-l/2*[di,0],F2)+cross(p*[di,0],-F1-F2)==[0,0,0]
res = vpasolve(eqn)
rcp = res*di