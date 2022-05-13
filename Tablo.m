% clear
% clc
% Adi={'Ahmet';'Johnson';'Williams';'Sibel';'Yasin'};
% Yasi=[28;40;41;54;19];
% Boyu=[150;160;140;180;195];
% Kilosu=[75;64;67;81;84];
% Ulke={'Türkiye';'Almanya';'ABD';'Türkiye';'Türkiye'};
% 
% tablo=table(Adi,Yasi,Boyu,Kilosu,Ulke);
% 
% tablo=sortrows(tablo,'Adi','ascend'); %A dan z ye isimleri sıralıyor. ('ascend')
% tablo
% tablo=sortrows(tablo,'Adi','descend'); %Z den a ya isimleri sıralıyor. ('descend')
% tablo
% tablo=sortrows(tablo,'Boyu','ascend');%küçükten büyüğe doğru sıralıyor.
% tablo
% tablo=sortrows(tablo,'Boyu','descend');%büyükten küçüğe doğru sıralıyor.
% tablo
% tablo=sortrows(tablo,'Yasi','ascend');%küçükten büyüğe doğru sıralıyor.
% tablo
% tablo=sortrows(tablo,'Yasi','descend');%büyükten küçüğe doğru sıralıyor.
% tablo
% Adlar=tablo.Adi;
% Adlar


load patients

hastaTablosu=table(Age,Gender,Height,Weight,Diastolic,Systolic,Location,Smoker,...,
'ROWNAMES',LastName);

hastaTablosu2=table(Age,Height,Weight,Diastolic,Systolic,Smoker,...,
'ROWNAMES',LastName);

% sayisalDegerler1=hastaTablosu.Variables;
% sayisalDegerler (Değerlerimizin hepsi sayısal olmadığı için matrise çeviremeyiz.)

sayisalDegerler2=hastaTablosu2.Variables;%hastaTabosu2 de tüm değerler sayısal olduğu için matrise aktarabiliyorum.
sayisalDegerler2

hastaTablosu3=table(Age,Diastolic,Systolic,Height,Weight);
hastaTablosu3.Properties.RowNames=LastName;
hastaTablosu3

hastaTablosu4=hastaTablosu3(1:5,:);

hastaTablosu5=head(hastaTablosu,5);

bilgiler=hastaTablosu({'Miller','Davis'},:);

bilgiler=hastaTablosu(10,:);
