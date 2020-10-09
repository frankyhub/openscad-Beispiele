/* Batterie-Clip für Calliope
    Code mit Library: /lib 
    KHF 10-2020
    V1.0
*/


include <lib/constants.scad>
use <lib/shapes.scad>
$fn=80;


//Grundkörper
difference(){
 union() {
cuboid([40,32,16], fillet=1, 
edges=
EDGE_FR_RT+
EDGE_BK_RT
,$fn=80);

translate([-10,0,0])
rotate([180,180,0])
cuboid([40,32,16], fillet=1, 
edges=
EDGE_FR_RT+
EDGE_BK_RT
,$fn=80);
 }

 //Aussparung
translate([4,0,4])
 union() {
cuboid([52,25.8,19], fillet=1, 
edges=
EDGE_FR_RT+
EDGE_BK_RT
,$fn=80);
   

translate([-10,0,0])
rotate([180,180,0])
cuboid([52,25.8,19], fillet=1, 
edges=
EDGE_FR_RT+
EDGE_BK_RT
,$fn=80);
   
 }
 

 
 
 
 //Bohrung
  translate([-25,8,-10])
rotate([0,0,90])
cylinder(10,1,1);
 
    translate([-25,-8,-10])
rotate([0,0,90])
cylinder(10,1,1);
  
    translate([15,8,-10])
rotate([0,0,90])
cylinder(10,1,1);
 
    translate([15,-8,-10])
rotate([0,0,90])
cylinder(10,1,1);
 
//Senkung
  translate([15,-8,-6.5])
rotate([0,0,90])
cylinder(1.2,0.5, 2);

  translate([15,8,-6.5])
rotate([0,0,90])
cylinder(1.2,0.5, 2);

  translate([-25,8,-6.5])
rotate([0,0,90])
cylinder(1.2,0.5, 2);

  translate([-25,-8,-6.5])
rotate([0,0,90])
cylinder(1.2,0.5, 2);

  }
  







 
