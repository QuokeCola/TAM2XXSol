x_A = -20  
y_A = 10 
z_A = 15 
x_B = -20 
y_B = 12 
z_B = -11 
x_C = 30 
y_C = 20
z_C = 0 
x_D = -20 
y_D = -5 
z_D = 5
w=244

A = [x_A;y_A;z_A]
B = [x_B;y_B;z_B]
C = [x_C;y_C;z_C]
D = [x_D;y_D;z_D]

D_A = A/normest(A)
D_B = B/normest(B)
D_C = C/normest(C)
D_D = D/normest(D)

Matrix = [D_A,D_B,D_C]
b = [0;w;0]

ans = inv(Matrix)*(b)

