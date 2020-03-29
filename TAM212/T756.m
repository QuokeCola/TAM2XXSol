avec = [5,-1]
adotvec = [-5,0]

%a unit vector
compadoa = dot(avec,adotvec)/normest(avec)*avec/normest(avec);
orthoavec = adotvec-compadoa;
dotadirection = orthoavec/normest(avec)
%a*a
2*dot(avec,adotvec)
%abs(a)
dot(avec,adotvec)/normest(avec)