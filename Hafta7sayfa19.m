clear,clc,close all;
syms x(t) n
x=t+1;
w0=2*pi/(1/3);

a0=(1/3)*int(x,t,[-1,1]);
a(n)=(2/3)*int(x*cos(n*w0*t),t,[-1,1]);
b(n)=(2/3)*int(x*sin(n*w0*t),t,[-1,1]);
a1_5=eval(a(1:5)) , b1_5=eval(b(1:5))

serie=a0;
subplot(2,1,1) %grafikleri tek ekranda matrise bölmek için
fplot(serie,[-3,3],'LineWidth',1)
hold on %iç içe grafik çıkarmak için
for n=1:121
    nth=a(n)*cos(n*w0*t)+b(n)*sin(n*w0*t);
    fplot(nth,[-3,3],'LineWidth',2)
    serie=serie+nth;
end
title(['dc and first' num2str(n) 'harmonics'])
hold off
subplot(2,1,2)
fplot(serie,[-3,3],'LineWidth',2)
title(['combination of dc and firs' num2str(n) 'harmonics']);

    




