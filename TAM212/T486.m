rOP = [1,1,0];
rPQ = [-2,1,0];
omega1 = 3;
omega2 = 1;
alpha1 = 1;
alpha2 = 2;

rOP = [rOP]
rPQ = [rPQ]

alpha1 = [zeros(1,2),alpha1]
alpha2 = [zeros(1,2),alpha2]

a = omega1^2*(-rOP)+omega2^2*(-rPQ)+cross(alpha1,rOP)+cross(alpha2,rPQ)