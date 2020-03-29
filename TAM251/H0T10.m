a = 2.3000000000000003;
b = 23;
c = 11.5;

syms s;

centy = (int(b*x,x,0,a)+int(a*x,x,a,a+b)+int(c*x,x,a+b,2*a+b))/(2*a*b+a*c)

syms x y;
Ix1 = int(int(y^2,x,-b/2,b/2),y,0-centy,a-centy);
Ix2 = int(int(y^2,x,-a/2,a/2),y,a-centy,a+b-centy);
Ix3 = int(int(y^2,x,-c/2,c/2),y,a+b-centy,2*a+b-centy);
Ix = vpa(Ix1+Ix2+Ix3)

Iy1 = int(int(x^2,x,-b/2,b/2),y,0-centy,a-centy);
Iy2 = int(int(x^2,x,-a/2,a/2),y,a-centy,a+b-centy);
Iy3 = int(int(x^2,x,-c/2,c/2),y,a+b-centy,2*a+b-centy);
Iy = vpa(Iy1+Iy2+Iy3)