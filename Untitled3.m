clear,clc,close all;
[y,Fs]=audioread('violin.mp3');
whos
soundSignal=timetable(y,'SampleRate',Fs);
soundSignal(1:10,:)
plot(soundSignal.Time,soundSignal.y)
sound(soundSignal.y,Fs)
title('Sound signal of Violin');
tic
X=fft(soundSignal.y);
