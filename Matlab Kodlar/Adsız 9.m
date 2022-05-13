clear
clc
syms x(t) y(t)
x(t)=4.7;  %değiştir
dx=diff(x,t);
eqn=1.6*diff(y,t,2)+10*diff(y,t)+1.4*y(t)==0  %değiştir
Dy=diff(y,t);
cond=[y(0)==0, Dy(0)==0];
sol=dsolve(eqn,cond)
ezplot(sol,[0,3])
t=0.8;  %değiştir
eval(sol) %1 anında output