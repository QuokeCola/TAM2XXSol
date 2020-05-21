m1 = 9;
m2 = 4;
rOP = [0,2,0];
rPQ = [1,-1,0];
w1 = 3
w2 = 2

vP = cross([0,0,w1],rOP)
vQ = cross([0,0,w2],rPQ)+vP
vC1 = vP/2
vC2 = (vP+vQ)/2

J1 = m1*1/12*norm(rOP)^2
J2 = m2*1/12*norm(rPQ)^2

T = 1/2*norm(vC1)^2*m1+1/2*norm(vC2)^2*m2+1/2*w1^2*J1+1/2*w2^2*J2