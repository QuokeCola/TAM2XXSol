rOP = [1,3]
rPQ = [1,2]
omega1 = -1
omega2 = -2
alpha1 = 1
alpha2 = 2

rOP = [rOP,zeros(1,1)]
rPQ = [rPQ,zeros(1,1)]

alpha1 = [zeros(1,2),alpha1]
alpha2 = [zeros(1,2),alpha2]

a = omega1^2*(-rOP)+omega2^2*(-rPQ)+cross(alpha1,rOP)+cross(alpha2,rPQ)