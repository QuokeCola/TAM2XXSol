a = 216e-3
b = 654e-3
theta = 44
d = 25e-3
P1 = 42*1e3
P2 = 50*1e3

M1 = P1*a
M2 = P2*sind(theta)*2*a

F = (M1+M2)/b

tau = F/(pi*(d/2)^2)/1e6