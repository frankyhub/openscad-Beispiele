 /* Texte einstellen über
    Hilfe, Fontliste
*/
 
 square(10);
translate([15, 0]) 
text("OpenSCAD", font = "Liberation Sans:style=Bold Italic");
    translate([15, 15]) 
    text("OpenSCAD", font = "Liberation Sans"); 
translate([15, 30]) 
text("Muenchen", font =  "MuenchnerFraktur:style=Regular"); 
    //3d Text
    translate([15, 50]) 
    linear_extrude(4)
    text("Gmund", font="HumboldtFraktur:style=Regular", $fn=60);