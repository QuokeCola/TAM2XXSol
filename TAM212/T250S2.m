m = 8
g = -9.8
x = 3
v = 1
vDot = 3

x_origin = x
syms x

y = -2*cos(2.5*x)
v_direct = 1 % right for 1, left for -1

% Above for user inputs.
% Classical Algebra solution.

k = diff(y,x);
orth_k = -1/k;

dp = [1,k]/sqrt(1+k^2);
er = [1,orth_k]/sqrt(1+orth_k^2);
r = (1+diff(y,x)^2)^(3/2)/diff(diff(y,x),x);
an = vpa(v^2/normest(subs(r,x_origin))*subs(er,x_origin));
at = vpa(subs(dp,x_origin)*vDot);
if((subs(k,x_origin)>0 && subs(diff(k,x),x_origin)>0)||(subs(k,x_origin)<0 && subs(diff(k,x),x_origin)<0))
    an = -an;
end
f = (an+at*v_direct-[0,g])*m