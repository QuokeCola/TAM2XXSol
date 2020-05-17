

cent = (x+y)/2
x_ = x-cent
y_ = y-cent
r_M = [cosd(2*theta),-sind(2*theta);sind(2*theta),cosd(2*theta)]
x__ = x_*r_M+cent
y__ = y_*r_M+cent

s1 = x__(1)
s2 = y__(1)
txy = x__(2)