h = 1; % in
a = 31; % in
P = 3; % kips
s1 = 302; % psi
s2 = 182; % psi

syms y b
Iz = int(y^2*b,y,-3/2*h,3/2*h);
Q1 = h*b*h;
tau1 = P*Q1/(Iz*b);
b1 = vpa(solve(tau1==s2/1000,b))
Q2 = 9/8*h^2*b;
tau2 = P*Q2/(Iz*b);
b2 = vpa(solve(tau2==s1/1000,b))
max(b1,b2)