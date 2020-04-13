h = 1; % in
a = 31; % in
P = 3; % kips
s1 = 302; % psi
s2 = 182; % psi

syms y b
Iz = int(y^2*b,y,-3/2*h,3/2*h);
Q = h*b*h;
tau = P*Q/(Iz*b);
b1 = vpa(solve(tau==s2/1000,b))
M = P*a;
b2 = vpa(solve(s1==M*3/2*h/Iz,b))
max(b1,b2)



