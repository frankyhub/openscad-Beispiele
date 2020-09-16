
include <ma_ele/constants.scad>
use <ma_ele/transforms.scad>


$fn=60;
difference()
{
union ()
{
zmove(-1.2) cylinder(h = 1.2, r1 = 10, r2 = 9.5);
zmove(-9) cylinder(h = 9, d=9.5);
xrot(180) zmove(7.8) cylinder(h = 1.2, r1 = 10, r2 = 9.5);
}
zmove(-20)cylinder(h = 30, d=6.1);
}

/*mess 
translate ([0,10,-9])cube([1, 1, 9]);
rotate([0,90,0])
translate ([-1,0,-10])cube([1, 1, 20]);
*/