k_AB = 5;
k_CD = 6;
d_AB = 5;
d_CD = 7;
alpha = 21;
beta = 22;

Mab = k_AB * d_AB;
Mcd = k_CD * d_CD;

Fab = [-cosd(alpha)*Mab;
        sind(alpha)*Mab];
Fcd = [-cosd(beta) *Mcd;
       -sind(beta) *Mcd];
F = Fab+Fcd;

-F(1)