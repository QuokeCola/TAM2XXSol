m = 9;
h = 16;
g = 9.8;
v0 = 4;
vf = 5;

if(exist('m')==0)
    syms m;
elseif(exist('h')==0)
    syms h;
elseif(exist('W')==0)
    syms W;
elseif(exist('v0')==0)
    syms v0;
elseif(exist('vf')==0)
end
eqn = -W+1/2*m*(vf^2-v0^2) == m*g*h;
res = vpasolve(eqn)