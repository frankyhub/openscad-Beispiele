
include <lib/constants.scad>
use <lib/shapes.scad>

$fn=40;

color([0,0,1,1])
cuboid([16,60,5], fillet=2);
	
		difference()
        {
			translate([0,33,0])cuboid([11,13,5], fillet=2);
			translate([0,33,5.5])sphere(r=4);
            translate([0,33,-5.5])sphere(r=4);
            translate([0,33,-5])cylinder(h = 8, r = 2);
        }

translate([4.5, -23,1])
linear_extrude(2)
rotate(90)
text("Elektro", font = "Arial");

