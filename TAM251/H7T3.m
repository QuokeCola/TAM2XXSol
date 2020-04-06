w = 5; % kN/m
P = 8; % kN
a = 3; % m

[-P 0 0]
[0 -P 0]

syms x;
F = (int(w*(2*a-x),x,0,a)+P*3*a)/(2*a);
vpa([F-P+w*a -w 0])
syms c;
c=solve(-w/2*a^2+(F-P+w*a)*a+c==-P*a);
vpa([c F-P+w*a -w/2])

vpa([(F-P+w*a)-2*a*w 0 0])
syms d;
d = solve(-w/2*4*a^2+(F-P+w*a)*2*a+c==((F-P+w*a)-2*a*w)*2*a+d);
vpa([d (F-P+w*a)-2*a*w 0])
