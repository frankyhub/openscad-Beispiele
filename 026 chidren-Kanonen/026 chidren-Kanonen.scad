module arrow(){
    cylinder(10);
    cube([4,.5,3],true);
    cube([.5,4,3],true);
    translate([0,0,10]) cylinder(4,2,0,true);
}
  
module cannon(){
    difference(){union()
      {sphere(10);cylinder(40,10,8);} cylinder(41,4,4);
} }
  
module base(){
    difference(){
      cube([40,30,20],true);
      translate([0,0,5])  cube([50,20,15],true);
} }
module aim(elevation,azimuth=0)
    { rotate([0,0,azimuth])
      { rotate([0,90-elevation,0]) children(0);
      children([1:1:$children-1]);   // step needed in case $children < 2
} }
   
aim(30,20)arrow();
aim(35,270)cannon();
aim(15){cannon();base();}

module RotaryCluster(radius=30,number=8)
    for (azimuth =[0:360/number:359])
      rotate([0,0,azimuth])    
        translate([radius,0,0]) { children();
          translate([40,0,30]) text(str(azimuth)); }
   
RotaryCluster(200,9) color("lightgreen") aim(15){cannon();base();}
rotate([0,0,110]) RotaryCluster(100,4.5) aim(35)cannon();
color("LightBlue")aim(55,30){cannon();base();}