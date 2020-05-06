rOP = [2,1,0];
rPQ = [-3,8,0];
omega1 = [16];
omega2 = [-2];
vP = [-16,32,0];
vQ = [0,38,0];
aQ = [0,-1345];

syms athetaOP athetaPQ;
arOP = omega1^2*(-rOP);
arPQ = omega2^2*rPQ;
eq1 = arOP + athetaOP*cross([0,0,1],rOP)/norm(cross([0,0,1],rOP)) == arPQ + athetaPQ*cross([0,0,1],rPQ)/norm(cross([0,0,1],rPQ))+[aQ,0];
[athetaOP,athetaPQ]=solve(eq1,athetaOP,athetaPQ);
a = arOP+athetaOP*cross([0,0,1],rOP)/norm(cross([0,0,1],rOP));
athetaPQ = a - arPQ - [aQ,0];
athetaOP = a - arOP;

syms alpha1 alpha2;
eq1 = cross([0,0,alpha1],rOP) == athetaOP;
eq2 = cross([0,0,alpha2],-rPQ)== athetaPQ;

'---------here is output---------'

alpha1 = vpasolve(eq1,alpha1)
alpha2 = vpasolve(eq2,alpha2)

aP = vpa(a)