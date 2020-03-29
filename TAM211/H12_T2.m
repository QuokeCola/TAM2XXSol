a = 1.7000000000000002;
b = 17;
c = 8.5;

syms x y
m = a*c+a*b+a*b
My = a*c*(3/2*a+b)+a*b*(a+b/2)+a*b*(a/2)
cent = [b/2,My/m]
Ix = vpa(int(int(y^2,y,0-cent(2),a-cent(2)),x,0-cent(1),b-cent(1))+int(int(y^2,y,a-cent(2),a+b-cent(2)),x,(b-a)/2-cent(1),(b+a)/2-cent(1))+int(int(y^2,y,a+b-cent(2),2*a+b-cent(2)),x,(b-c)/2-cent(1),(b+c)/2-cent(1)))
Iy = vpa(int(int(x^2,x,0-cent(1),b-cent(1)),y,0-cent(2),a-cent(2))+int(int(x^2,x,(b-a)/2-cent(1),(b+a)/2-cent(1)),y,a-cent(2),a+b-cent(2))+int(int(x^2,x,(b-c)/2-cent(1),(b+c)/2-cent(1)),y,b+a-cent(2),b+2*a-cent(2)))