syms t
%enter t_end here
t_end = 3
%enter r here
r = [-t^2,-3*t]

r = [r(1),r(2),0]
vr = diff(r,t)
%en
et = vr/sqrt(vr(1)^2+vr(2)^2+vr(3)^2)
an = diff(et,t)
en = an/sqrt(an(1)^2+an(2)^2+an(3)^2)
vpa(subs(en,t_end),3)