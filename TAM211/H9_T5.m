w = 56;  
us = 0.18; 
uk = 0.162; 
p = 11.200000000000001; 
alpha = 29;

Fy = w *cosd(alpha)+p*sind(alpha)
Fx = w *(-sind(alpha))+p*cosd(alpha)
Friction = Fy * us