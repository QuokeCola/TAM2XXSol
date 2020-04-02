t_end = 1
row = 4
syms t
s = 2*t^2+2*t+2;

v = diff(s,t);
a = vpa(sqrt((subs(v,t_end)^2/row)^2+subs(diff(v,t),t_end)^2))