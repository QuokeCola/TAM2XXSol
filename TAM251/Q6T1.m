sx1 = -24
sy1 = 21
txy1= -18
sx2 = -28
sy2 = -27
txy2= -15
sx3 = -20
sy3 = -27
txy3= -20

s1a = (sx1+sy1)/2+sqrt((sx1-sy1)^2/4+txy1^2)
s2a = (sx1+sy1)/2-sqrt((sx1-sy1)^2/4+txy1^2)
s1b = (sx2+sy2)/2+sqrt((sx2-sy2)^2/4+txy2^2)
s2b = (sx2+sy2)/2-sqrt((sx2-sy2)^2/4+txy2^2)
s1c = (sx3+sy3)/2+sqrt((sx3-sy3)^2/4+txy3^2)
s2c = (sx3+sy3)/2-sqrt((sx3-sy3)^2/4+txy3^2)

plot(s1a,s2a,'o',s1b,s2b,'x',s1c,s2c,'o')

max(norm(s1a),max(norm(s2a),norm(s1a-s2a)))
max(norm(s1b),max(norm(s2b),norm(s1b-s2b)))
max(norm(s1c),max(norm(s2c),norm(s1c-s2c)))