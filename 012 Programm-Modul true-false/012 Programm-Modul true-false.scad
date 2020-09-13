
//Programm Module über true/false auswählen

kugel=true;
zylinder=true;
kegel=false;


$fn=30;
if (kugel){
sphere(10);}

if (zylinder){
translate([15,0,-10]) cylinder(h=20, d=5);}

if (kegel){
translate([-15,0,-10]) cylinder(h=20, d1=5, d2=0);}