a = 11; % in
b = 11; % in
strain = 0.002;

newCos = (a^2+b^2-(a^2+b^2)*(1+strain)^2)/(2*a*b)
acosd(newCos)-90