clear all;
syms x(t) T A n
x(t) = A;
Dc_comp = (1/T)*int(x,[0,T/2])
a_n = (2/T)*int(x*cos(n*2*pi* 240 *t),[0,T/2]) %değiştir
b_n = (2/T)*int(x*sin(n*2*pi* 240 *t),[0, T/2]) %değiştir
A =53.3; %değiştir
T=1/80; %değiştir
n= 1:5 % use first 5 harmonic
eval(a_n) % values of a_n for first 5 harmonic
eval(b_n) % values of b_n for first 5 harmonic