
//IP6 -> Bike

use <lib/linear_bearings.scad>

$fn=80;
linear_bearing_housing(d=22, l=29, wall=2, tab=11, screwsize=5);
       rotate([180, 0, 0])translate([0, 0, -10]) 
       import ("iphonehalter.stl");
