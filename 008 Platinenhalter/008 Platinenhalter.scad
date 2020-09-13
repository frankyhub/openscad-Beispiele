include <pins.scad>
$fn=130;
module pins() 
{
  translate([0, 0, 0]) pintack(h=10);
  ;translate([21, 0, 0]) pintack(h=10);
    
  ;translate([0, 21, 0]) pintack(h=10);
  ;translate([21, 21, 0]) pintack(h=10);
}
pins();
