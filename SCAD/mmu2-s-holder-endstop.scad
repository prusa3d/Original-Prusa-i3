// PRUSA MMU2
// s-holder-endstop
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org


difference()
{

    union()
    {
        // outside shape
        translate([0,0,0]) cylinder( h=1, r=11.5, $fn=60 ); 
        translate([0,0,0]) cylinder( h=4, r=7.5, $fn=60 ); 
        translate([0,0,4]) cylinder( h=2, r=7.5, r2=6, $fn=60 ); 
    }

    // rod
    translate([0,0,0]) cylinder( h=5, r=4.5, $fn=60 ); 
    translate([0,0,-0.5]) cylinder( h=2.5, r2=4.5, r1=5, $fn=60 ); 
}