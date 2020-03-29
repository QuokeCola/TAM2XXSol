w = 20; 
l = 12;  
x = 4;

NormF = 0
syms dist
ShearF = -vpa(int(w/l*dist,dist,0,x))
BendingM = -vpa(int(w/l*dist*(x-dist),dist,0,x))