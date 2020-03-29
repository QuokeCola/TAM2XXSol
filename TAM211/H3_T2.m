syms x
L=17 
W_0=36 
W_1=54
R11 = W_0 * 3 / L * x;
R12 = W_0;
R21 = W_1;
R22 = W_1 * 3 - 3 * W_1 / L * x;
-(-int(R11,x,0,L/3)-int(R12,x,L/3,L) + int(R21,x,0,2*L/3) + int (R22,x, 2*L/3,L))
M11 = W_0 * 3 / L * x * x;
M12 = W_0 * x;
M21 = W_1 * x;
M22 = (W_1 * 3 - 3 * W_1 / L * x) * x;
(-int(M11,0,L/3)-int(M12,L/3,L) + int(M21,0,2*L/3) + int (M22, 2*L/3,L))