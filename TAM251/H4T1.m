k1 = 271; % N/mm
k2 = 169; % N/mm
L = 200; % mm
theta = 28; % degrees
P = 19; % N

syms deltatheta

C = [L,0,0]
P_P = [L/2,0,0]
A = [-L,0,0]

EndA = [-L-L*sind(theta),L*cosd(theta),0]
EndC = [L,-L,0]

NewC = [L*cos(deltatheta),L*sin(deltatheta),0]
NewP = NewC/2
NewA = -NewC

NewAL = EndA-NewA
NewALength = sqrt(NewAL(1)^2+NewAL(2)^2)

NewCL = EndC-NewC
NewCLength = sqrt(NewCL(1)^2+NewCL(2)^2)

MPnew = cross(NewP,[0,P,0])
MAnew = cross(NewA,(NewALength-L) * k1 * NewAL/NewALength)
MCnew = cross(NewC,(NewCLength-L) * k2 * NewCL/NewCLength)

deltatheta = vpasolve(MAnew+MPnew+MCnew==0,deltatheta)

NewC = L*[cos(deltatheta),sin(deltatheta),0]
DeltaLength2 = vpa(normest(EndC-NewC)-L)