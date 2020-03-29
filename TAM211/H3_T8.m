alpha = 75
T = 400
a = 390
b = 120
c = 530
d = 310

a = a / 100
b = b / 100
c = c / 100
d = d / 100

r1 = [b*sind(alpha);+(c-a)/2;b*cosd(alpha)]
r2 = [b*sind(alpha);-(c-a)/2;b*cosd(alpha)]

vt1 = [-b*sind(alpha);-(c-a)/2;d-cosd(alpha)*b]
vt2 = [-b*sind(alpha);+(c-a)/2;d-cosd(alpha)*b]

T1 = vt1/normest(vt1) * T
T2 = vt2/normest(vt2) * T

M = vpa(normest(cross(r1,T1)+cross(r2,T2)))