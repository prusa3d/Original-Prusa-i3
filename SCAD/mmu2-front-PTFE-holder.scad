// PRUSA MMU2
// front-ptfe-holder
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org

module front_PTFE_holder()
{
    difference()
    {
        union()
        {
            // base shape
            translate([-16,-30,-15]) cube([84,15,19]);
            translate([-16,-25,-15]) cube([84,10,22.5]);
        }

        // blade space
        translate([-17,-28,2.2]) rotate([45,0,0]) cube([86,2.7,2.7]);
        translate([-17,-31,3.5]) cube([86,2.7,2.7]);
        translate([-17,-25,5.5]) rotate([45,0,0]) cube([86,4,4]);
        
        // PTFE housing
        for (i =[0:4])
        {
            translate([3+(i*14),-15,4]) rotate([90,0,0]) cylinder(r=2.2, h=10, $fn=50); 
            translate([3+(i*14),-15,4]) rotate([90,0,0]) cylinder(r=1.3, h=18, $fn=50); 
            translate([3+(i*14),-25,4]) rotate([90,0,0]) cylinder(r1=1.3, r2=1.8,h=6, $fn=50); 
            translate([3+(i*14),-23,4]) rotate([90,0,0]) cylinder(r1=1.4, r2=1.1,h=5, $fn=50); 
            translate([3+(i*14),-14,4]) rotate([90,0,0]) cylinder(r2=2.1, r1=2.6,h=3, $fn=50); 
        }
        
        // angled front side
        translate([-19,-21,-25]) rotate([52,0,0]) cube([95,10,19]);
        translate([-19,-38.5,-15]) rotate([5,0,0]) cube([91,10,19]);
        translate([-10,-42,-15]) rotate([0,0,50]) cube([15,30,30]);
        translate([60,-39,-15]) rotate([0,0,-20]) cube([15,30,30]);
        
        // front PTFE tubes holder screws
        translate([9,-14,-1.5]) rotate([90,0,0]) cylinder(r=1.65, h=20, $fn=50); 
        translate([9,-14,-1.5]) rotate([90,0,0]) cylinder(r2=1.65, r1=2.5, h=2, $fn=50); 
        translate([9,-20,-1.5]) rotate([90,0,0]) cylinder(r=3.1, h=10, $fn=50); 
        translate([23,-14,-1.5]) rotate([90,0,0]) cylinder(r=1.65, h=20, $fn=50); 
        translate([23,-14,-1.5]) rotate([90,0,0]) cylinder(r2=1.65, r1=2.5, h=2, $fn=50); 
        translate([23,-20,-1.5]) rotate([90,0,0]) cylinder(r=3.1, h=10, $fn=50); 
        
        translate([37,-14,-1.5]) rotate([90,0,0]) cylinder(r=1.65, h=20, $fn=50); 
        translate([37,-14,-1.5]) rotate([90,0,0]) cylinder(r2=1.65, r1=2.5, h=2, $fn=50); 
        translate([37,-20,-1.5]) rotate([90,0,0]) cylinder(r=3.1, h=10, $fn=50); 
        translate([51,-14,-1.5]) rotate([90,0,0]) cylinder(r=1.65, h=20, $fn=50); 
        translate([51,-14,-1.5]) rotate([90,0,0]) cylinder(r2=1.65, r1=2.5, h=2, $fn=50); 
        translate([51,-20,-1.5]) rotate([90,0,0]) cylinder(r=3.1, h=10, $fn=50); 
        
        //version
        translate([-2,-15.5,-7]) rotate([-90,180,0]) linear_extrude(height = 0.8) 
        { text("M1",font = "helvetica:style=Bold", size=6, center=true); }    
    
        
        
    }
}
rotate([-90,0,0]) 
front_PTFE_holder();


 