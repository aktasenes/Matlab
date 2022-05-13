clear
syms x(t) y(t)
x(t)=0;
dx=diff(x,t);
eqn=diff(y,t,2) + 3*diff(y,t) + 2*y(t) == dx(t)
Dy=diff(y,t);
cond=[y(0)==0, Dy(0)==-5];
sol=dsolve(eqn,cond)
ezplot(sol,[0,5])