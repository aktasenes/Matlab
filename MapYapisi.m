sayilar=[1 2 3 4];
sayidegeri=sayilar(1);

sayilar2={1 2 'Ankara' "istanbul"};
sayidegerleri2=sayilar2{1};

keyset=[6,36,34];
valueset={'Ankara','Kars','İstanbul'};
map=containers.Map(keyset,valueset);

deger1=map(36);

verisayisi=map.Count;
keytype=map.KeyType;

valuetype=map.ValueType;

