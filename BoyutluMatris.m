matrixa=[1 2 3 4; 5 6 7 8;9 10 11 12];%3x4 (1.sayfa)

deger=matrixa(1,3,1);

matrixa(:,:,2)=[13 14 15 16;17 18 19 20;21 22 23 24];%3x4 (2.sayfa)

deger2=matrixa(1,3,2);

deger3=matrixa(1,3,1)*matrixa(3,1,2);

deger4=matrixa(:,:,1).*matrixa(:,:,2);%1. ve 2. sayfanın elemanları çarpımı

sayfa1=matrixa(:,:,1);

sayfa2=matrixa(:,:,2);

matrixb=cat(3,matrixa,[7 8 9 5;4 5 6 7;7.85 tan(7*pi/180) sin(85/180) pi]);  

matrixb=cat(3,matrixa,matrixb);

matrixb(:,:,3)=-5;

matrixb(:,:,6)=1;

sayi=matrixb(3,1,5);%3 satır , 1. sütun , 5.sayfa

sayi2=matrixb(:,1:3,:);%Tüm sayflardaki 1,2 ve 3. sütunları çekmek.

sayi3=matrixb(:,[2 4],:);%Tüm sayfalardaki 2 ve 4. sütunları çekmek.

