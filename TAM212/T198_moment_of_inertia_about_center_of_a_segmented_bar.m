w = 2

L1 = 6;
rho1 = 7;
L2 = 4;
rho2 = 9;
L3 = 6;
rho3 = 5;

syms x y

M = L1*rho1*L1/2+L2*rho2*(L1+L2/2)+L3*rho3*(L1+L2+L3/2)
mass = L1*rho1+L2*rho2+L3*rho3
Xc = M/mass
Ic = vpa(int(int(rho1*(y^2+x^2),y,-w/2,w/2),x,-Xc,-Xc+L1)+int(int(rho2*(y^2+x^2),y,-w/2,w/2),x,-Xc+L1,-Xc+L1+L2)+int(int(rho3*(y^2+x^2),y,-w/2,w/2),x,-Xc+L1+L2,-Xc+L1+L2+L3))