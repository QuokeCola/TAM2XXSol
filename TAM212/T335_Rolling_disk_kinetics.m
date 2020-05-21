clear all
clc

m = 8;
r = 2;
D = [-52,66,0];
mu = 0.75;
g = -9.8;
p_pos = [-r,0,0];

syms F_Nx F_Ny alpha
FN = [F_Nx,F_Ny,0]


J = 1/2*m*r^2;
M = cross(p_pos,D)+cross(p_pos,FN)
eqn1 = alpha == M(3)/J
Fsum = FN+D+[0,-m*g,0]
asum = m*(cross([0,0,alpha],[0,-r,0]))

res = vpasolve(eqn1,Fsum(1)==asum(1),Fsum(2)==asum(2))
FN = [res.F_Nx,res.F_Ny,0]
Fsum = FN+D;
Ac = Fsum/m