clear,clc,close all;
syms x(t) n
T0=4;
x=piecewise(-2<t<=0,3*(t+1),0<t<2,-3*(t-1))
w0=2*pi*(1/T0);
D(n)=(1/T0)*int(x*exp(-j*n*w0*t),t,[-2 2]);
simplify(D(n))
subplot(2,1,1)
serie=0;
hold on
for n=[-7:1:7]
    if n==0
        n=n+0.001;
    end
    nth=simplify(D(n)*exp(-j*n*w0*t));
    fplot(real(nth),[-3 3],'LineWidth',2)
    serie=serie+nth;
end
hold off
subplot(2,1,2)
fplot(real(serie),[-3 3],'LineWidth',2)
title("D(n) exp Fourier Series");
