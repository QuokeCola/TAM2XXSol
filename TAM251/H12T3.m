L = 8; % m
w = 9; % kN/m

syms P
eqn1 = -w*(L/2)^4/8-w*(L/2)^3/6*L/2-P*L^3/3==0
R_C = norm(vpasolve(eqn1,P))