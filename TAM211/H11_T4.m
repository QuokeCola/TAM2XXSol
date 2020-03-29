d1 = 30
d2 = 65
d3 = 35
d4 = 100

d = 3

d1 = d1/100
d2 = d2/100
d3 = d3/100
d4 = d4/100

rho = 1e3
g = 9.81

syms h

M_water1 = int(rho*g*h*d4*sqrt(d1^2+d3^2)/d1*(h-d)*sqrt(d1^2+d3^2)/d1,h,d,d+d1)
M_water2 = int(rho*g*h*d4*(h-d),h,d+d1,d+d1+d2)
M_A = vpa(M_water1+M_water2)

F = vpa(M_A/sqrt((d1+d2)^2+d3^2))