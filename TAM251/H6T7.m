L = 46; % in
Ga = 4000; % ksi
Gs = 12000; % ksi
da = 4; % in
ds = 3; % in
Tb = 1; % kip.in

k1 = Gs*pi/32*(ds^4)/L
k2 = Ga*pi/32*(da^4-ds^4)/L

fiB = vpa(Tb/(k1+k2));
T = fiB*k2*da/2/(pi/32*(da^4-ds^4))