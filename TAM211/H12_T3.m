t = 21
y_ave = 52.5
syms z y
Iz_original = int(int(y^2,y,3*t-y_ave,4*t-y_ave),z,-3/2*t,3/2*t)+int(int(y^2,-y_ave,3*t-y_ave),z,-1/2*t,1/2*t)
Iz_final = vpa(Iz_original/1e6)
