syms t
r = [t^2-2*t,-3*t^2+3]
t_end = 2

dr = diff(r,t);
tangent = dr/norm(dr);
tdot = diff(tangent,t);
curvature = norm(tdot)/norm(dr)

vpa(subs(r,t_end)+subs(tdot,t_end)/norm(subs(tdot,t_end))/subs(curvature,t_end))
