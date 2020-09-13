//Tataturhalte Mathias
include <lib/constants.scad>
use <lib/shapes.scad>

$fn=60;

difference()
{
rotate([180, 90, 0])
cuboid([4,24.7,50], fillet=2);
    
    //Prisma Aussparung
translate([0, -10, 0])
rotate([90, 0, 0])
prismoid(size1=[10,20], size2=[30,20], h=20);
/*
//Schräge li
translate([-32, -5, -2])
rotate([90, 0, 45])
cube([3.53,5,15]);
    
//Schräge re    
translate([19, -18, -2])
rotate([90, 0, 135])
cube([3.53,5,15]);
*/
    
//Langloch re
translate([20, 5.53, 0])
cube(size = [2.8,13.65,4.1], center = true);

//Rundung Langloch re
translate([20, -1, 0])
cylinder(h = 20, d=2.8, center=true);

//Langloch li
translate([-20, 5.53, 0])
cube(size = [2.8,13.65,4.1], center = true);

//Rundung Langloch li
translate([-20, -1, 0])
cylinder(h = 20, d=2.8, center=true);
}

//Gelenk re
translate([25.8, 10, 0])
rotate([90, 0, 90])
cyl(l=6, d=2.95, fillet=1);

//Gelenk li
translate([-25.8, 10, 0])
rotate([90, 0, 90])
cyl(l=6, d=2.95, fillet=1);

/*mess
translate([0, 13, 0])
rotate([90, 0, 90])
cyl(l=57.25, d=2.95, fillet=1);
*/








