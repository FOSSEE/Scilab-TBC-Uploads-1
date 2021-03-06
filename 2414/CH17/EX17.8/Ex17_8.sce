clc;
close();
clear();
//page no 556
//prob no. 17.8
PtdBW=20
GtdB=55
EIRP_dBW=PtdBW+GtdB;
mprintf('The EIRP for uplink earth station is %.0f dBW \n',EIRP_dBW)
l=91-70.2;     //Difference in longitude
L=40.5    //Latitude of New York
d_km=35.786*10^3*sqrt(1+0.42*(1-cos(L*%pi/180)*cos(l*%pi/180)));
mprintf('The distance is %.0f km \n',d_km)

f=6.125      //Uplink frequency in GHz
alfa1_dB=20*log10(f)+20*log10(d_km)+92.44;    //Path loss
mprintf('The path loss is %.2f dB \n',alfa1_dB)

FdB=3;    //noise figure in dB
F=10^(FdB/10)   //absolute noise figure   (exact value)
Te=(F-1)*290;   //Noise temperature
mprintf('The Noise temperature of satellite reciever is %.0f K \n',Te)
Ti=300;    //input noise temperature in K
Tsys=Ti+Te
mprintf('The system temperature of satellite reciever is %.0f K \n',Tsys)
G_dB=27      //satellite reciever antwnna gain
GT=G_dB-10*log10(Tsys);     //G/T ratio in dB
mprintf('The G/T ratio for satellite reciever is %.2f dB/K \n',GT)
B=36*10^6  ;//   Bandwidth  in Hz
L_misc=1.6      //atmospheric loss
CN=EIRP_dBW-alfa1_dB+GT+228.6-10*log10(B)-L_misc;    //C/N in dB
mprintf('The carrier power to noise ratio at the satellite reciever is %.2f dB \n',CN)
//  Value of F is rouded to 2 in the text
