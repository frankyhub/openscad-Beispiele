
segments = 80;

//Turm
module turm ();
scale(0.2)
rotate([0, 0, 0])
//translate([0, 0, 0]) 

{
//color("LemonChiffon")
    translate([0, 0, 160])
    difference () {
    rotate_extrude(convexity = 10, $fn = segments) 
    {
	import("rook_profile.dxf");
    }

    translate([0, 0, 20]) 
    {
      rotate([0, 0, 0])
        linear_extrude(height = 20) {
	    polygon( points=[[0,0],[60,30],[30,60]] );
        }
      rotate([0, 0, 90])
        linear_extrude(height = 20) {
	    polygon( points=[[0,0],[60,30],[30,60]] );
        }
      rotate([0, 0, 180])
        linear_extrude(height = 20) {
	    polygon( points=[[0,0],[60,30],[30,60]] );
        }
      rotate([0, 0, 270])
        linear_extrude(height = 20) {
	    polygon( points=[[0,0],[60,30],[30,60]] );
        }
    }

}

}
turm() translate([0,0,0]);


//Pferd
module pferd();
scale(0.2)
rotate([0, 0, 0])
translate([0, 200, 0]) 
{

translate([0, 0, 30])
union () {
    rotate_extrude(convexity = 10, $fn = 64) {
	import("knight_profile.dxf");
    }
    // Import STL for the knight
    translate([-8, -12, 28])
    scale(3.2)
    import("horse3.stl");
}

}
pferd();

//Läufer
module laufer();
scale(0.2)
rotate([0, 0, 0])
translate([0, 400, 0]) {

translate([0, 0, 222])
difference () {
    rotate_extrude(convexity = 10, $fn = segments) {
	import("bishop_profile.dxf");
    }
    translate([-30, 0, 5])
    rotate([0, -45, 0])
    cube([10, 80, 80], center = true);
}

}
laufer();


//Dame
module dame();
scale(0.185)
rotate([0, 0, 0])
translate([0, 650, 0]) {

translate([0, 0, 216])
union () {
    rotate_extrude(convexity = 10, $fn = segments) {
	import("queen_profile.dxf");
    }
    // Add the crown
    translate([0, 0, 28])
    scale(7.0)
    import("queen_crown2.stl");
}

}

dame();


//König
module konig();
scale(0.185)
rotate([0, 0, 0])
translate([0, 900, 0]) {

translate([0, 0, 277])
union () {
    rotate_extrude(convexity = 10, $fn = segments) {
	import("king_profile.dxf");
    }
    translate([-25, 5, 40])
    rotate([90, 0, 0])
    linear_extrude(height = 10) {
	import("cross_profile.dxf");
    }
}

}
konig();

//Läufer
module laufer2();
scale(0.2)
rotate([0, 0, 0])
translate([0, 1050, 0]) {

translate([0, 0, 222])
difference () {
    rotate_extrude(convexity = 10, $fn = segments) {
	import("bishop_profile.dxf");
    }
    translate([-30, 0, 5])
    rotate([0, -45, 0])
    cube([10, 80, 80], center = true);
}

}
laufer2();



//Pferd

module pferd2()
scale(0.2)
rotate([0, 0, 0])
translate([0, 1250, 0]) {
 translate([0, 0, 30])

union () {
    rotate_extrude(convexity = 10, $fn = 64) {
	import("knight_profile.dxf");
    }
    // Import STL for the knight
    translate([-8, -12, 28])
    scale(3.2)
    import("horse3.stl");
}

}
pferd2();




//Turm
module turm2();
scale(0.2)
rotate([0, 0, 0])
translate([0, 1450, 0]) {

translate([0, 0, 160])
difference () {
    rotate_extrude(convexity = 10, $fn = segments) {
	import("rook_profile.dxf");
    }

    // Four cutouts

    translate([0, 0, 20]) {
      rotate([0, 0, 0])
        linear_extrude(height = 20) {
	    polygon( points=[[0,0],[60,30],[30,60]] );
        }
      rotate([0, 0, 90])
        linear_extrude(height = 20) {
	    polygon( points=[[0,0],[60,30],[30,60]] );
        }
      rotate([0, 0, 180])
        linear_extrude(height = 20) {
	    polygon( points=[[0,0],[60,30],[30,60]] );
        }
      rotate([0, 0, 270])
        linear_extrude(height = 20) {
	    polygon( points=[[0,0],[60,30],[30,60]] );
        }
    }

}

}
turm2();

include <ma_ele/constants.scad>
use <ma_ele/transforms.scad>



//-------------------------------

//Bauer
module bauer();
scale(0.9)
rotate([0, 0, 90])
translate([163, -40, 0]) 

xspread(l=325, n=8)
scale(0.05)
{
    rotate_extrude() 
    {
	import("bauer.svg");
    }
}

