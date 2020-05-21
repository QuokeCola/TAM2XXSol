clear all;
clc;

m = 3
g = 9.8
vf = 37
v0 = 2

if(exist('v0')==0)
    syms v0
elseif(exist('vf')==0)
    syms vf
elseif(exist('h')==0)
    syms h
end

ke = m*g*h+1/2*m*v0^2
eqn = 1/2*m*vf^2==ke
vpasolve(eqn)