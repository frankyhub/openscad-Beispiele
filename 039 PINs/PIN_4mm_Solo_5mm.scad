$fn=130;

D_sock=8; //Sockeldurchmesser
D_kubb=4.2;  //Knubbeldurchmesser
//Schaftdurchmesser=Knubbeldurchmesser-0.5

//Sockel
translate([0,0,0])
cylinder (h=6, d=D_sock);

difference(){

//Knubbl
union(){
translate([0,0,10])
cylinder (h=1, d1=D_kubb, d2=D_kubb-1);
translate([0,0,8])
cylinder (h=1, d1=D_kubb-0.5, d2=D_kubb);
translate([0,0,9])
cylinder (h=1, d1=D_kubb, d2=D_kubb);
//Schaft
translate([0,0,6])
cylinder (h=2, d=D_kubb-0.5);   
}


//Einschnitt
translate([-0.3,-2.5,7])
 cube([0.7,5,7]);
}


//Solo
translate([0,7,0])
cylinder (h=5, d=5);