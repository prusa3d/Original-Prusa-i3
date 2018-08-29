// PRUSA MMU2
// blade-holder
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org


module blade_holder()
{
    difference()
    {
        // base shape
        translate([40,-28,5]) cube([25,4,16]);
        
        // screws
        translate([45,-20,16]) rotate([90,0,0]) cylinder(r=1.7, h=10, $fn=50); 
        translate([55,-20,12]) rotate([90,0,0]) cylinder(r=1.7, h=10, $fn=50); 
        translate([45,-22,16]) rotate([90,0,0]) cylinder(r=3.1, h=4, $fn=50); 
        translate([55,-22,12]) rotate([90,0,0]) cylinder(r=3.1, h=4, $fn=50);
        
        // edges
        translate([38,-24,1]) rotate([46,0,0]) cube([30,7,5]);
        translate([38,-23,19]) rotate([45,0,0]) cube([30,5,5]);
        
        // filament path
        translate([59,-20,4]) rotate([90,0,0]) cylinder(r=1.3, h=10, $fn=50); 
    }
}
rotate([90,0,0]) 
blade_holder();


