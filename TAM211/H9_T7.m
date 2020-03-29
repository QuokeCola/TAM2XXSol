W = 33.8;

us = 0.2;
W = W * 9.81;

syms F_pin;

F_rod = (W*100+F_pin*300)/(100*sqrt(3))
Friction = (F_rod*sind(30)+(F_pin+W)*cosd(30))*us
F_horizontal = (F_rod)*cosd(30)-(W+F_pin)*sind(30)
F_pin = solve(F_horizontal-Friction==0,F_pin)
P_max = vpa(F_pin*3/2)