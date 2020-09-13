 $fn =100;


module zahnrad()
 {
    difference() 
     {
    for (winkel =[0:6:360])
    rotate([0,0,winkel])
    translate([0,0,0])
    cylinder(8,39.42/2,39.42/2,$fn=4);
    translate([0,0,-0.1])  cylinder(18, 2, 2); // Loch mitte d=4
    translate([0,0,4])  cylinder(r=4, h=8.1); //Aussparung d=8
    
    //Löcher umlaufend innen
        for (winkel =[0:60:360])
    rotate([0,0,winkel])
    translate([10,0,-1])  cylinder(18, 3, 3); 
        
     //Löcher umlaufend aussen     
               for (winkel =[30:60:360])
    rotate([0,0,winkel])
    translate([15,0,-1])  cylinder(18, 2, 2); 
        
        
        
    }
}    
translate([0,0,0]) zahnrad();




module achse()
{
difference() {
translate([0,0,0])cylinder(16, 5, 5, center = true); //Achse
translate([0,0,-0.1])  cylinder(18, 2, 2,center = true); // Loch mitte
//translate([0,0,-0.1])  cylinder(4, 4, 4,center = true); //Aussparung
translate([0,0,4])  cylinder(r=3.8, h=8.1); //Aussparung
    
     translate([0,0,-4.2]) 
     cube([4,4,7.7],center = true);
    
    translate([-2,0,-4.2]) 
    cylinder(r=4/2,h=7.7,center = true);
    
    translate([2,0,-4.2]) 
    cylinder(r=4/2,h=7.7,center = true);
    
} 
}
translate([0,0,0]) achse();

 
    


