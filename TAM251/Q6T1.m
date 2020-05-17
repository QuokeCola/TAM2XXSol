sx1 = -16
sy1 = -21
txy1= -19
sx2 = 20
sy2 = -18
txy2= -18
sx3 = 22
sy3 = 24
txy3= 17

s1a = (sx1+sy1)/2+sqrt((sx1-sy1)^2/4+txy1^2)
s2a = (sx1+sy1)/2-sqrt((sx1-sy1)^2/4+txy1^2)
s1b = (sx2+sy2)/2+sqrt((sx2-sy2)^2/4+txy2^2)
s2b = (sx2+sy2)/2-sqrt((sx2-sy2)^2/4+txy2^2)
s1c = (sx3+sy3)/2+sqrt((sx3-sy3)^2/4+txy3^2)
s2c = (sx3+sy3)/2-sqrt((sx3-sy3)^2/4+txy3^2)

plot(s1a,s2a,'o',s1b,s2b,'x',s1c,s2c,'o')

max(s1a,max(s2a,norm(s1a-s2a)/2))
max(s1b,max(s2b,norm(s1b-s2b)/2))
max(s1c,max(s2c,norm(s1c-s2c)/2))