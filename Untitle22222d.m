% openExample('graphics/SemiautomaticxAxisLimitsExample')
% [X,Y,Z] = peaks;
% surf(X,Y,Z)
% xlim([0 inf])
clear,clc,close all;
[x,y,z]=peaks;
surf(x,y,z)
xlim ([0 1])
ylim ([0 5])
zlim ([0 inf])