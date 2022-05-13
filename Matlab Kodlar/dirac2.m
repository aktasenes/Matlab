syms t
syms tau
x(t) = heaviside(t)-heaviside(t-1);%degistir

h(t) = (7*dirac(t)-8*exp(-1.1*t))*heaviside(t); %degistir
m = subs(x,tau)*subs(h,t-tau);
y = int(m,tau,[-inf,+inf])
t=0.7; %değiştir
eval(y)