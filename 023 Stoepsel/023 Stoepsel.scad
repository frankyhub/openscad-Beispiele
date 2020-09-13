include <lib/constants.scad>
use <lib/transforms.scad>

 $fn =80;




 dr = 23;   //Durchmesser Rad
 ld_m = 2;  //Loch Mitte
 ld_u = 5;  //Löcher umlaufend
 gr_h = 20; // Höhe



module stopsl()
{
    difference() 
    {
    move([11,0,0]) yrot(90)cylinder(h=gr_h, d=dr, center=true); //Stopsl
    yrot(90)cylinder(h=30, d=ld_m); //Loch mitte
    xring(n=6, r=6)  yrot(90) cylinder(h=31, d=ld_u); //Löcher umlaufend
    }
}    
translate([0,0,0]) stopsl();


module platte()
{
    difference() 
    {
    yrot(90)translate([0,0,0.5])cylinder(1, d=25, center=true); //Platte
    xring(n=6, r=6)  yrot(90) zmove(-10) cylinder(h=31, d=ld_u); //Löcher umlaufend
    yrot(90) zmove(-10) cylinder(h=30, d=ld_m); //Loch mitte
    } 
}    
platte();

