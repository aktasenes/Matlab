clc;
clear all;
T=1/5; %de�i�ecek
for n=1:5
a=2.8*exp(-0.7*n*T)*sin(2*pi*n*T)*heaviside(n*T); %de�i�ecek
end
a
