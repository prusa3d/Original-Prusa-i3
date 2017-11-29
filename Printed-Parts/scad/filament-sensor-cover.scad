// PRUSA iteration4
// Filament sensor cover
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org

module part()
{
    difference()
    {
        union()
            {   
                // base shape
                translate([-6,50,-30.5]) cube([24,3,36]);
                translate([0,60,-17]) rotate([90,0,0]) cylinder(r=4.2,h = 10, $fn=30); 
                translate([0,61.5,-17]) rotate([90,0,0]) cylinder(r1=3, r2=4.2, h=1.5, $fn=30); 
            }
            
            // mounting screws
            translate([12,60,-12]) rotate([90,0,0]) cylinder(r=1.6,h = 20, $fn=30); 
            translate([-1,60,-24.5]) rotate([90,0,0]) cylinder(r=1.6,h = 20, $fn=30); 
                
            translate([12,54.5,-12]) rotate([90,0,0]) cylinder(r=3.1,h = 3, $fn=30); 
            translate([-1,54.5,-24.5]) rotate([90,0,0]) cylinder(r=3.1,h = 3, $fn=30); 

            // filament guide
            translate([0,59.8,-17]) rotate([90,0,0]) cylinder(r=2.2,h = 9.8, $fn=30); 
            translate([0,61,-17]) rotate([90,0,0]) cylinder(r=1,h = 20, $fn=30);     
            translate([0,62.5,-17]) rotate([90,0,0]) cylinder(r2=1.2, r1=3,h = 3, $fn=30);     
            translate([0,53.9,-17]) rotate([90,0,0]) cylinder(r1=2.2, r2=3,h = 4, $fn=30);     
                
                
            // nice edges    
            translate([19,50,-40]) rotate([0,0,45]) cube([10,10,50]);
            translate([-9,49,-38]) rotate([0,0,45]) cube([6,5,50]);
            translate([-8,56.5,-39]) rotate([45,0,0]) cube([50,10,10]);
            translate([-8,56.5,-1]) rotate([45,0,0]) cube([50,10,10]);


        translate([7,50.4,0]) rotate([90,180,0]) linear_extrude(height = 0.6) 
        { text("R1",font = "helvetica:style=Bold", size=5, center=true); }
    }
}


rotate([90,0,0]) part();


