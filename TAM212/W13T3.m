clear all
L = 11
a = 6
h = 3
b = 1
t = 0.2
E = 1e6



syms x P
y2=-2*P*a^2/(E*t^3*b)*(3*x-a)+h/2/L*x
eqn = collect(vpa(subs(y2,x,L)*2))
P = vpasolve(eqn==1,P)
% M = P*a
% y = t/2
Iz= 1/12*t^3*b
% sigmamax = M*y/Iz

a = linspace(-L,40,100)
y2=-2*P*a.^2/(E*t^3*b).*(3*x-a)+h/2/L*x
plot(a,subs(y2,x,L)*2)