
use <lib/transforms.scad>
use <lib/shapes.scad>


ampel=true;
staender=true;
rueckwand=true;



$fn=100;

led_d = 5; //Bohrdurchmesser für die LEDs


if(ampel){
//module schild(); //vorne
zspread(l=35, n=3)
union()//Schild und LED
{
    difference()
    {
    xscale(2) sphere(r=10);
    translate([8,0,-8]) rotate([0,-30,0])xscale(2) sphere(r=10);
    translate([-28,-15,-30]) cube([40,30,60]);
    }
    difference()
 { 
      union()//LED
    {  
    translate([12,0,-1])rotate([0,90,0]) cylinder (h = 2, r=6);

    }   
    translate([11,0,-1])rotate([0,90,0]) cylinder (h = 5, r=4);
    translate([8,0,-1])rotate([0,90,0]) cylinder (h = 10, d=led_d);
    }

    difference()
 {
     translate([12,0,-1])rotate([0,90,0]) cylinder (h = 1, r=4);
    translate([8,0,-1])rotate([0,90,0]) cylinder (h = 10, d=led_d);
 }
}


//module schild(); //rechte Seite
rotate([0,0,90])
zspread(l=35, n=3)
union()//Schild und LED
{
    difference()
    {
    xscale(2) sphere(r=10);
    translate([8,0,-8]) rotate([0,-30,0])xscale(2) sphere(r=10);
    translate([-28,-15,-30]) cube([40,30,60]);
    }
    difference()
 { 
      union()//LED
    {  
    translate([12,0,-1])rotate([0,90,0]) cylinder (h = 2, r=6);

    }   
    translate([11,0,-1])rotate([0,90,0]) cylinder (h = 5, r=4);
    translate([8,0,-1])rotate([0,90,0]) cylinder (h = 10, d=led_d);
    }

    difference()
 {
     translate([12,0,-1])rotate([0,90,0]) cylinder (h = 1, r=4);
    translate([8,0,-1])rotate([0,90,0]) cylinder (h = 10, d=led_d);
 }
}



   //Ampelkörper

   difference()
{
    translate([0,0,0]) cuboid([25,25,60], fillet=1);
    //translate([-12.5,-12.5,-30]) cuboid([25,25,60], fillet=1, center=true);
     translate([-14,-10.5,-28])cube([22,21,56]) ;
    zspread(l=35, n=3)
    translate([6,0,-1])rotate([0,90,0]) cylinder (h = 12, d=led_d);
    rotate([0,0,90])
    zspread(l=35, n=3)
    translate([6,0,-1])rotate([0,90,0]) cylinder (h = 12, d=led_d);
        translate([0,0,-150])cylinder(h = 130, d=6);
}

//Runde Kappe
zmove(40)
    translate([0,0,-14])top_half(cp=[0,0,4])   sphere(r=10);

}

//Rückwand
if(rueckwand)
{
      union()//LED
    { 
     translate([-23,2,0])cuboid([3,25,60], fillet=1 );
     translate([-22,-8.5,-28])cube([2,21,56]) ;
    }
}
  


//Ständer
if(staender)
{
      difference()
    { 
         union()//LED
        {
    translate([0,0,-130])cylinder(h = 100, d=7);
    translate([0,0,-130])cyl(h = 10, d1=50, d2=40,from_end=true,  fillet=2);
    translate([0,0,-130])cyl(l=8, d1=50, d2=40, chamfer1=1, chamfang1=20, from_end=true, fillet2=3);    
    translate([0,0,-32])cyl(h = 8, d1=15, d2=20,fillet=1);
        }    
    translate([0,0,-150])cylinder(h = 130, d=6);
    } 
    
}
