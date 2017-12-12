// PRUSA iteration4
// Extruder cable clip
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org

module extruder_cable_clip()
{
    difference()
    {
        union()
        {
            // body shape
            translate([-6,28,28]) rotate([0,90,0]) cylinder(h=6,r=13,$fn=30);  
            translate([-10,28,28]) rotate([0,90,0]) cylinder(h=4,r1=8,r2=13, $fn=30);  
            translate([0,16.6,28]) cube([2.9,22.8,7]); 
        }
        
        // bottom cut and shape
        translate([-15,7,13]) cube([30,40,15]); 
        translate([-20,28,28]) rotate([0,90,0]) cylinder(h=40,r=5.5, $fn=30);
        
        // screws
        translate([-2.7,20.0,25]) rotate([0,0,90]) cylinder(h= 10, r = 1.6, $fn=50); 
        translate([-2.7,36,25]) rotate([0,0,90]) cylinder( h = 10, r = 1.6, $fn=50); 
        translate([-2.7,36,32]) rotate([0,0,90]) cylinder( h = 13, r = 3.1, $fn=30);
        translate([-2.7,20.0,32]) rotate([0,0,90]) cylinder( h = 13, r = 3.1, $fn=30); 
        
        // screw heads opening
        translate([-2.7,16.9,35]) cube([10,6.2,15]); 
        translate([-2.7,32.9,35]) cube([10,6.2,15]); 
    }
    
    difference()
    {
        // cable grip
        translate([-8,28,28]) rotate([0,90,0]) cylinder( h = 10, r = 6, $fn=30);
        translate([-20,28,28]) rotate([0,90,0]) cylinder( h = 40, r = 5, $fn=30);
        translate([-15,7,13]) cube([30,40,15]); 
        translate([-6,7,13]) cube([2,40,25]); 
        translate([-2,7,13]) cube([2,40,25]); 
    }
    
    
}


translate([6,-28,-28]) extruder_cable_clip();