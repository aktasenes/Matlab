syms x(t) n
x=piecewise(-.5<t<=.5,t,.5<t<1.5,1-t)
T0=2; w0=2*pi*(1/T0);

a0=(1/T0)*int(x,t,[-.5 1.5])
a(n)=(2/T0)*int(x*cos(n*w0*t),t,[-.5 1.5])
b(n)=(2/T0)*int(x*sin(n*w0*t),t,[-.5 1.5])

serie=a0;
subplot(2,1,1)
fplot(serie,[-3 3],'LineWidth',2);hold on
for n=1:7
    c=sqrt(a(n)^2+b(n)^2);
    faz=angle(a(n)-j*b(n));
    nth=c*cos(n*w0*t+faz);
    fplot(nth,[-3 3],'LineWidth',2)
    serie=serie+nth;
end
title(['dc and first' num2str(n) ' harmonics']); hold off
subplot(2,1,2)
fplot(serie,[-3 3],'LineWidth',2)
title(['combination of dc and first' num2str(n) ' hamonics']);
a_n=eval(a(1:9)); b_n=eval(b(1:9));
amplitudes=[abs(0) sqrt(a_n.^2+b_n.^2)];
phases=[angle(a0) rad2deg(angle(a_n-j*b_n))];
figure,subplot(1,2,1);
stem(0:1:length(amplitudes)-1,amplitudes,'Filled','LineWidth',2)
title("Amplitude Spectrum"),ylabel("Amplitude")
subplot(1,2,2);
stem(0:1:length(phases)-1,phases,'Filled','LineWidth',2)
title("Phases Spectrum"),ylabel("Degree")
