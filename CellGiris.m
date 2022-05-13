sayilar=[1 2 3 4;5 6 7 8;9 10 11 "Ahmet"];%strin olur
isimler=["Ahmet" "Mehmet" "Selim";"Gündüz" "Sibel" "Kemal";"Ceyda" "Ceren" 12];%double olmaz yine string olur
cell1={1 "dayı" 3;"Yazı" 4 5};%cell dizisinin her elemanı ayrı hücre mantığı ile çalışır.
cell2={pi [5 7 8 cos(pi*8547/180)] "Ahmet" {cell1} };
% cell3(1:3,:)={{cell1} {9782 {4 {1  6}}}};
boscell=cell(5);
boscell(1:3,2:5)={cell2};
c3=cell(1,2,3);%3 boyutlu cell
