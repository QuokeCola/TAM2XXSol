syms x

a = 619; 
b = 77;
c = 464; 
d = 155; 
L = 1547;   
w = 6; 

a = a/1000;
b = b/1000;
c = c/1000;
d = d/1000;
L = L/1000;
w = w * 1000;

mag_Mw = int(x*(-w/L * x + w),x,0,L)
EB = [a+b;c+d;0]
AB = [a+b;0;0]
Direct_EB = EB/normest(EB)
Moment_Unit_EB = cross(AB,Direct_EB)

mag_Fb = mag_Mw/normest(Moment_Unit_EB)

Fb = Direct_EB * mag_Fb

Fw = [0;-int((-w/L * x + w),x,0,L);0]

F = -Fw-Fb

mag_Fb

vpa(F)
vpa(mag_Fb)