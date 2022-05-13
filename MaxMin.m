clear, clc

sayilar=input("1x3 boyutunda bir vektör girin:");
islem=input("Yapmak istediğiniz işlemi seçin:\n 1-Aritmetik ortalama\n 2-Max değer\n 3-Min değer\n");
if islem==1
    aortalama=(sayilar(1)+sayilar(2)+sayilar(3))/3;
    fprintf("Aritmetik ortalaması:%d\n",aortalama);
elseif islem==2
    enBuyuk=max(sayilar);
    fprintf("En büyük sayı:%d\n",enBuyuk);
elseif islem==3
    enKucuk=min(sayilar);
    fprintf("En küçük sayı:%d\n",enKucuk);
end
