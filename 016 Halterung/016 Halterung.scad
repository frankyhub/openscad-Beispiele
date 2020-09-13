$fn=100;

//Zylinder
 zd1 = 30;
 zy_h = 8;
 zld1 = 24.7;
 loch =4.7;

module ring()
{ 
 {
     difference() 
     {
      
        for (winkel =[0:90:360])
        rotate([0,0,winkel])
        difference() 
        {
    translate([0,-15.5,0])  cylinder(h=zy_h, d=zd1,center = true);
    translate([0,-15.5,0])  cylinder(h=zy_h+0.2, d=zld1,center = true); 
    translate([0,0,-15])  cylinder(h=50+0.2, d=loch);
        }
    }
 }
}
ring();


module hax()
{
    for (winkel =[0:90:360])
    rotate([0,0,winkel])
    rotate([-90,0,90])
    linear_extrude(height = 3.5, center = true)
    translate([22.80,-46,0])     
    //polygon(points=[[5,42],[15,14],[15,13],[15,60],[5,50]]);
    polygon(points=[[5,40],[12,20.5],[14,20.5],[14,60],[10,60],[5,50]]);     
}  
 hax();


module zylinder()
{
    difference() 
  {
    translate([0,0,0])  cylinder(h=18, d=12);
    translate([0,0,-15])  cylinder(h=50+0.2, d=loch);
  }
}
translate([0,0,-8]) zylinder();

/* Messen
rotate([0,0,90]) 
translate([0,0,0]) cylinder(h=2, d=73.5);


rotate([0,0,90])
translate([36.5,0,-14]) cube([1,1,39]);
*/


