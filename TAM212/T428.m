x = 7;
y = 2;
v = [-2,8];
%er
er = dot(v,[x,y])/(normest([x,y])^2)*[x,y]
minuser = -er
etheta = v - er
minusetheta = -etheta