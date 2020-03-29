k1 = 1100000; % kN/m
k2 = 600000; % kN/m
P = 57; % kN

taub = vpa(P/k2*1e3/2)
tauc = taub+vpa(P/k1*1e3)