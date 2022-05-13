clear
clc
t=-5:0.01:5;
x=sin(2*pi*1*t);
plot(t,x,'LineWidth',2)
ylim([-1.02 1.02])
grid
xticks([-5:5])
title('x(t)=sin/2*pi*1*t)')