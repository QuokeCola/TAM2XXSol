clear all
m = 4;
r = 3;
g = 9.8;
vc0 = 9;
vcf = 24;

if(exist('vcf')==0)
    syms vcf
elseif(exist('vc0')==0)
    syms vc0
elseif(exist('h')==0)
    syms h
end
w0 = vc0/r;
wf = vcf/r;
I = m*r^2;

eqn = 0.5*I*w0^2+0.5*m*vc0^2+m*g*(h-r)==0.5*I*wf^2+0.5*m*vcf^2;
res = vpasolve(eqn)