// Example 8_11
clc;funcprot(0);
// Given data
// from Example 5.7
D=0.100;// m
T_1=200;// K
p_1=0.140;// MPa
h=3.50;// W/(m^2.K)
T_infinitive=15.0;// K
c_v=3.123;// kJ/kg.K
R=2.077;// kJ/kg.K
t=5.00;// seconds

// Calculation
// (a)
V=(%pi/6)*D^3;// m^3
A=%pi*D^2;// m^2
m=((p_1*10^3)*V)/(R*(T_1+273.15));// kg
hAbymc_v=(h*A)/(m*c_v*1000);// s^-1
T_2=((T_1-T_infinitive)*exp((-(h*A)/(m*c_v*1000))*t))+T_infinitive;// °C
// (b)
delU=m*c_v*(T_2-T_1);// kJ
// (c)
// Let s_2-s_1=ds
ds=(c_v*log((T_2+273.15)/(T_1+273.15)))+0;// kJ/(kg.K)
dQbyT_b=-1.35*10^-4;// kJ/K
S_P=((m*ds)-(dQbyT_b));// kJ/K
S_P=S_P*10^3;// J/K
printf("\n(a)The final temperature of the helium,T_2=%2.1f°C \n(b)The change in total internal energy of the helium,U_2-U_1=%0.3f kJ \n(c)The total entropy production in the helium,S_P=%0.4f J/K",T_2,delU,S_P);
