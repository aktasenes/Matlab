clc
clear all
syms an bn w0 n a c
a=82.9;
n=4;
w0=2*pi/3;
an=(4*sin(n*w0))/(3*n*w0);
bn=-(4*cos(n*w0))/(3*n*w0)+(4*sin(n*w0))/(3*(n*w0)^2);
g=a*sqrt(an^2+bn^2)
disp('g')
