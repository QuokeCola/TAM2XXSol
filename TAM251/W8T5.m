a = 70
b = 25
c = 9.5
d = 40
L = 170
P = 200

x = linspace(0,a+b,1000)
M = -P*(b+c+d)+(x-b)*(b+c+d)*P/a
plot(x,M)

Iz = pi/32*(27^2-21^2)*1e-12

syms x
M = -P*(b+c+d)+(x-b)*(b+c+d)*P/a

Mx = subs(M,40)/1e3

tauH = vpa(-Mx*13.5e-3/Iz/1e6)
tauL = vpa(-Mx*(-10.5e-3)/Iz/1e6)