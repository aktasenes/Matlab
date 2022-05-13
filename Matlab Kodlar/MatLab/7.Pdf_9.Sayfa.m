clear,clc,close all
syms x(t) T0 A n
x=A;
w0=2*pi*(1/T0);

a0 = (1/T0) * int(x,t,[0 T0/2])
a(n) = (2/T0) * int(x*cos(n*w0*t),t,[0 T0/2])
b(n) = (2/T0) * int(x*sin(n*w0*t),t,[0 T0/2])

a0 = subs(a0,A,1)
a = subs(a,A,1)
b = subs(b,A,1)
w0 = subs(w0,T0,2)
eval(a(1:5))
eval(b(1:5))

serie = a0;
subplot(2,1,1)
hold on
for n=1:121
    nth = a(n)*cos(n*w0*t)+b(n)*sin(n*w0*t);
    fplot(nth,[-3 3],'LineWidth',2)
    serie=serie+nth;
end
title(['dc and first' num2str(n) 'harmonics'])
hold off
subplot(2,1,2)
fplot(serie,[-3 3], 'Linewidth',2)
title(['combination of dc and first' num2str(n) 'harmonics'])