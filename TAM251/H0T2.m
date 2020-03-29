a = 652; 
b = 82;
c = 489; 
d = 163; 
L = 1631;   
w = 6; 

a = a/1000;
b = b/1000;
c = c/1000;
d = d/1000;
L = L/1000;
w = w*1000;

syms x;
Moment_w = int((w-w/L*x)*x,x,0,L);
directEB = [a+b,c+d,0]/normest([a+b,c+d,0]);
Moment_EB = cross([a+b,0,0],directEB*x);
x = solve(Moment_w + Moment_EB(3)==0);
syms dist;
Force_tot_w = [0,-int((w-w/L*dist),dist,0,L),0];
F_EB = directEB*x;
R_A = vpa(-Force_tot_w + F_EB)
R_E = vpa(normest(x))
