w = 4;
a = 1;

v_0 = 0
v_al = w*a
syms x;

disp('-----------ans------------')
F_al = vpa(int(w,x,0,a))
F_N = (int(w*(4*a-x),x,0,a)-w*a^2)/(3*a);
F_ar = vpa(F_al-F_N)
F_3al= vpa(F_ar)
F_3ar= vpa(F_ar)
F_4al= vpa(F_ar)

M_0 = 0
M_al= vpa(int(w*(a-x),x,0,a))
M_ar= vpa(int(w*(a-x),x,0,a))
M_3al=vpa(int(w*(3*a-x),x,0,a)-F_N*2*a)
M_3ar=vpa(int(w*(3*a-x),x,0,a)-F_N*2*a-w*a^2)
M_4al = 0