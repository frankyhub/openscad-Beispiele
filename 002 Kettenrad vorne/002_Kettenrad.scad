$fn =60;
     difference() 
     {
    for (winkel =[0:6:360])
    rotate([0,0,winkel])
    cylinder(8,39.42/2,39.42/2,$fn=4);
    translate([0,0,-0.1])  cylinder(18, 2, 2); 
    
    //Löcher umlaufend innen
    for (winkel =[0:60:360])
    rotate([0,0,winkel])
    translate([10,0,-1])  cylinder(18, 3, 3); 
        
     //Löcher umlaufend außen     
    for (winkel =[30:60:360])
    rotate([0,0,winkel])
    translate([15,0,-1])  cylinder(18, 2, 2); 
     }
