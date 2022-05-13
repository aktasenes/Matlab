clear
clc
syms x(t) n
T0=3;  %değiştir (payda)
A=82.9  %değiştir
x = piecewise(-2<t<0,t+1,0<t<2,1-t);  %t nin aralığına bak
w0 = 2*pi*(1/T0);

a0 = (1/T0) * int(x,t,[-2 2])
n=4;  %değiştir (pay)
a(n) = (2/T0) * int(x*cos(n*w0*t),t,[-2 2])
b(n) = (2/T0) * int(x*sin(n*w0*t),t,[-2 2])

g=A*sqrt((a(n))^2+(b(n))^2)
eval(g)