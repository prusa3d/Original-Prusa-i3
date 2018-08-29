// PRUSA MMU2
// selector-front-plate
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org

module front_plate()
{
    difference()
    {
        translate([50,-65.5,-13.5]) cube([15,4.5,34.5]);
        
        // screws
        translate([59,-48,-8]) rotate([90,0,0]) cylinder(r=1.65, h=30, $fn=50);
        translate([59,-48,15]) rotate([90,0,0]) cylinder(r=1.65, h=30, $fn=50);
        
        translate([59,-60,-8]) rotate([90,0,0]) cylinder(r2=1.65,r1=2.5, h=1.5, $fn=50);
        translate([59,-60,15]) rotate([90,0,0]) cylinder(r2=1.65,r1=2.5, h=1.5, $fn=50);
        
        translate([59,-65,-8]) rotate([90,0,0]) cylinder(r=3.2, h=5, $fn=50);
        translate([59,-65,15]) rotate([90,0,0]) cylinder(r=3.2, h=5, $fn=50);
        
        // brass insert
        translate([59,-60,4]) rotate([90,0,0]) cylinder(r=3.8, h=6, $fn=50); 
        translate([59,-63,4]) rotate([90,0,0]) cylinder(r2=5, r1=3.5, h=2, $fn=50); 
        translate([59,-59.5-1,4]) rotate([90,0,0]) cylinder(r1=5, r2=3.5, h=2, $fn=50); 
        translate([59,-64,4]) rotate([90,0,0]) cylinder(r1=5,r2=5.5, h=2, $fn=50); 
        
        // edges
        translate([45,-64,-15]) rotate([0,0,-45]) cube([15,4,40]);
        translate([45,-64,-18.5]) rotate([45,0,0]) cube([25,4,42]);
        translate([45,-71,19]) rotate([-45,0,0]) cube([25,4,40]);
        
    }
}

rotate([-90,0,0]) 
front_plate();