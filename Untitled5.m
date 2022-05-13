clear,clc,close all;
[y,Fs]=audioread('violin.mp3');
whos
soundSignal=timetable(y,'SampleRate',Fs);
soundSignal(1:10,:)
plot(soundSignal.Time,soundSignal.y)
grid on
sound(soundSignal.y,Fs)
title('Violin Sound');
tic
X=fft(soundSignal.y);
toc
plot(abs(X))
grid on
title('Absolute value of the fft Coefficients')
xlim([0 length(X)])
xticklabels(["X=0" "X=\pi/4" "X=\pi/2" "X=3\pi/4" "X=\pi" "X=5\pi/4"...
    "X=6\pi/4"])
p=gca;
xticks(round(linspace(1,length(X),length(p.XTickLabel))))
title("Amplitude Spectrum")

X=(1/Fs)*fftshift(fft(soundSignal.y))
plot(abs(X))
xlim([0 length(X)])
xticklabels(["-\pi" "-3\pi/4" "-\pi/2" "-\pi/4" "0" "\pi/4" "\pi/2"...
    "3\pi/4" "\pi"])
p=gca;
xticks(round(linspace(1,length(X),length(p.XTickLabel))))
title("Amplitude Spectrum")
N=length(soundSignal.y);
k=0:N-1;
freq=k*2*pi/N;
freqHz=freq/(2*pi)*Fs;
plot(freqHz,abs(X))
title("Amplitude Spectrum")
xlim tight
xlabel("Frequency(Hz)")
whos -