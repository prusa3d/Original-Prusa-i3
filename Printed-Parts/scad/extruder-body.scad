// PRUSA iteration3
// Extruder-body
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org


use <extruder-main.scad>


module m3nut()
{
difference()
{    
cube([2,6,8]);
translate([-0.5,3,3]) rotate([0,90,0]) cylinder(r=1.25, h=3, $fn=20);
}
}


module ext_body(){
    
    difference(){
       extruder_body();
       extruder_mount_holes();
        
        // PINDA entry hole
        translate([-5.5,37,6])rotate([90,0,0])cylinder(r=4.4, h=40, $fn=20); 
    }
    
}

    
difference()
{
    ext_body();
    
    // remove old pinda
    translate([-20,26,-2]) cube([20,30,30]);

    // screw end larger hole
    translate([-20,40,12])rotate([0,90,0])cylinder(r=1.5, h=24, $fn=20);    
    translate([2,40,11.5])rotate([0,90,0])cylinder(r=1.5, h=3, $fn=20); 
    translate([2,40,12])rotate([0,90,0])cylinder(r=1.5, h=3, $fn=20); 
    translate([2,40,12.5])rotate([0,90,0])cylinder(r=1.5, h=3, $fn=20); 

    // M3 nuts 
    translate([0,46,9]) m3nut();
    translate([0,37,9]) m3nut();
    
    translate([0,42,9]) m3nut();
    translate([2,45,11.5])rotate([0,90,0])cylinder(r=1.6, h=3, $fn=20); 
    translate([2,45,12])rotate([0,90,0])cylinder(r=1.6, h=3, $fn=20); 
    translate([2,45,12.5])rotate([0,90,0])cylinder(r=1.6, h=3, $fn=20); 
    translate([-20,45,12])rotate([0,90,0])cylinder(r=1.6, h=25, $fn=20);
    
}

module ex_body()
{ 
    
difference()
{
    
    union()
    {    
        // body
        // round body
        translate([-5.5,35.5,6])rotate([-90,0,0])cylinder(r=8.5, h=20, $fn=20);
        // body block
        translate([-13,35.5,5]) cube([17,20,10]);
        translate([-13,35.5,15]) cube([5,20,1]);
        
        // extruder body joint
        translate([-0,33.5,0]) cube([3,2,15]);
        translate([0,34,0]) cube([4,3,15]);
        translate([0,35.5,0]) rotate([0,0,45]) cube([2,2,15]);
        
        // m3 nut lock
     #translate([32.5,6.5,14])rotate([0,45,0]) cube([1,7,1], center=true);
     #translate([26.5,6.5,14])rotate([0,45,0]) cube([1,7,1], center=true);

    }   


    // PINDA lower hole
    translate([-5.5,50,6])rotate([-90,0,0])cylinder(r=4.1, h=40, $fn=20);

    // M3 screws 
    //#translate([-20,49,12])rotate([0,90,0])cylinder(r=1.6, h=24, $fn=20);    
    translate([-20,45,12])rotate([0,90,0])cylinder(r=1.6, h=25, $fn=20);    
    translate([-14,45,12])rotate([0,90,0])cylinder(r=3, h=5, $fn=20);   

    // upper M3 screw end opening
    translate([2,45,11.5])rotate([0,90,0])cylinder(r=1.6, h=3, $fn=20); 
    translate([2,45,12])rotate([0,90,0])cylinder(r=1.6, h=3, $fn=20); 
    translate([2,45,12.5])rotate([0,90,0])cylinder(r=1.6, h=3, $fn=20); 
    
    // M3 nuts opening
    translate([0,42,9]) m3nut();

    // flat bottom side
    translate([-20,33,-10]) cube([30,35,10]);

    // slot
    translate([-6,33,8]) cube([1.3,25,10]);

    // 45 / 30 deg edges 
    translate([-15,32,12]) rotate([45,0,0]) cube([15,10,10]);
    translate([-20,55,13]) rotate([45,0,0]) cube([25,3,5]);

    translate([-2,45,-1]) rotate([0,30,0]) cube([15,15,15]);
    translate([7,46,-1]) rotate([0,0,30]) cube([15,11,25]);

    //PINDA mounting hole
    translate([-5.5,60,6])rotate([90,0,0])cylinder(r=4.2, h=60, $fn=20); 
    translate([-5.5,41,6])rotate([90,0,0])cylinder(r=4.4, h=5, $fn=20); 

    // bottom cut
    translate([-15,54.5,-1])  cube([20 , 8,20]); 

    
    for ( i = [0 : 14] )
        {
          translate([-5.5,39+i,6])rotate([90,0,0])cylinder(r1=4.5, r2=3, h=1, $fn=20); 
          translate([-5.5,40+i,6])rotate([90,0,0])cylinder(r1=3, r2=4.5, h=1, $fn=20);
        }

}

}

ex_body();
