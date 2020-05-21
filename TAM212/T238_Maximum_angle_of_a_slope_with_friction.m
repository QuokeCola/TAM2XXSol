mu = 1.25

syms theta
eqn = mu*cosd(theta)==sind(theta)
vpasolve(eqn)