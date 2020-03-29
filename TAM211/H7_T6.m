w = 18; 
l = 12;  
x = 3.5999999999999996; 

Fnormal = 0;
syms Distant;
k = w/l;
W = k*Distant;
normalforce = 0
shearforce = -vpa(int(W,Distant,0,x))
Bending_moment = -vpa(int(W*(x-Distant),Distant,0,x))