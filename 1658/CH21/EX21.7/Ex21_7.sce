clc;
VCC=12;
R1=100*10**3;
R2=20*10**3;
R3=10*10**3;
R4=2*10**3;
R5=10*10**3;
R6=2*10**3;
B=100;
B2=100;
VTH=VCC*(R2/(R1+R2));
IE1=VTH/R4;
re1=25/IE1*10**-3;
VR6=VCC-IE1*R3;
IE2=VR6/R6;
re2=25/IE2*10**-3;
Ri2=B2*(re2+R6);
R01=(R3*Ri2)/(R3+Ri2);
RO2=R5;
Av1=R01/(re1+R4);
disp(Av1);
Av2=RO2/(re2+R6);
disp(Av2);
Av=Av1*Av2;
disp(Av);
