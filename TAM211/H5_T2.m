d1 = 1; 
d2 = 3;  
m = 55;
k = 20; 

g = 9.81;

Fb = [ 0 ; 4 * m * g ; 0 ]
Fa = [ 0 ; -3 * m * g; 0]

yB =  normest(Fb)/(k*1000)
yA =  normest(Fa)/(k*1000)

angle = atan((yA+yB)/d1)*180/pi