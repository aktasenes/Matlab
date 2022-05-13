clear
clc
syms t
syms tau
x(t) = heaviside(t)-heaviside(t-1); %deðiþtir
h(t) = (-2*exp(-1*t)+12*exp(-1*t))*heaviside(t); %deðiþtir
m = subs(x,tau)*subs(h,t-tau);
y = int(m,tau,[-inf,+inf])
disp('The convolusion integral is')
disp(y)
t=0.7; %deðiþtir
eval(y)