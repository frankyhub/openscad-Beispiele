
// Halter für QR-Code Ausdrucke


  $fn=80;


union(){
    color("blue")   
    translate([-7, 0, 0])
	import("qr-halter.stl");
       
    color("white")
    rotate([180,180,-90]) 
    translate([-16.5, 16,3]) 
    linear_extrude(1.5)
    text("github.com/frankyhub", font="Arial:style=Italic", size=4.);
}


