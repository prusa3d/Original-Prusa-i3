// PRUSA iteration3
// X end motor
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org

use <x-end.scad>

module x_end_motor_base(){
 x_end_base();
 translate(v=[-15,31,26.5]) cube(size = [17,44,53], center = true);
}

module x_end_motor_endstop_base(){
    translate([-23.5,-28.5,58]){
        difference(){
            // Base block
            cube([17,18.2,4]);
            // Nice edge
            translate([-1,10,10])rotate([-45,0,0])cube(20,20,20);
            } 
        }
}

module x_end_motor_endstop_holes(){
    translate([-23.5,-28.5,58]){
        translate([17/2,7.5,-3]){
            // Back screw hole for endstop
            translate([-4.75,0,0])cylinder(r=1,h=19,$fn=20);
            translate([-4.75,0,6])cylinder(r1=1, r2=1.5, h=2,$fn=20);
            // Front screw hole for endstop
            translate([4.75,0,0])cylinder(r=1,h=19,$fn=20);
            translate([4.75,0,6])cylinder(r1=1, r2=1.5, h=2,$fn=20);
            }
        }
}



module x_end_motor_holes(){
 x_end_holes();
 // Position to place
 translate(v=[-1,32,30.25]){
  // Belt hole
  translate(v=[-14,1,0]) cube(size = [10,46,22], center = true);
  // Motor mounting holes
  translate(v=[20,-15.5,-15.5]) rotate(a=[0,-90,0]) rotate(a=[0,0,90]) cylinder(h = 70, r=1.8, $fn=30);
  translate(v=[1,-15.5,-15.5]) rotate(a=[0,-90,0]) rotate(a=[0,0,90]) cylinder(h = 10, r=3.1, $fn=30);
  translate(v=[20,-15.5,15.5]) rotate(a=[0,-90,0]) rotate(a=[0,0,90]) cylinder(h = 70, r=1.8, $fn=30);
  translate(v=[1,-15.5,15.5]) rotate(a=[0,-90,0]) rotate(a=[0,0,90]) cylinder(h = 10, r=3.1, $fn=30);
  translate(v=[20,15.5,-15.5]) rotate(a=[0,-90,0]) rotate(a=[0,0,90]) cylinder(h = 70, r=1.8, $fn=30);
  translate(v=[1,15.5,-15.5]) rotate(a=[0,-90,0]) rotate(a=[0,0,90]) cylinder(h = 10, r=3.1, $fn=30);
  translate(v=[20,15.5,15.5]) rotate(a=[0,-90,0]) rotate(a=[0,0,90]) cylinder(h = 70, r=1.8, $fn=30);
  translate(v=[1,15.5,15.5]) rotate(a=[0,-90,0]) rotate(a=[0,0,90]) cylinder(h = 10, r=3.1, $fn=30);

  // Material saving cutout 
  translate(v=[-10,12,10]) cube(size = [60,42,42], center = true);

  // Material saving cutout
  translate(v=[-10,40,-30]) rotate(a=[45,0,0])  cube(size = [60,42,42], center = true);
  
 }
}

// Motor shaft cutout
module x_end_motor_shaft_cutout(){
    union(){
    difference(){
        translate(v=[0,32,30]) rotate(a=[0,-90,0]) rotate(a=[0,0,90]) cylinder(h = 70, r=17, $fn=6);
       
        translate(v=[-10,-17+32,30]) cube(size = [60,2,10], center = true);
        translate(v=[-10,-8+32,-15.5+30]) rotate(a=[60,0,0]) cube(size = [60,2,10], center = true); 
        translate(v=[-10,8+32,-15.5+30]) rotate(a=[-60,0,0]) cube(size = [60,2,10], center = true);
        
        
    }
    translate(v=[-30,25.2,-11.8 +30]) rotate(a=[0,90,0]) cylinder(h = 30, r=3, $fn=30);
    translate(v=[-30,19.05,30]) rotate(a=[0,90,0]) cylinder(h = 30, r=3.5, $fn=100);
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
        translate([50,50,0.6]) rotate([0,0,90]) cylinder( h=6, r=11.7, $fn=30);//0, 17, 0.6
        translate([50,50,-1]) rotate([0,0,90]) cylinder( h=10, r=11.5, $fn=30);
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
    translate([57.5,50.5,-1]) rotate([0,0,45]) cube([8,10,9]); // front
    translate([52,30.5,-1]) rotate([0,0,45]) cube([10,20,20]);  // front angled
    translate([32,35.5,-1]) cube([8,30,9]); // inner horizontal
    }
   } 
   
 module reinforcement_selective_infill()
   {
    rotate([90,0,-15,]) translate ([-1.5, 8, 26])linear_extrude(height = 0.2) polygon( points=[[-2,0],[0,12],[8,0]] ); //bearings
    
    rotate([90,0,-50,]) translate ([8.5, 8, 1.4])linear_extrude(height = 0.2) polygon( points=[[0,0],[0,12],[8,0]] ); //body
    
    }
    
   
// Final part
module x_end_motor(){
 difference(){
     union(){
            x_end_motor_base();
            x_end_motor_endstop_base();
            
         }
  x_end_motor_shaft_cutout();
  x_end_motor_holes();
  x_end_motor_endstop_holes();      
  selective_infill();
  reinforcement_selective_infill();
         
      translate([-12,-42,65]) rotate([-35,0,0])  rotate([0,0,45]) cube(10,10,10);
      translate([-15,8.5,6]) rotate([90,0,0]) cylinder(h=5, r=5, $fn=30);   
      translate([-15,8.5,51]) rotate([90,0,0]) cylinder(h=5, r=5, $fn=30);   
      translate([-15,3.5,6]) rotate([90,0,0]) cylinder(h=3, r1=5, r2=4, $fn=30);   
      translate([-15,3.5,51]) rotate([90,0,0]) cylinder(h=3, r1=5, r2=4, $fn=30); 
 }
}

x_end_motor();










