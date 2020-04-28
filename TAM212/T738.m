syms t
%enter t_end here
t_end = 1
%enter r here
r = [-2*t,3*t^2+2*t]

vr = diff(r,t)
%en
T = vr/norm(vr)
en = diff(T)/norm(diff(T))
vpa(subs(en,t_end))