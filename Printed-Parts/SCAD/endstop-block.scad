// PRUSA iteration4
// Endstop block
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org

module endstop_block()
{
    difference()
    {
        union()
        {
            // body
            translate([1,-16,1]) cube([12,9,14]);
            translate([1,-16,1]) rotate([0,0,45]) cube([3,2.2,14]);
            translate([0.5,-8,1]) cube([3,1,14]);
        }

        // screw
        translate([-4,-11,11]) rotate([0,90,0]) cylinder(r=1.65, h=10, $fn=30);
        translate([5,-11,11]) rotate([0,90,0]) cylinder(r=3.1, h=10, $fn=30);

        // edges
        translate([-13,-22,-0]) rotate([45,45,0]) cube([15,15,15]);
        translate([-1,-0,-10]) rotate([60,0,0]) cube([15,15,15]);
        translate([-12,-20,0]) rotate([0,50,0]) cube([15,15,15]);
    }
}


rotate([0,180,0]) endstop_block();
