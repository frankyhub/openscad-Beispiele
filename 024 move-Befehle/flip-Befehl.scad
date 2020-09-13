

include <lib/constants.scad>
use <lib/transforms.scad>


xflip(cp=[-5,0,0]) yrot(90) cylinder(d1=10, d2=0, h=20);
color("blue", 0.25) left(5) cube([0.01,15,15], center=true);
color("red", 0.333) yrot(90) cylinder(d1=10, d2=0, h=20);

/*
yflip(cp=[0,5,0]) xrot(90) cylinder(d1=10, d2=0, h=20);
color("blue", 0.25) back(5) cube([15,0.01,15], center=true);
color("red", 0.333) xrot(90) cylinder(d1=10, d2=0, h=20);
*/



/*
zflip() cylinder(d1=10, d2=0, h=20);
color("blue", 0.25) cube([15,15,0.01], center=true);
color("red", 0.333) cylinder(d1=10, d2=0, h=20);
*/
