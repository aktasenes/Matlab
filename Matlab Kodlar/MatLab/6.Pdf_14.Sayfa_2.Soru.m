clear
clc
syms x(t) y(t)
x(t)=0;
dx=diff(x,t);
eqn=diff(y,t,2) + 2*diff(y,t) == 0
Dy=diff(y,t);
cond=[y(0)==5, Dy(0)==4];
sol=dsolve(eqn,cond)
ezplot(sol,[0,5])
ylim([5 7.5])