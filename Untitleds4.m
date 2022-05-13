load handel.mat

filename = 'handel.wav';
audiowrite(filename,y,Fs);
clear y Fs