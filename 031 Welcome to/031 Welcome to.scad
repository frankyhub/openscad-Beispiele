
//    
//       /*Welcome to Oberlab*/ 
//




//The resolution of the curves. Higher values give smoother curves but may increase the model render time.
resolution = 10; //[10, 20, 30, 50, 100]

//The horizontal radius of the outer ellipse of the sign.
radius = 80;//[60 : 200]

//Total height of the sign
height = 2;//[1 : 10]



//Message to be write 
Message = "Welcome to..."; //["Welcome to...", "Happy Birthday!", 

//Name 
To = "Oberlab";

$fn = resolution;

scale([1, 0.5]) difference() {
    cylinder(r = radius, h = 2 * height, center = true);
    translate([0, 0, height])
        cylinder(r = radius - 10, h = height + 1, center = true);
}
linear_extrude(height = height) {
    translate([0, --4]) text(Message, halign = "center");
    translate([0, -16]) text(To, halign = "center");
}

