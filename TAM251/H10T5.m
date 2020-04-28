p = 1363; % kPa
T = 2; % kN.m
t = 11; % mm
r = 187; % mm
sigmaY = 220; % MPa

sx = p*r/(((r+t)-r))/2/1e3
sy = p*r/t/1000
txy = -T*(r+t)/(pi/2*((t+r)^4-r^4))*1e6

sigmanew1 = (sx+sy)/2+sqrt((sx-sy)^2/4+txy^2)
sigmanew2 = (sx+sy)/2-sqrt((sx-sy)^2/4+txy^2)

thetap1 = atand((sigmanew1-sx)/txy)

taumax = (sigmanew1-sigmanew2)/2

if (sigmanew1>sigmanew2)
    k = sigmanew1/sigmanew2;
    sigma2_=sigmaY/k;
    sigma1_=sigmaY;
else
    k = sigmanew1/sigmanew2;
    sigma1_=sigmaY*k;
    sigma2_=sigmaY;
end
FS = norm([sigma1_,sigma2_])/norm([sigmanew1,sigmanew2])