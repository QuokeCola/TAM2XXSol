clear all
clc
v = 8
a = 6.25
mu = 0.5
g = 9.8

if(exist('v')==0)
    syms v
elseif(exist('a')==0)
    syms a
elseif(exist('mu')==0)
    syms mu
elseif(exist('theta')==0)
    syms theta
end

eqn = g*sind(theta)-mu*g*cosd(theta)==a %moving downward -
res = vpasolve(eqn)