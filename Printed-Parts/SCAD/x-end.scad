// PRUSA iteration4
// X end prototype
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org

use <bearing.scad>
use <polyholes.scad>
rod_distance = 45;

module x_end_base()
{
    // Main block
    height = 58;
    translate(v=[-15,-9,height/2]) cube(size = [17,39,height], center = true);
    translate([-8,-28.5,0]) cube(size = [5,1,13.5]);
    
    // Bearing holder
    vertical_bearing_base();	
    
    //Nut trap
    // Cylinder
    translate(v=[0,-17,0]) cylinder(h = 13.5, r=12.5, $fn=250);
    difference()
    {
        translate(v=[0,-17,13]) poly_cylinder(h = 3, r=12.5, $fn=25);
        translate(v=[8,-17,12]) rotate([0,0,0]) cube(size = [15,50,10], center = true);
        translate(v=[8,-24,12]) rotate([0,0,0]) cube(size = [50,15,10], center = true);
        translate(v=[0,-17, -1]) cylinder(h = 20, r = 6.7, $fn = 60);
    }
    
    
}
module reinforcement_selective_infill()
{
    rotate([90,0,-15,]) translate ([-1.5, 8, 26])linear_extrude(height = 0.2) polygon( points=[[-2,0],[0,5],[8,0]] ); 
    rotate([90,0,-50,]) translate ([8.5, 8, 1.4])linear_extrude(height = 0.2) polygon( points=[[0,0],[0,5],[12,0]] ); 
}
    
 x_end_base();
  
    
module x_end_holes()
{
    vertical_bearing_holes();
    // Belt hole
    translate(v=[-1,0,0])
    {
        // Stress relief
        difference()
        {
        
        translate(v=[-5.5-10+1.5,-10,30]) cube(size = [10,46,28], center = true);

        // Nice edges
        translate(v=[-5.5-10+1.5-5,-10,30+23]) rotate([0,20,0]) cube(size = [10,46,28], center = true);
        translate(v=[-5.5-10+1.5+5,-10,30+23]) rotate([0,-20,0]) cube(size = [10,46,28], center = true);
        translate(v=[-5.5-10+1.5,-10,30-23]) rotate([0,45,0]) cube(size = [10,46,28], center = true);
        translate(v=[-5.5-10+1.5,-10,30-23]) rotate([0,-45,0]) cube(size = [10,46,28], center = true);

        }
    }


// Bottom pushfit rod
    translate(v=[-15,-41,6]) rotate(a=[-90,0,0]) pushfit_rod(7.8,50);

// Top pushfit rod
    translate(v=[-15,-41.5,rod_distance+6]) rotate(a=[-90,0,0]) pushfit_rod(7.8,50);

// TR Nut trap
   // Hole for the nut
    //#translate(v=[0,-17, -1]) poly_cylinder(h = 9.01, r = 6.7, $fn = 60);
    translate(v=[0,-17, -1]) cylinder(h = 14.51, r = 6.7, $fn = 60);
    translate(v=[0,-17, -0.1]) cylinder(h = 1, r1 = 7.2,r2 = 6.7, $fn = 60);

// Screw holes for TR nut
    translate(v=[0,-17, 0]) rotate([0, 0, -135]) translate([0, 9.5, -4]) cylinder(h = 19, r = 1.65, $fn=50);
    translate(v=[0,-17, 0]) rotate([0, 0, -135]) translate([0, -9.5, -4]) cylinder(h = 19, r = 1.65, $fn=50);

    translate(v=[0,-17,0]) rotate([0,0,-135]) translate([0,9.5,-1]) cylinder(h=2, r1=2.2,r2=1.65, $fn=50);
    translate(v=[0,-17,0]) rotate([0,0,-135]) translate([0,-9.5,-1]) cylinder(h=2, r1=2.2,r2=1.65,, $fn=50);


// Nut traps for TR nut screws
    translate(v=[0,-17, 0]) rotate([0, 0, -135]) translate([0, 9.5, 11]) rotate([0, 0, 0])cylinder(h = 6, r = 3.15, $fn=6);

    translate(v=[0,-17, 0]) rotate([0,0,-135]) translate([0,-9.5,10]) rotate([0,0,30])cylinder(h = 3, r = 3.1, $fn=6);
    translate([-5.5,-17.2,10]) rotate([0,0,30]) cube([5,5,3]);
    translate([-0,-17.2,10]) rotate([0,0,60]) cube([5,10,3]);
    
    translate([0,0,6.5])
    difference()
    {
        translate(v=[0,-17, 0]) rotate([0,0,-135]) translate([0,-9.5,5.8]) rotate([0,0,30])cylinder(h = 1, r = 3.1, $fn=6);
        translate([-11,-12.0,4.5]) rotate([0,0,45]) cube([8,3,3]);
        translate([-6.5,-16.85,4.5]) rotate([0,0,45]) cube([8,3,3]);
    }
}


// Final prototype
module x_end_plain()
{
    difference()
    {
    union()
    {
        difference()
        {
            x_end_base();
            x_end_holes();
        }
        translate(v=[-5.8,-13.3,13.5]) rotate([0,0,45.3]) cube(size = [10,2,1], center = true);
    }
    difference()
    {
        translate(v=[0,-17, 0.3]) rotate([0,0,-135]) translate([0,-9.5,10]) rotate([0,0,30])cylinder(h = 3, r = 3.2, $fn=6);
        translate(v=[-5.8,-13.3,13.5]) rotate([0,0,45.3]) cube(size = [10,2,1], center = true);
    }
    }
    
   
    

}




module pushfit_rod(diameter,length)
{
    poly_cylinder(h = length, r=diameter/2);
    difference()
    {
        translate(v=[0,-diameter/2.85,length/2]) rotate([0,0,45]) cube(size = [diameter/2,diameter/2,length], center = true);
        translate(v=[0,-diameter/4-diameter/2-0.4,length/2]) rotate([0,0,0]) cube(size = [diameter,diameter/2,length], center = true);
    }
}

x_end_holes();