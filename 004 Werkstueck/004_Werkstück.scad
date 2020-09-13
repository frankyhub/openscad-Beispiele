
use <lib/transforms.scad>
use <lib/shapes.scad>

difference() 
{ 
//Körper unten    
prismoid(size1=[100,60], size2=[80,45], h=25);

//Durchbruch längs unten
 // rotate(180)  
zmove(-0.1) 
prismoid(size1=[100,20], size2=[100,30], h=10);     
    
 //Durchbruch quer unten
rotate(90)  
zmove(-0.1)
prismoid(size1=[100,40], size2=[100,20], h=20); 
}


difference() 
{
//Körper oben
zmove(25)
prismoid(size1=[70,45], size2=[50,30], h=25);

//Durchbruch längs oben
zmove(40.1)
prismoid(size1=[100,20], size2=[100,10], h=10); 
    
//Durchbruch quer oben
rotate(90)
zmove(40.1)
prismoid(size1=[40,30], size2=[100,20], h=10);
}