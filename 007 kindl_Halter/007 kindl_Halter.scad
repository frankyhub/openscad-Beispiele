
//kindl-halter

translate([0, 0, 0])
	import("kindl.stl");
    translate([35.2, -17.6, -1.5])cube(size = [20.3,33.5,2.77]);
    translate([30, -13, -1.5])cube(size = [10,10,2.8]);
    
 
translate([42, 16,1])
linear_extrude(1)
rotate(-90)
text("Conny", font = "Arial", size=8);

echo("KHF 05.05.2020"); 





