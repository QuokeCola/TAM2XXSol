b = 1; % in
h = 7; % in
sigma = 1; % psi
tau = 9; % psi
alpha = 26; % degrees

l = h/sind(alpha)
norm = sigma * b * l * [sind(alpha);cosd(alpha)]
sheer = tau * b * l * [cosd(alpha);-sind(alpha)]

syms x
x = solve(norm(2) + sheer(2)*x==0)

P = vpa(normest(x * sheer + norm))