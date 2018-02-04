// PRUSA iteration4
// X end idler
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org

use <x-end.scad>

module x_end_idler_holes()
{
    x_end_holes();
    translate([0,3.5,0])
    {
        // pulley screw
        translate(v=[0,-19,30.25]) rotate(a=[0,-90,0]) cylinder(h = 80, r=1.5, $fn=30);
        translate(v=[-4,-19,30.25]) rotate(a=[0,-90,0]) cylinder(h = 4, r=2.8, $fn=30);
        translate(v=[-21.5,-19,30.25]) rotate(a=[0,-90,0]) rotate(a=[0,0,30]) cylinder(h = 10, r=3.2, $fn=6);
            
        // pulley side cut
        translate(v=[-9,-19,30.25]) rotate(a=[0,-90,0]) cylinder(h = 9, r=9.5, $fn=30);        
        translate([-19,-35,21.25]) cube([10,20,18]);    
        translate([-16.1,-35,21.3]) rotate([0,45,0]) cube([5,20,5]);    
        translate([-16.1,-35,39.25]) rotate([0,45,0]) cube([5,20,5]);    
    }
}


module waste_pocket()
{
    // waste pocket
    translate([-15,-1,6]) rotate([90,0,0]) cylinder( h=5, r=5, $fn=30);     
    translate([-15,-1,51]) rotate([90,0,0]) cylinder( h=5, r=5, $fn=30);    
    translate([-15,-5.9,6]) rotate([90,0,0]) cylinder( h=3, r1=5, r2=4.3, $fn=30);     
    translate([-15,-5.9,51]) rotate([90,0,0]) cylinder( h=3, r=5, r2=4.3, $fn=30);      

    // opening window
    translate([-17,-1,51]) rotate([90,0,0]) cube([4,15,4]);      
}


module x_end_idler_base()
{
    difference()
    {
        union()
        {
            x_end_base();
            difference()
            {
                translate(v=[-6,-16.5,30.25]) rotate(a=[0,-90,0]) cylinder(h = 0.5, r1=9, r2=12, $fn=30);
                translate([-25,-11.5,19]) cube([20,10,24]);
            }
        }
        x_end_idler_holes();
    }
    translate([-15,10.5,6]) rotate([90,0,0]) cylinder( h=13, r=6, $fn=30);
    translate([-15,10.5,51]) rotate([90,0,0]) cylinder( h=13, r=6, $fn=30);
    
    difference()
    {
        translate(v=[-19,-16.5,30.25]) rotate(a=[0,-90,0]) cylinder(h = 1, r1=9, r2=12, $fn=30);
        translate([-25,-11.5,19]) cube([20,10,24]);
        translate(v=[0,-15.5,30.25]) rotate(a=[0,-90,0]) cylinder(h = 80, r=1.5, $fn=30);
    }

}

module selective_infill()
mirror([0,1,0]) translate([-50, -33, 0.6])
{ 
   difference()
    {
        union()
        {
            difference()
            {
                translate([50,50,0.6]) rotate([0,0,90]) cylinder( h=6, r=11.7, $fn=30); 
                translate([50,50,-1]) rotate([0,0,90]) cylinder( h=10, r=11.5, $fn=30);
            }
            difference()
            {
                translate([50,50,0.6]) rotate([0,0,90]) cylinder( h=6, r=10.7, $fn=30); 
                translate([50,50,-1]) rotate([0,0,90]) cylinder( h=10, r=10.5, $fn=30);
            } 
            difference()
            {
                translate([50,50,0.6]) rotate([0,0,90]) cylinder( h=6, r=9.9, $fn=30); 
                translate([50,50,-1]) rotate([0,0,90]) cylinder( h=10, r=9.7, $fn=30);
            } 
            difference()
            {
                translate([50,50,0.6]) rotate([0,0,90]) cylinder( h=6, r=9, $fn=30); 
                translate([50,50,-1]) rotate([0,0,90]) cylinder( h=10, r=8.8, $fn=30);
            } 
        }
        translate([57.5,50.5,-1]) rotate([0,0,45]) cube([8,10,9]);  
        translate([52,30.5,-1]) rotate([0,0,45]) cube([10,20,20]);   
        translate([32,35.5,-1]) cube([8,30,9]);  
    }
} 
    
   
module reinforcement_selective_infill()
{
    rotate([90,0,-15,]) translate ([-1.5,8,26])linear_extrude(height = 0.2) polygon( points=[[-2,0],[0,12],[8,0]] ); // bearings
    rotate([90,0,-50,]) translate ([8.5,8,1.4])linear_extrude(height = 0.2) polygon( points=[[0,0],[0,12],[8,0]] ); //body
}
    
module x_end_idler()
{
    mirror([0,1,0]) 
    difference()
    {
        x_end_idler_base();
        waste_pocket();
        selective_infill();
        reinforcement_selective_infill();
        translate(v=[-8,-15.5,30.25]) rotate(a=[0,-90,0]) cylinder(h = 20, r=1.5, $fn=30);
        translate([-25,7.5,-1]) rotate([0,0,45])  cube([10,10,100]);
        //version
        translate([-23.7,-25,2]) rotate([90,0,90]) linear_extrude(height = 0.6) 
        { text("R1a",font = "helvetica:style=Bold", size=3, center=true); }   
    }
    
    difference()
    {
        // bearings stop
        translate([0,0,57]) rotate([0,0,90]) cylinder( h=1, r=8, $fn=30);
        translate([0,0,56.9]) rotate([0,0,90]) cylinder( h=0.5, r1=8, r2=7,$fn=30);    
        translate([0,0,56.5]) rotate([0,0,90]) cylinder( h=2, r=7, $fn=30);
        translate([0.2,-0.5,50]) rotate([0,0,40]) cube([12,1,10]);
    }
}

x_end_idler();
 
