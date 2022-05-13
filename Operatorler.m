clear all; clc;
sayilar=[18 2 4 3 10;
         14 5 15 7 1;
         6 9 15 14 13;
         14 15 8 12 15;
         10 15 13 15 11];
% d1=sayilar<10
% d2=sayilar(d1)    
% d3=find(sayilar<10)
% d5=find(sayilar>6)
% d6=sayilar(d5)
sayilar(3<sayilar& sayilar<8);
sayilar(~rem(sayilar,2)&sayilar<9&sayilar~=2);%2ye tam bölünen 2 olmayan ve 9dan küçük sayılar
find(~rem(sayilar,2)&sayilar<9&sayilar~=2);% matrisdeki yerleri
sayilar(sayilar<10)=0
sayilar(sayilar~=0)=NaN
sayilar(isnan(sayilar))=-1
~sayilar
