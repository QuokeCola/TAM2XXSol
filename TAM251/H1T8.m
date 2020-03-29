a = 665; % mm
b = 83; % mm
c = 499; % mm
d = 166; % mm
L = 1662; % mm
w = 6; % kN/m
Ac = 51; % mm^2

a = a/1000;
b = b/1000;
c = c/1000;
d = d/1000;
L = L/1000;
w = w*1000;
Ac = Ac / (1e6);

syms x
Moment = int((w-w/L*x)*x,x,0,L);
direct_EB = [a+b,c+d,0]/normest([a+b,c+d,0]);
syms mag_EB
MomentUnitEB = cross([a+b,0,0],direct_EB*mag_EB);
mag_EB = solve(MomentUnitEB(3)==Moment);

%note that problem may says 'double'
tau = vpa((mag_EB/(2*Ac))/1e6)