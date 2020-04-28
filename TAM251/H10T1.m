sigmax = -10
sigmay = 9
tauxy = 9
sigmanew1 = (sigmax+sigmay)/2+sqrt((sigmax-sigmay)^2/4+tauxy^2)
sigmanew2 = (sigmax+sigmay)/2-sqrt((sigmax-sigmay)^2/4+tauxy^2)

thetap1 = atand((sigmanew1-sigmax)/tauxy)
thetap = 1/2*atand(2*tauxy/(sigmax-sigmay))
thetapEq2 = 0.5*atan2d( 2*tauxy, (sigmax - sigmay))