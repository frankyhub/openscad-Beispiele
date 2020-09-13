$fn=40;

include <lib/constants.scad>
use <lib/transforms.scad>


rot_copies(n=6, v=V_DOWN+V_BACK)
    yrot(90) cylinder(h=20, r1=5, r2=0);
color("red",0.333) yrot(90) cylinder(h=20, r1=5, r2=0);



yrot_copies(n=6, r=25)
    yrot(-90) xrot(-90) cylinder(h=10, r1=5, r2=5);


