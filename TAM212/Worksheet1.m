%T2
theta = -88.2042, fi = 49.8903, r = 6371;
Urbana = vpa([r*cosd(theta)*sind(fi),r*sind(theta)*sind(fi),r*cosd(fi)])
theta = 77.2300, fi = 61.3900, r = 6371;
Delhi = vpa([r*cosd(theta)*sind(fi),r*sind(theta)*sind(fi),r*cosd(fi)])
%T3
dist = vpa(normest(Urbana-Delhi))
%T4
theta = acos((2*r^2-dist^2)/(2*r^2))
route = theta*r
%T5

%T6
direction=cross(cross(Urbana,Delhi),Urbana)/normest(cross(cross(Urbana,Delhi),Urbana))
%T7
er = vpa(Urbana/normest(Urbana))
etheta = cross([Urbana(1),Urbana(2),0],[0,0,1])/normest(cross([Urbana(1),Urbana(2),0],[0,0,1]))
efi = cross(er,etheta)/normest(cross(er,etheta))
%T8