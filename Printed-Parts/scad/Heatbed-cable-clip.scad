// PRUSA iteration4
// Heatbed cable clip
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org


module heatbed_cable_clip()
{
    
difference()
{    
    
    union()
    {
        difference()
        {
            union()
            {
                // body base
                translate([75,99,28]) rotate([90,0,0]) cylinder( h = 15, r = 13, $fn=30); 
                translate([75,101,28]) rotate([90,0,0]) cylinder( h = 2, r1=9,r2 = 13, $fn=30); 
            }

            // screws
            translate([67,95,14]) rotate([0,0,0]) cylinder(h=35,r=1.6,$fn=50); 
            translate([83,95,14]) rotate([0,0,0]) cylinder(h=35,r=1.6,$fn=50);
            
            // cut flat and shape
            translate([60,82,14]) cube([30,20,14]);  
            translate([60,72,20]) cube([30,20,30]); 
        }
        translate([62.75,88.2,28]) cube([24.5,3.8,7]); 
    }

    // cable opening
    translate([75,105,28]) rotate([90,90,0]) cylinder(h=30,r=4.0,$fn=30);

    // screws opening
    translate([67-3.2,90.2,35]) cube([6.4,5,7]); 
    translate([83-3.2,90.2,35]) cube([6.4,5,7]); 
    
    // screw heads
    translate([67,95,31]) rotate([0,0,0]) cylinder(h=10,r=3.2,$fn=30); 
    translate([83,95,31]) rotate([0,0,0]) cylinder(h=10,r=3.2,$fn=30); 
}

difference()
{
    // cable grip
    translate([75,99,28]) rotate([90,90,0]) cylinder(h=10,r=4.5,$fn=30);
    translate([75,105,28]) rotate([90,90,0]) cylinder(h=30,r=3.5,$fn=30);
    translate([60,72,14]) cube([30,40,14]);  
    translate([60,90,24]) cube([30,4,14]);  
    translate([60,95,24]) cube([30,3,14]);  
}
} 

translate([-75,-99,-28]) heatbed_cable_clip();