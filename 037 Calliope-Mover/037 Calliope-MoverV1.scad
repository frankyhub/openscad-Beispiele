/* Grundplatte Mover für Calliope
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
translate([-0,0,-9.5])
cuboid([110,105,4], fillet=2, 
edges=
EDGE_FR_RT+
EDGE_BK_RT
,$fn=80);

translate([-10,0,-9.5])
rotate([180,180,0])
cuboid([110,105,4], fillet=2, 
edges=
EDGE_FR_RT+
EDGE_BK_RT
,$fn=80);  
 }
    
//Kabelaussparung
translate([-50,0,-15])
rotate([0,0,90])
resize(newsize=[8,14,15]) cylinder(r=18);

//Reifenaussparung links
union(){   
translate([28.5,48,0])
color( "red", 1.0 )
cuboid([68,30,35], fillet=1, 
edges=
EDGE_TOP_RT+
EDGE_TOP_FR+
EDGE_TOP_BK+
EDGE_FR_RT+
EDGE_BK_RT
,$fn=80);  

translate([-28.5,48,0])
rotate([180,180,0])
color( "red", 1.0 )
cuboid([68,30,35], fillet=1, 
edges=
EDGE_TOP_RT+
EDGE_TOP_FR+
EDGE_TOP_BK+
EDGE_FR_RT+
EDGE_BK_RT
,$fn=80);

//Reifenaussparung li
translate([23,48,-6])
//cube([50,1,18]);
rotate([90,0,0])
cylinder(15,25,25);

//Reifenaussparung re
translate([23,-33,-6])
rotate([90,0,0])
cylinder(15,25,25);
 }    
 
//Reifenaussparung rechts
union(){   
translate([28.5,-48,0])
color( "red", 1.0 )
cuboid([68,30,35], fillet=1, 
edges=
EDGE_TOP_RT+
EDGE_TOP_FR+
EDGE_TOP_BK+
EDGE_FR_RT+
EDGE_BK_RT
,$fn=80);  

translate([-28.5,-48,0])
rotate([180,180,0])
color( "red", 1.0 )
cuboid([67,30,35], fillet=1, 
edges=
EDGE_TOP_RT+
EDGE_TOP_FR+
EDGE_TOP_BK+
EDGE_FR_RT+
EDGE_BK_RT
,$fn=80);
}
}

//Motorhalterung innen
difference(){
union(){
translate([-35,28,3])
color( "red", 1.0 )
cuboid([55,10,22.4], fillet=1, 
edges=
EDGE_TOP_RT+
EDGE_TOP_FR+
EDGE_TOP_BK+
EDGE_FR_RT+
EDGE_BK_RT
,$fn=80);  

translate([-45,28,3])
rotate([180,180,0])
color( "red", 1.0 )
cuboid([53,10,22.4], fillet=1, 
edges=
EDGE_TOP_RT+
EDGE_TOP_FR+
EDGE_TOP_BK+
EDGE_FR_RT+
EDGE_BK_RT
,$fn=80);

translate([-35,-28,3])
color( "red", 1.0 )
cuboid([55,10,22.4], fillet=1, 
edges=
EDGE_TOP_RT+
EDGE_TOP_FR+
EDGE_TOP_BK+
EDGE_FR_RT+
EDGE_BK_RT
,$fn=80);

translate([-45,-28,3])
rotate([180,180,0])
color( "red", 1.0 )
cuboid([53,10,22.4], fillet=1, 
edges=
EDGE_TOP_RT+
EDGE_TOP_FR+
EDGE_TOP_BK+
EDGE_FR_RT+
EDGE_BK_RT
,$fn=80);
}

//        ???26??? D????
translate([-26,80,3.2])
rotate([90,0,0])
color( "blue", 1.0 )
cylinder(h=200, r=1.5);
}

//Achshalterung aussen
difference(){
union(){
translate([30,28,0])
color( "red", 1.0 )
cuboid([15,10,15], fillet=1, 
edges=
EDGE_TOP_RT+
EDGE_TOP_FR+
EDGE_TOP_BK+
EDGE_FR_RT+
EDGE_BK_RT
,$fn=80); 
    
translate([15,28,0])
 rotate([180,180,0])
color( "red", 1.0 )
cuboid([15,10,15], fillet=1, 
edges=
EDGE_TOP_RT+
EDGE_TOP_FR+
EDGE_TOP_BK+
EDGE_FR_RT+
EDGE_BK_RT
,$fn=80);

translate([30,-28,0])
color( "red", 1.0 )
cuboid([15,10,15], fillet=1, 
edges=
EDGE_TOP_RT+
EDGE_TOP_FR+
EDGE_TOP_BK+
EDGE_FR_RT+
EDGE_BK_RT
,$fn=80);  

translate([15,-28,0])
rotate([180,180,0])
color( "red", 1.0 )
cuboid([15,10,15], fillet=1, 
edges=
EDGE_TOP_RT+
EDGE_TOP_FR+
EDGE_TOP_BK+
EDGE_FR_RT+
EDGE_BK_RT
,$fn=80);
}

translate([22.5,70,0])
rotate([90,0,0])
color( "blue", 1.0 )
cylinder(h=200, r=2.0);
}

difference(){
//Rundung vorne
translate([-65,0,-11.5])
resize(newsize=[30,107,4]) cylinder(r=10);
    
//Reifenaussparung Getriebe li
translate([-38,58,-6])
rotate([90,0,0])
cylinder(25,25,25);
    
//Reifenaussparung Getriebe re
translate([-38,-33,-6])
rotate([90,0,0])
cylinder(25,25,25);

//Kabelaussparung
translate([-50,0,-15])
rotate([0,0,90])
resize(newsize=[8,14,15]) cylinder(r=18);
}

difference(){
//Rundung hinten
translate([55,0,-11.5])
resize(newsize=[30,107,4]) cylinder(r=10);

//Reifenaussparung li
translate([23,47,-6])
rotate([90,0,0])
cylinder(15,25,25);
    
//Reifenaussparung re
translate([23,-32.5,-6])
rotate([90,0,0])
cylinder(15,25,25);
}

//Kabelhalter vorne
difference(){
union(){
translate([-58,0,-6])
color( "black", 1.0 )
cuboid([2,12,7], fillet=1, 
edges=
EDGE_TOP_FR+
EDGE_TOP_BK+
EDGE_TOP_RT+
EDGE_FR_RT+
EDGE_BK_RT
,$fn=80);

translate([-60,0,-6])
rotate([180,180,0])
color( "black", 1.0 )
cuboid([2,12,7], fillet=1, 
edges=
EDGE_TOP_FR+
EDGE_TOP_BK+
EDGE_TOP_RT+
EDGE_FR_RT+
EDGE_BK_RT
,$fn=80);
}

translate([-65,0,-5.5])
rotate([0,90,0])
resize(newsize=[4,8,12]) cylinder(r=5);
}

//Kabelhalter längs
difference(){
union(){
translate([-49.5,-7,-6])
rotate([180,180,90])
color( "black", 1.0 )
cuboid([2,12,7], fillet=1, 
edges=
EDGE_TOP_FR+
EDGE_TOP_BK+
EDGE_TOP_RT+
EDGE_FR_RT+
EDGE_BK_RT
,$fn=80);

translate([-49.5,-5,-6])
rotate([180,180,270])
color( "black", 1.0 )
cuboid([2,12,7], fillet=1, 
edges=
EDGE_TOP_FR+
EDGE_TOP_BK+
EDGE_TOP_RT+
EDGE_FR_RT+
EDGE_BK_RT
,$fn=80);
}

translate([-53,-10,-5.5])
rotate([0,90,90])
resize(newsize=[4,10,12]) cylinder(r=5);
}

/* Batterie-Clip */
//Grundkörper
difference(){
 union() {
translate([-7,0,0])
color( "blue", 1.0 )     
cuboid([40,32,17], fillet=1, 
edges=
EDGE_FR_RT+
EDGE_BK_RT
,$fn=80);

translate([-22,0,0])
rotate([180,180,0])
color( "blue", 1.0 )
cuboid([40,32,17], fillet=1, 
edges=
EDGE_FR_RT+
EDGE_BK_RT
,$fn=80);
 }

//Aussparung
translate([-14,0,-4])
 union() {
cuboid([72,25.7,29], fillet=1, 
edges=
EDGE_FR_RT+
EDGE_BK_RT
,$fn=80);
   
translate([-10,0,0])
rotate([180,180,0])
cuboid([52,25.7,19], fillet=1, 
edges=
EDGE_FR_RT+
EDGE_BK_RT
,$fn=80);
}
}
  

//messen
/*
color( "red", 1.0 )
//innen
//translate([-60,33,-8])
// cube([63,19,22.4]);

//translate([-60,33,-8])
// cube([63,19,11.2]);

//aussen
translate([24,47,-6])
 //cube([50,1,18]);
 rotate([90,0,0])
 cylinder(15,25,25)
 
//Batterieclip 
color( "green", 1.0 )
translate([-37,16,-7.5])
cube([50,1,16]);
*/


 


 


 

