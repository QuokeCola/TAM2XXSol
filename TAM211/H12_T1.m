a = 8.1;
b = 4.1;
syms k
k = solve(b==(a^2)*k,k)
syms x y
Ix = vpa(int(int(y^2,y,0,k*x^2),x,0,a))
Iy = vpa(int(int(x^2,x,sqrt(y/k),a),y,0,b))