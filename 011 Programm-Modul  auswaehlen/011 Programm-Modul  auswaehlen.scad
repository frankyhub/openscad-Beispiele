

// Programm Modul über type auswählen:


type = 2; //Hier den Typ eingeben: 1=Kugel, 2=Zylinder, 3=Kegel




$fn=40;
test();
module select() {
    if (type == 1) {
        kugel();
    } else if (type == 2) {
        zylinder();
    } else if (type == 3) {
        kegel(); }
}

module test(){
    union() {
    rotate(a=[0,90,0])translate([-2,0,0])cylinder(h=10, d=1);
    select();
    }
}


module kugel(){
sphere(3);
 }
 
 module zylinder(){
cylinder(h=10, d=5);  
}

 module kegel(){
cylinder(h=10, d1=5, d2=0);   
}
 
 