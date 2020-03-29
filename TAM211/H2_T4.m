A = [ -4;
       0;
       6];
B = [ -2;
       0;
      -6];
C = [  6;
       0;
      -4];
D = [  0;
      12;
       0];
   
Force = [ 0;
        -11;
          0];
    
AD = A-D;
CD = C-D;
BD = B-D;

Matrix = [AD,CD,BD];
Coefficient = inv(Matrix) * (-Force);
Fad = Coefficient(1) * AD;
Fcd = Coefficient(2) * CD;
Fbd = Coefficient(3) * BD;
Fad+Fcd+Fbd
normest(Fad)
normest(Fbd)
normest(Fcd)

