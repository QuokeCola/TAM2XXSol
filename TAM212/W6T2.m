syms v0 t

eq1 = v0*cosd(70)*t-12.9
eq2 = v0*sind(70)*t-9.81/2*t^2-6.52
[v0 t] = solve(eq1==0,eq2==0,v0,t)

v0 = v0(2)
tj = t(2)

syms t
r = [cosd(70)*v0*t,v0*sind(70)*t-9.81/2*t^2]
v = [v0*cosd(70),v0*sind(70)-9.81*t]
vpa(norm(subs(v,tj)+2.0844*sqrt(4+0.25)*[-0.5,2]/norm([-0.5,2])))

%k = norm(diff(diff(r,t)/norm(diff(r,t)),t))/norm(diff(r,t))
%vpa(subs(k,0))
%vpa(1/subs(k,0))