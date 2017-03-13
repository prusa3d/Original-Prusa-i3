// PRUSA iteration3
// X end idler
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org

use <x-end.scad>



module x_end_idler_holes(){
    x_end_holes();
    translate([0,3.5,0]){
    translate(v=[0,-22,30.25]) rotate(a=[0,-90,0]) cylinder(h = 80, r=1.8, $fn=30);
    translate(v=[1.5,-22,30.25]) rotate(a=[0,-90,0]) cylinder(h = 10, r=3.1, $fn=30);
    translate(v=[-21.5,-22,30.25]) rotate(a=[0,-90,0]) rotate(a=[0,0,30]) cylinder(h = 80, r=3.2, $fn=6);
        
 }
}


module waste_pocket(){
 // waste pocket
    translate([-15,-1,6]) rotate([90,0,0]) cylinder( h=5, r=5.5, $fn=30);     
    translate([-15,-1,51]) rotate([90,0,0]) cylinder( h=5, r=5.5, $fn=30);    
    translate([-15,-5.9,6]) rotate([90,0,0]) cylinder( h=3, r1=5.5, r2=4.3, $fn=30);     
    translate([-15,-5.9,51]) rotate([90,0,0]) cylinder( h=3, r=5.5, r2=4.3, $fn=30);      

    
    //M3 thread
    translate([-15,8.5,6]) rotate([90,0,0]) cylinder( h=12, r=1.7, $fn=30); 
    translate([-15,8.5,51]) rotate([90,0,0]) cylinder( h=12, r=1.7, $fn=30); 

    //M3 heads
    translate([-15,11.5,6]) rotate([90,0,0]) cylinder( h=4, r=3, $fn=30); 
    translate([-15,11.5,51]) rotate([90,0,0]) cylinder( h=4, r=3, $fn=30); 

    //M3 nut traps
    translate([-17.9,0.5,52-3-1.6]) cube([6,3,20]);
    translate([-17.9,0.5,-10+1.5+1.6]) cube([6,3,16]);
}


module x_end_idler_base(){
    union(){
        difference(){
            x_end_base();
            x_end_idler_holes();
        }
        translate([-15,10.5,6]) rotate([90,0,0]) cylinder( h=13, r=6, $fn=30);
        translate([-15,10.5,51]) rotate([90,0,0]) cylinder( h=13, r=6, $fn=30);
    }
}

module selective_infill()mirror([0,1,0]) translate([-50, -33, 0.6])
{ 
   difference()
    {
    union()
    {
        difference()
        {
        #translate([50,50,0.6]) rotate([0,0,90]) cylinder( h=6, r=11.7, $fn=30);//0, 17, 0.6
        #translate([50,50,-1]) rotate([0,0,90]) cylinder( h=10, r=11.5, $fn=30);
        }
        difference()
        {
        translate([50,50,0.6]) rotate([0,0,90]) cylinder( h=6, r=10.7, $fn=30); //0, 17, 0.6
        translate([50,50,-1]) rotate([0,0,90]) cylinder( h=10, r=10.5, $fn=30);
        } 
        difference()
        {
        translate([50,50,0.6]) rotate([0,0,90]) cylinder( h=6, r=9.9, $fn=30); //0, 17, 0.6
        translate([50,50,-1]) rotate([0,0,90]) cylinder( h=10, r=9.7, $fn=30);
        } 
        difference()
        {
        translate([50,50,0.6]) rotate([0,0,90]) cylinder( h=6, r=9, $fn=30); //0, 17, 0.6
        translate([50,50,-1]) rotate([0,0,90]) cylinder( h=10, r=8.8, $fn=30);
        } 
    }
    translate([57.5,50.5,-1]) rotate([0,0,45]) cube([8,10,9]);  
    translate([52,30.5,-1]) rotate([0,0,45]) cube([10,20,20]);   
    translate([32,35.5,-1]) cube([8,30,9]);  
    }
   } 
    
   
module reinforcement_selective_infill(){
    rotate([90,0,-15,]) translate ([-1.5, 8, 26])linear_extrude(height = 0.2) polygon( points=[[-2,0],[0,12],[8,0]] ); // bearings
    
    rotate([90,0,-50,]) translate ([8.5, 8, 1.4])linear_extrude(height = 0.2) polygon( points=[[0,0],[0,12],[8,0]] ); //body
    
    }
    
module x_end_idler(){
    mirror([0,1,0]) 
    difference()
    {
        x_end_idler_base();
        waste_pocket();
        selective_infill();
        reinforcement_selective_infill();
    }
}


x_end_idler();


