A = [-10.5;
       4.2;
      -6.3];
B = [-10.5;
      14.2;
      -6.3];
C = [    0;
         0;
       6.3];
D = [    0;
         0;
         0];
T = 71;
BA = A - B;
BC = C - B;
Tab = T * BA / normest(BA);
Tcb = T * BC / normest(BC);
T = Tab + Tcb;
DB = B - D;
Moment = cross(DB , T)