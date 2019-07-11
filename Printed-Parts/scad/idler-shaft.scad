// PRUSA iteration3
// Idler shaft
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org


difference()
{
    union()
    {
        cylinder( h=1, r2=2.5, r1=2.3, $fn=80 );    
        translate([0,0,1]) cylinder( h=14, r=2.5, $fn=80 );    
        translate([0,0,15])  cylinder( h=1, r1=2.5, r2=2.3, $fn=80 );    
    }
        translate([0,0,1]) cylinder( h=14, r=0.4, $fn=80 );    
}