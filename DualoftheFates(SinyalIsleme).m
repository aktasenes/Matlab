clear,clc,close all;
[y,Fs]=audioread('Duel of the Fates(5sn).mp3');
whos
soundSignal=timetable(y,'SampleRate',Fs);
soundSignal(1:10,:)
subplot(3,1,1)
plot(soundSignal.Time,soundSignal.y)
grid on
sound(soundSignal.y,Fs)
title('Violin Sound');
tic
X=fft(soundSignal.y);
toc
subplot(3,1,2)
plot(abs(X))
grid on
title('Absolute value of the fft Coefficients')
xlim([0 length(X)])
xticklabels(["X=0" "X=\pi/4" "X=\pi/2" "X=3\pi/4" "X=\pi" "X=5\pi/4"...
    "X=6\pi/4"])
p=gca;
xticks(round(linspace(1,length(X),length(p.XTickLabel))))
title("Amplitude Spectrum")
xlim([0 2500])
N=length(soundSignal.y);
k=0:N-1;
freq=k*2*pi/N;
freqHz=freq/(2*pi)*Fs;
subplot(3,1,3)
plot(freqHz,abs(X))
title("Amplitude Spectrum")
xlim tight
xlabel("Frequency(Hz)")
whos 