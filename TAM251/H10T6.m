sx = -9
sy = 0
txy = -22

sigmanew1 = (sx+sy)/2+sqrt((sx-sy)^2/4+txy^2)
sigmanew2 = (sx+sy)/2-sqrt((sx-sy)^2/4+txy^2)

thetap1 = atand((sigmanew1-sx)/txy)

max_tau = (sigmanew1-sigmanew2)/2 