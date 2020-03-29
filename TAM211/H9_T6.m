L = 15; 
W = 77;  

theta = 60;

FB = W*L*cosd(theta)/2/(sind(theta)*L)

FA = sqrt(FB^2+W^2)

vpa(W*0.4)
FB