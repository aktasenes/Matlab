t=-4:0.01:4;
x=exp(-0.5*t).*exp(j*4*pi*t);
x_real = real(x);
x_imag = imag(x);
subplot(1,2,1)
plot(t,x_real)
title('real part of e')
xlabel('time')
ylabel('magnitude')
subplot(1,2,2)
plot(t,x_imag)
title('imagery part of e')
xlabel('time')
ylabel('magnitude')