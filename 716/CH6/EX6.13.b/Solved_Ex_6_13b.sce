//Test the Given systems for linearity,y(n)=a^x(n)
clc;
clear;
a=2;
function x=f1(n),x=n; ,endfunction//x function of t
function y=f(n,x), y=a.^x; ,endfunction//y function of y and t
n=-5:1:5;
x1=f1(n);
x2=f1(n);
x3=x1+x2;
if f(n,x3)==(f(n,x1)+f(n,x2));
    disp('system is linear');
    else
    disp('system is non linear');
end
