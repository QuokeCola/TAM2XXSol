a = [-1,3];
cDotA = -9;
cDotB = -5;

a = a'
% + for counter clock-wise, add '-' before the equation below for
% clock-wise
b = [cosd(90),-sind(90);sind(90),cosd(90)] * a
syms x y;
c = [x;y];
DotA = dot(c,a);
DotB = dot(c,b);
[x,y] = solve(DotA == cDotA, DotB == cDotB,x,y);
x = vpa(x)
y = vpa(y)