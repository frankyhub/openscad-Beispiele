
$fn=60;
include <lib/constants.scad>
use <lib/transforms.scad>


#sphere(d=10);
move([0,20,30]) sphere(d=10);

xmove(20) sphere(d=10);
ymove(40) sphere(d=10);
zmove(20) sphere(d=10);

left(20) sphere(d=10);
right(10) sphere(d=10);

fwd(20) sphere(d=10);
back(20) sphere(d=10);
up(10) sphere(d=10);


