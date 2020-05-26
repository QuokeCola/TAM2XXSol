L=6
syms w x
P = -w*L
P_right = P*3/4
syms P_middle
eqn1 = -w*L/2+P+P_right+P_middle==0;
P_middle = solve(eqn1,P_middle)

V1 = P
V2 = P+P_middle-w*(x-L/2)

syms theta1
M1 = int(P,x,0,x)
M2 = subs(M1,x,L/2)+int(V2,x,L/2,x)
subs(M2,L)
dy2 = int(M2,x,L,x)+theta1
y2 = int(dy2,x,L,x)
theta1 = solve(subs(y2,x,L/2)==0,theta1)
dy2 = int(M2,x,L,x)+theta1
y2 = int(dy2,x,L,x)
vpa(collect(y2))