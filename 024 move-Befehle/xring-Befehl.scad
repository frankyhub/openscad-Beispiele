include <lib/constants.scad>
use <lib/transforms.scad>



$fn=40;
yrot(90) cylinder(h=30, r=2);

xring(n=6, r=10)  yrot(90)cylinder(h=30, r=2);
