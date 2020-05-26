d = 63; % mm
sigyield = 203; % MPa
P = 135; % kN

syms T
sig = P/(pi*d^2/4*1e6)
J = (pi*d^4/32)*1e-12

sx = sig
sy = 0
tauxy = T*d/2*1e-3/J
C = [(sx+sy)/2,0]
X = [sx,tauxy]
X1 = [norm(X-C),0]+C
Y1 = -[norm(X-C),0]+C
s1 = X1(1)
s2 = Y1(1)

eqn1 = s1 == sigyield
eqn2 = s2 == sigyield
eqn3 = norm(s1+s2) == sigyield
vpasolve(eqn1)
vpasolve(eqn2)
vpasolve(eqn3)