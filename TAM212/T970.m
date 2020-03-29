rij = [-2.435341520999661,2.428102151059107];
ruv = [-0.862314000604415,-3.329111434639041];
%blue to orange, clockwise the first, counter clockwise the second
acos(dot(rij,ruv)/(normest(rij)^2))
2*pi-acos(dot(rij,ruv)/(normest(rij)^2))
close all
hold on
quiver(0,0,rij(1),rij(2))
quiver(0,0,ruv(1),ruv(2))
hold off