sigmax = -0.4358
sigmay = 3
tauxy = 1.8041
sigmanew1 = (sigmax+sigmay)/2+sqrt((sigmax-sigmay)^2/4+tauxy^2)
sigmanew2 = (sigmax+sigmay)/2-sqrt((sigmax-sigmay)^2/4+tauxy^2)

-sigma
(sigmanew1-sigmanew2)/2
thetap1 = atand((sigmanew1-sigmax)/tauxy)
thetap = 1/2*atand(2*tauxy/(sigmax-sigmay))
thetapEq2 = 0.5*atan2d( 2*tauxy, (sigmax - sigmay))