clc;
clear all;
close all;
syms t tau m y
h(t)=((6*dirac(t)-8*exp(-0.9*t)))*heaviside(t);% impulse response
x(t)=heaviside(t)-heaviside(t-1);% input signal
m = subs(x,tau)*subs(h,t-tau);% obtain x(tau)*h(t-tau)
y = int(m,tau,[-inf,inf])
t= 1.3;
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





