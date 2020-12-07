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
        translate(v=[0,-19,30.25]) rotate(a=[0,-90,0]) cylinder(h = 80, r=1.55, $fn=50);
        translate(v=[-4,-19,30.25]) rotate(a=[0,-90,0]) cylinder(h = 4, r=3, $fn=50);

        translate(v=[-21.5,-19,30.25]) rotate([0,-90,0]){
        rotate([0,0,30])cylinder( h = 4, r = 3.1, $fn=6);  
     		}
        
      translate(v=[-24,-19,30.25]) rotate([0,-90,0]){
      rotate([0,0,30])cylinder( h = 4, r1 = 3.1, r2 = 7,  $fn=6);  
     }

      translate(v=[-4.5,-19,30.25]) rotate(a=[0,-90,0]) cylinder(h = 1, r2=3, r1=4, $fn=50);
        
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
    translate([-17,-1,-1]) rotate([90,0,0]) cube([4,15,4]);     
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
                
               translate(v=[-6.5,-21,13.5])  cube([1,12.5,42]); 
                
               translate([-24,-11.5,19]) cube([20,10,24]);
               translate(v=[-6.5,-10,55.5]) rotate([180,-45,0])  cube([1.5,19,5]);
               translate(v=[-6.5,-29,13.5]) rotate([0,45,0])  cube([1.5,19,5]);
               translate(v=[-5.5,-19,13.5]) rotate([90,0,-35])  cube([1.5,45,6]);
                
            }
            // pulley nut support
            difference() 
					{
               translate(v=[-23.5,-15.5,30.25]) rotate(a=[0,-90,0]) rotate(a=[0,0,30]) cylinder(h = 1,r1=5.5, r2=3.7, $fn=30);
		          translate([-26,-11.5,19]) cube([20,10,24]); 
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
        translate(v=[0,-15.5,30.25]) rotate(a=[0,-90,0]) cylinder(h = 80, r=1.55, $fn=30);
    }

		// nut trap print supoorts
    translate(v=[-5.8,-13.149,13.5]) rotate([0,0,45]) cube(size = [10,2.1,1], center = true);
    translate(v=[-9.8,-11,13.7]) rotate([0,0,135]) cube(size = [8,2.1,0.4], center = true);
    translate(v=[-5.2,-8,13.7]) rotate([0,0,135]) cube(size = [8,2.1,0.4], center = true);
    translate(v=[-8.8,-8.55,13.5]) rotate([0,0,45]) cube(size = [8,2.1,1], center = true);

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
    
   
 
    
module x_end_idler()
{
    mirror([0,1,0]) 
    difference()
    {
        x_end_idler_base();
        waste_pocket();

        translate(v=[-8,-15.5,30.25]) rotate(a=[0,-90,0]) cylinder(h = 20, r=1.55, $fn=30);
        translate([-25,7.5,-1]) rotate([0,0,45])  cube([10,10,100]);
    }
    
    // bearings stop
    difference()
    {
        translate([0,0,57]) rotate([0,0,90]) cylinder( h=1, r=8, $fn=30);
        translate([0,0,56.9]) rotate([0,0,90]) cylinder( h=0.5, r1=8, r2=7,$fn=30);    
        translate([0,0,56.5]) rotate([0,0,90]) cylinder( h=2, r=7, $fn=30);
        translate([0.2,-0.5,50]) rotate([0,0,40]) cube([12,1,10]);
    }
    
    // bearings spacer
    difference()
    {
        translate([0,0,26]) rotate([0,0,90]) cylinder( h=6, r=8, $fn=30);
        translate([0,0,25]) rotate([0,0,90]) cylinder( h=8, r=7.55, $fn=60);    
        translate([0,0,25.9]) rotate([0,0,90]) cylinder( h=2, r2=7.5, r1=7.7,$fn=30);    
        translate([0,0,31.4]) rotate([0,0,90]) cylinder( h=2, r1=7.5, r2=8.3,$fn=30);    
        
        rotate([0,0,310]) translate([-2.5,0,26]) cube([5,15,10]);
        rotate([0,0,310-120]) translate([-2.5,0,26]) cube([5,15,10]);
        rotate([0,0,310-240]) translate([-2.5,0,26]) cube([5,15,10]);
    }
    

    
    
}

difference()
{
    union()
    {
        x_end_idler();
        translate([-8,15,13.0]) rotate([0,0,-45.4]) cube([10,1.5,1]);
    }
    translate([-47,-40,60]) rotate([0,45,0]) cube([20,80,20]);    
    translate([-20,10.5,69]) rotate([0,45,0]) cube([20,20,20]);    
    translate([-25,37,49]) rotate([45,0,0]) cube([30,20,20]);    
}
 
