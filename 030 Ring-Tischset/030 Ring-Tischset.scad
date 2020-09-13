include <lib/constants.scad>
use <lib/shapes.scad>
$fn=60;


difference() {



union(){
cyl(l=10, d=35, fillet=1);

    translate([0,15,0])  
    cyl(l=10, d=35, fillet=1);
  
}
union(){
 cyl(l=11, d=22, fillet=1);

    translate([0,15,0])  
    cyl(l=11, d=22, fillet=1);
}

  translate([-10.9,0,-20])  
    cube([21.8,15,32]);

hull() {
cylinder(h=20, r1=9.5, r2=19.5, center=false);
  translate([0,15,0]) 
cylinder(h=20, r1=9.5, r2=19.5, center=false);
}


hull() {
    rotate([0,180,0])
cylinder(h=20, r1=9.5, r2=19.5, center=false);
  translate([0,15,0])     rotate([0,180,0])
cylinder(h=20, r1=9.5, r2=19.5, center=false);
}
}


