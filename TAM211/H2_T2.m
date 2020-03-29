a = 7;
b = 3;
c = 2;
d = 2;
e = 4;
f = 5;
w = 342;
m = [ a, -e, 0;
     -c, -c, d;
      b,  f, 0];
z = [0;
     0;
     -w];
x = inv(m)*(-z);

ab = [ a;
     -c;
      b];
cd = [-e;
      -c;
       f];
bd = [0;
      d;
      0];
F_real = x(3) * bd
