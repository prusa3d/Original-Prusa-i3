// PRUSA MMU2
// blade-holder
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org

module blade()
{
        difference()
        {
            translate([0,0.0,-0.1]) cube([17,1,9]);
            translate([11.4,-0.4,10]) rotate([0,61,0]) cube([21,1.5,9]);
            translate([-9.2,-0.4,9]) rotate([0,59,0]) cube([21,1.5,9]);
        }
}

module screw()
{
    difference()
    {
        union()
        {
            translate([0,0,0]) rotate([90,0,0]) cylinder(r=1.7, h=10, $fn=50); 
            translate([0,0,0]) rotate([90,0,0]) cylinder(r=3.1, h=4, $fn=50); 
        }

        translate([0+1.7,-4.5,-5]) cube([5,1,10]); 
        translate([-5-1.7,-4.5,-5]) cube([5,1,10]); 
        translate([-5,-5,-5-1.7]) cube([10,2,5]); 
        translate([-5,-5,1.7]) cube([10,2,5]); 
    }
}


module blade_holder()
{
    difference()
    {
        union()
        {
        // base shape
        translate([40,-28,5]) cube([25,4,16]);
        translate([39.4,-27.75-0.75,6.0]) rotate([0,10.0,0]) blade();
        }
        
        // screws
        translate([55,-23,12]) screw();
        translate([45,-23,16]) screw();
        
        // blade cleanup
        translate([40,-28.5,-4]) cube([17,2,9]);
        
        // edges
        translate([38,-24,1]) rotate([46,0,0]) cube([30,7,5]);
        translate([38,-23,19]) rotate([45,0,0]) cube([30,5,5]);
        
        // filament path
        translate([59,-25,4]) rotate([90,0,0]) cylinder(r2=1.5, r1=2.6,, h=5, $fn=50); 
        
    }
    
    
}
rotate([-90,0,0]) 
blade_holder();


