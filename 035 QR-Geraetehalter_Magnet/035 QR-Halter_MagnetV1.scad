/* QR-Code Halter für Gerätehinweise mit Magnet-Aussparung
    Code mit Library: /lib 
    KHF 09-2020
    V1.0
*/


include <lib/constants.scad>
use <lib/shapes.scad>
$fn=80;

//-----------------------------Grundplatte------------------
difference(){
 union() {
cuboid([62,4,50], fillet=1, 
edges=
EDGE_FR_RT+
EDGE_BK_RT
,$fn=80);
     
translate([-10,0,0])
rotate([180,180,0])
cuboid([62,4,50], fillet=1, 
edges=
EDGE_FR_RT+
EDGE_BK_RT
,$fn=40);
}
 
 //-------------------------Magnet Ausparung------------------

translate([-5,2.1,10])
rotate([90,0,0])
cylinder(2,5,5);
 
 //-------------------------Schrift------------------ 
 
color( "white" )
translate([12, 2.1, -17])
mirror([1, 0, 0] )
rotate([90,0,0])
linear_extrude(2)
text("frankyhub",  font = "Arial", size = 6);
 
color( "white" )
translate([16, 2.1, -7])
mirror([1, 0, 0] )
rotate([90,0,0])
linear_extrude(2)
text("github.com/",  font = "Arial", size = 6);
}
//----------------------------------------------------------

//-----------------------------Rundung oben------------------
difference(){


translate([-5,-2,25])
rotate([0,90,0])
cyl(l=72, d=8,  fillet=1);


translate([-5,-2,25])
rotate([0,90,0])
cyl(l=72, d=4,  fillet=1);

translate([-5,-2,15])
cuboid([73,2,20], fillet=1, 
edges=
EDGE_FR_RT+
EDGE_BK_RT
,$fn=80);
}
//------------------------------------------------------------

//-----------------------------Rundung unten------------------
difference(){


translate([-5,-2,-25])
rotate([0,90,0])
cyl(l=72, d=8,  fillet=1);


translate([-5,-2,-25])
rotate([0,90,0])
cyl(l=72, d=4,  fillet=1);

translate([-5,-2,-15])
cuboid([73,2,20], fillet=1, 
edges=
EDGE_FR_RT+
EDGE_BK_RT
,$fn=40);
}
//----------------------------------------------------------

//-----------------------Verlängerung Grundplatte-----------
//rechts
translate([26,-1,0])   
rotate([180,0,0])
cuboid([10,2,56], fillet=1, 
edges=
EDGE_FR_RT+
EDGE_BK_RT
,$fn=80);

//links
translate([-6,-1,0])   
rotate([180,180,0])
cuboid([70,2,56], fillet=1, 
edges=
EDGE_FR_RT+
EDGE_BK_RT
,$fn=80);
//----------------------------------------------------------

/* messen
translate([-40,-3,0])
cube([70,1,2]);
translate([-10,3,9])
cube([10,1,2]);
*/

