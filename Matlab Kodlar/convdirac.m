syms t
syms tau
x(t) = heaviside(t)-heaviside(t-1); %degistir

h(t) = 1*dirac(t)-(9*exp(-0.5*t))*heaviside(t); %degistir
m = subs(x,tau)*subs(h,t-tau);
y = int(m,tau,[-inf,+inf])
t=0.6; %değiştir
eval(y)