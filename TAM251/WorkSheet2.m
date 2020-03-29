D= [0,tand(75)*70,0]/1000;
C = [0,0,0];
syms theta mag_F
B = [70*sind(theta),70*cosd(theta),0]/1000;
A = [300*sind(theta),300*cosd(theta),0]/1000;

DirectFb = (D-B)/((D(1)-B(1))^2+(D(2)-B(2))^2);
Ma = cross(A,[0,-20,0])
Mb = cross(B,DirectFb)
solve(Ma(3)==Mb(3),mag_F);

