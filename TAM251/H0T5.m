f = 32; 
w = 7;  
a = 5;

syms x
Moment_w = int(w*x,x,-a,-2*a)
Moment_F = f*3*a
Moment_Tot = Moment_w + Moment_F
F_C = vpa([0,Moment_Tot/(2*a),0])