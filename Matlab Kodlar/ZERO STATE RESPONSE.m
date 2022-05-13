clc;
clear all;
close all;
syms t tau m y
x(t)=heaviside(t-1)-heaviside(t-2);% input signal
h(t)=(-7*exp(-0.9*t)+10*exp(-0.9*t))*heaviside(t);% impulse response
m = subs(x,tau)*subs(h,t-tau);% obtain x(tau)*h(t-tau)
y = int(m,tau,[-inf,inf])
t= 2.9;
eval(y)
disp('The output of the convolution integral is');
disp(y);
subplot(3,1,1);
ezplot(x,[-0.1,2]);
title('Input signal for LTI system');
xlabel('t')
ylabel('x(t)')
grid;
subplot(3,1,2);
ezplot(h,[-0.1,2]);
ylim([0 4.1])
title('LTI System impulse response');
xlabel('t')
ylabel('h(t)')
grid;
subplot(3,1,3);
ezplot(y,[-0.1,2]);
grid;



syms x(t)
x(t)=2.8exp(-0.7t)sin(2pi1t);

