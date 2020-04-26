rP = [6,-8]
rQ = [-7,1]
vP = [6,-7]
vQ = [-5,1]
% PQ = rQ-rP
% vQnew = vQ-vP
% 
% dot(PQ,vQnew)/normest(PQ)

syms x 
P = rP+x*vP
Q = rQ+x*vQ
rPQ = norm(P-Q)
v = diff(rPQ,x)
ans = vpa(subs(v,0))
