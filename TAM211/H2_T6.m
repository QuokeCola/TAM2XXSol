p = 30;
theta = 44;
l = 1.54;

AB = [0;
      l;
      0];
BC = [-l* sind(theta);
      l * cosd(theta);
      0];
AC = AB + BC;

P  = [p * cosd(theta);
      p * sind(theta);
      0];
ans = cross(BC, P)
ans = cross(AC, P)
