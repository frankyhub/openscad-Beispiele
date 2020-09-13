
use <lib/shapes.scad>
use <lib/transforms.scad>
use <lib/wiring.scad>

$fn=60;
union(){
 difference(){
 cuboid([14,5,14], fillet=1); //Grundkörper
  xmove(3)
   ymove(1)  
  cuboid([17,5,10], fillet=1);    //Aussparung
  
  xmove(-4.5) //Gummiloch
  zmove(-8)
cylinder(d1=3, d2=3, h=15);
 } 
}

union(){ //Stoppel unten Wand
    xspread(l=8, n=5)
    xmove(1.8)
    ymove(0.8)
    zmove(-5)
    yrot(40) 
    cyl(l=2, d1=2, d2=1.5, chamfer1=0, chamfang1=0, from_end=true, fillet2=0.75);
}
    
 //Stoppel oben
union(){ //Stoppel oben  Wand
    xflip(cp=[0,0,0]) yrot(180)
    xspread(l=8, n=5)
    xmove(1.8)
    ymove(0.8)
    zmove(-5)
    yrot(40) 
    cyl(l=2, d1=2, d2=1.5, chamfer1=0, chamfang1=0, from_end=true, fillet2=0.75);
}

union(){ //Stoppel umitte oben
    xspread(l=8, n=5)
    xmove(1.8)
    ymove(0.8)
    zmove(1.5)
    yrot(40) 
    cyl(l=2, d1=2, d2=1.5, chamfer1=0, chamfang1=0, from_end=true, fillet2=0.75);
}

union(){ //Stoppel oben  Wand
    xflip(cp=[0,0,0]) yrot(180)
    xspread(l=8, n=5)
    xmove(1.8)
    ymove(0.8)
    zmove(1.5)
    yrot(40) 
    cyl(l=2, d1=2, d2=1.5, chamfer1=0, chamfang1=0, from_end=true, fillet2=0.75);
}

 cuboid([13,5,3], fillet=1); //Körper mitte

gummi=true;
if(gummi)
//Gummi
union(){
    color([0,0,1,1])
    wiring([  [12,0,3.4], [-4.55,0,3], [-4.5,0,12]], fillet=3, wirediam=3, wires=1);
    color([0,0,1,1])
    xflip(cp=[0,0,0]) yrot(180)
    wiring([  [12,0,3.4], [-4.55,0,3], [-4.5,0,12]], fillet=3, wirediam=3, wires=1);
}