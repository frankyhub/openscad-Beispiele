

include <lib/constants.scad>
use <lib/transforms.scad>

$fn=60;
top_half() sphere(r=20);

zmove(40)
top_half(cp=[0,0,-8])  sphere(r=20);

zmove(-10)
bottom_half() sphere(r=20);

