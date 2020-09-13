$fn=60;

    // Kopf
    translate([0, 0, 130])
    difference() 
    {
        union() 
        {
        // Tropfenform
        sphere(r = 20);
        translate([0, 0, 10])
        cylinder(h = 30, r1 = 17.3, r2 = 0);

        // Kugel an der Spitze
        translate([0, 0, 30 + 10])
        sphere(r = 6);
        }
     //Einschnitt
     rotate([45, 0, 0])
     translate([-20, 0, 0])
     cube([40, 5, 40]);
    }
    // Hals
    cylinder(h = 120, r1 = 18, r2 = 12);
    
    // Sockel
    cylinder(h = 20, r1 = 35, r2 = 25);

    // Kragen
    translate([0, 0, 90])
    cylinder(h = 20, r1 = 18, r2 = 0);
    translate([0, 0, 90])  
    mirror([0, 0, 1])
    cylinder(h = 20, r1 = 18, r2 = 0);
