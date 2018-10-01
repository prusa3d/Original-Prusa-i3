// PRUSA iteration4
// Extruder cable clip
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org

module extruder_cable_clip()
{
        
    difference(){
    difference()
    {
        union()
        {
            // body shape
            translate([-6,28,28]) rotate([0,90,0]) cylinder(h=6,r=13.5,$fn=30);  
            translate([-10,28,28]) rotate([0,90,0]) cylinder(h=4,r1=8.5,r2=13.5, $fn=30);  
            translate([0,16.6,28]) cube([2.9,22.8,7]); 
        }
        
        // bottom cut and shape
        translate([-15,7,13]) cube([30,40,15]); 
        translate([-20,28,28]) rotate([0,90,0]) cylinder(h=40,r=6, $fn=30);
        
        // screws
        translate([-2.7,19.5,25]) rotate([0,0,90]) cylinder(h= 10, r = 1.6, $fn=50); 
        translate([-2.7,36.5,25]) rotate([0,0,90]) cylinder( h = 10, r = 1.6, $fn=50); 
        translate([-2.7,36.5,32]) rotate([0,0,90]) cylinder( h = 13, r = 3.1, $fn=30);
        translate([-2.7,19.5,32]) rotate([0,0,90]) cylinder( h = 13, r = 3.1, $fn=30); 
        
        // screw heads opening
        translate([-2.7,16.4,35]) cube([10,6.2,15]); 
        translate([-2.7,33.4,35]) cube([10,6.2,15]); 
        
        
    }
    
    difference()
    {
        // cable grip
        translate([-8,28,28]) rotate([0,90,0]) cylinder( h = 10, r = 6, $fn=30);
        translate([-20,28,28]) rotate([0,90,0]) cylinder( h = 40, r = 5.5, $fn=30);
        translate([-15,7,13]) cube([30,40,15]); 
        translate([-6,7,13]) cube([2,40,25]); 
        translate([-2,7,13]) cube([2,40,25]); 
        
    }
    
    
    //nylon hole
        
        translate([-3,28,28]) rotate([35,90,0]) cylinder( h = 24,r = 1.8,$fn=30);}}


//translate([0,0,0]) extruder_cable_clip();

translate([6,-28,-28]) extruder_cable_clip();