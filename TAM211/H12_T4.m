t = 17
syms z y
I_z_original = int(int(y^2,y,-6*t,6*t),z,-4*t,4*t)-int(int(y^2,y,3*t,5*t),z,-3*t,3*t)-int(int(y^2,y,-5*t,-3*t),z,-3*t,3*t)
I_z_final = vpa(I_z_original/1e6)