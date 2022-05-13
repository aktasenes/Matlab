clear;clc;
sicaklik=[18;42;46;10;38];
tarihler={'15-05-2000';'09-02-2000';'21-06-2008';'04-05-2009';'16-12-2020'};
tarihler=categorical(tarihler);
sehirler={'Trabzon';'Ankara';'Adana';'Trabzon';'Adana'};
sehirler=categorical(sehirler);
tablo=table(sicaklik,tarihler,sehirler);

indeksler=tablo.tarihler=='15-05-2000'
veriler=tablo(indeksler,:)