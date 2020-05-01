a = 1902; % mm
b = 250; % mm
h = 152; % mm
t1 = 21; % mm
t2 = 20; % mm
sigmaT = 12; % MPa
sigmaC = 10; % MPa

syms y
yave = (int(2*t1*y,y,0,h)+int(b*y,y,h,h+t2))/(2*t1*h+b*t2)
Iz = vpa(int(2*t1*y^2,y,-yave,h-yave)+int(b*y^2,y,h-yave,h+t2-yave));
Iz/1e6
syms w x
M0 = 2*w*a^2;
V1 = (3*a*w-w*x); %N
V2 = w*a;

M1 = int(V1,x,3*a,2*a)
M2 = int(V2,x,2*a,a)+M1
M = int(V2,x,2*a,0)+M1+M0 %mm*N

eq1 = norm(M*yave/Iz) == sigmaC; %N*mm*mm/mm^4
eq2 = norm((t2+h-yave)*M/Iz) == sigmaT; 
eq3 = norm(M2*yave/Iz)==sigmaC;
eq4 = norm((t2+h-yave)*M2/Iz) == sigmaT;

w1 = solve(eq1,w)
w2 = solve(eq2,w)
w3 = solve(eq3,w)
w4 = solve(eq4,w)

w = min(w1,w2,w3,w4)
