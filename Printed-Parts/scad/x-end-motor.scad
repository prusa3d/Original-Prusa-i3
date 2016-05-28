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
            // Front screw hole for endstop
            translate([4.75,0,0])cylinder(r=1,h=19,$fn=20);
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
  // Motor shaft cutout
  //#translate(v=[0,0,0]) rotate(a=[0,-90,0]) rotate(a=[0,0,90]) cylinder(h = 70, r=17, $fn=6);
 }
}

// Motor shaft cutout
module x_end_motor_shaft_cutout(){
    union(){
    difference(){
        translate(v=[0,32,30]) rotate(a=[0,-90,0]) rotate(a=[0,0,90]) cylinder(h = 70, r=17, $fn=6);
       
        translate(v=[-10,-17+32,30]) cube(size = [60,2,10], center = true);
        translate(v=[-10,-8+32,-15.5+30]) rotate(a=[60,0,0]) cube(size = [60,2,10], center = true); ///
        translate(v=[-10,8+32,-15.5+30]) rotate(a=[-60,0,0]) cube(size = [60,2,10], center = true);
        
        
    }
    translate(v=[-30,25.2,-11.8 +30]) rotate(a=[0,90,0]) cylinder(h = 30, r=3, $fn=30);
    translate(v=[-30,19.05,30]) rotate(a=[0,90,0]) cylinder(h = 30, r=3.5, $fn=100);
}
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
      
      translate([-12,-42,65]) rotate([-35,0,0])  rotate([0,0,45]) cube(10,10,10);
      translate([-15,8.5,6]) rotate([90,0,0]) cylinder(h=5, r=5, $fn=30);   
      translate([-15,8.5,51]) rotate([90,0,0]) cylinder(h=5, r=5, $fn=30);   
      translate([-15,3.5,6]) rotate([90,0,0]) cylinder(h=3, r1=5, r2=4, $fn=30);   
      translate([-15,3.5,51]) rotate([90,0,0]) cylinder(h=3, r1=5, r2=4, $fn=30); 
      //#translate([-16,-40,0])cube([50,100,100]);   
 }
 
}

x_end_motor();