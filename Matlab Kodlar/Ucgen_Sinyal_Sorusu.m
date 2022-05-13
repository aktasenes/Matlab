clc  %Üçgen dalga sorusu
clear all
syms an bn w0 n a c
a=91.5;  %A değeri
n=1;  %Frekansın pay kısmındaki değer
w0=2*pi/3;
an=(4*sin(n*w0))/(3*n*w0);
bn=-(4*cos(n*w0))/(3*n*w0)+(4*sin(n*w0))/(3*(n*w0)^2);
g=a*sqrt(an^2+bn^2)
disp('g')