P = 266e3
h = 96e-3
L = 226e-3
tn = 157e6
ts = 61e6
alpha = 54

Fn = P*sind(alpha)
Fs = P*cosd(alpha)

syms t

vpa(solve(Fn/(h*t)*sind(alpha)==tn))*1e3
vpa(solve(Fs/(h*t)*sind(alpha)==ts))*1e3