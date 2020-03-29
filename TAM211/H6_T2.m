P = 82  
d = 172  
h = 129

MP = P*d+P*3*d;
FVert_D = MP/(4*d)
Fdg = -FVert_D * sqrt(d^2+h^2) / h
Fcd = -Fdg*d/sqrt(d^2+h^2)
Ffg = Fdg/sqrt(d^2+h^2)*d
Fcg = -Fdg/sqrt(d^2+h^2)*h
