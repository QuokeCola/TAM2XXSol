theta = 39
d = 3
a = 1.8
b = 1.6
weight = 9.81

syms h
P = int(9.81*h,h,d-b/2*cosd(theta),d+b/2*cosd(theta)) / (b*cosd(theta)) * a*b
P = vpa( (9.81*(d+b/2*cosd(theta))+9.81*(d-b/2*cosd(theta))) / 2 * a*b )