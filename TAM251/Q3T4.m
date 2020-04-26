d = 41.0000; % mm
gamma = 0.0006; % rad
phi = 3.0000; % degrees

phi = phi/360*2*pi %rad
syms L
eq1 = gamma==phi*d/2/L
L = vpa(solve(eq1,L))