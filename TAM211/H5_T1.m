x_a = 0;  
y_a = 0;
z_a = 0;
x_b = 0;
y_b = 10.43; 
z_b = 0; 
x_c = 3.7; 
y_c = 10.43;
z_c = 0;
x_d = 3.7; 
y_d = 10.43;
z_d = 2.4;
x_e = 3.7; 
y_e = 10.43; 
z_e = -2.55;
w1=2.5;
w2=1.8;
w3=4.2;

g = 9.81

a = [x_a;y_a;z_a];
b = [x_b;y_b;z_b];
c = [x_c;y_c;z_c];
d = [x_d;y_d;z_d];
e = [x_e;y_e;z_e];

W1 = [0;-w1*g;0];
W2 = [0;-w2*g;0];
W3 = [0;-w3*g;0];

Fa = - W1 - W2 - W3
rad = d - a;
rac = c - a;
rae = e - a;

Ma = -cross(rad,W1) - cross(rac,W2) - cross(rae,W3)