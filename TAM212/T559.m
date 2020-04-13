rPQ = [-3,2]
vP = [-2,1]

%case 1 horizontal moving, calculate pin's velocity
syms x;
vPnew = vP-[x,0]
res_dot = dot(rPQ,vPnew)

x = solve(res_dot==0,x)
%case 2 horizontal moving, calculate pin's velocity
syms x;
vPnew = vP-[0,x]
res_dot = dot(rPQ,vPnew)

x = solve(res_dot==0,x)
%case 4 verticle moving, calculate angular velocity
syms x;
vPnew = vP-[0,x]
res_dot = dot(rPQ,vPnew)
x = solve(res_dot==0,x)
vPnew = vP-[0,x]
vpa(norm(vPnew)/norm(rPQ))

%case 5 45 degree moving

syms x
vPnew = vP-x*[sqrt(2)/2,-sqrt(2)/2]
res_dot = dot(rPQ,vPnew)
x = solve(res_dot==0,x)
vPnew = vP-x*[sqrt(2)/2,-sqrt(2)/2]
vpa(norm(vPnew)/norm(rPQ))