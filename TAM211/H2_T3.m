T = 426;
theta = 39;
T1 = [cosd(+theta-45)*T;
      sind(theta-45)*T];
T2 = [cosd(-45) * T;
      sind(-45) * T];
F = T1 + T2
normest(F)
