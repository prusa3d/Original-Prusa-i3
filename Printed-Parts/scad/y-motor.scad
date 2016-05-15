// PRUSA iteration3
// Y motor mount
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org

//include <configuration.scad>

module y_motor_base(){
 // Motor holding part
    translate(v = [29,-21+50,0]){
    translate(v = [-21+4.5,0,5]) cube(size = [9,31,10], center=true);
    translate(v = [-15.5,-15.5,0]) cylinder(h = 10, r=5.5, $fn=50);
    translate(v = [-15.5,+15.5,0]) cylinder(h = 10, r=5.5, $fn=50);
    translate([-21,7,0]) rotate([0,0,45]) cube([2, 2, 10]);    

    //end stop
    translate(v = [-10.5,+15.5,0]) cylinder(h = 10, r=5.5, $fn=50);
    translate([-12,0,0]) cube([7, 15, 10]);
    translate([-16,16,0]) cube([6, 5, 10]);
    translate([-21+6,8,0]) cube([12-2, 5, 28]);
    translate([-21+6-2,8-5,0]) cube([4, 10, 28]);
    translate([-21+9.5-2,7,0]) rotate([0,0,45]) cube([2, 2, 28]);    
  // Joins motor holder and rod plate
  translate(v = [-29,-21,0]) cube(size = [14,30,10]);
 }
 // Front holding part
 translate(v = [0,10,0]) cylinder(h = 10, r=8, $fn=80);
 translate(v = [0,20,5])cube(size = [16,20,10], center=true);	
 translate(v = [0,30,0])cylinder(h = 10, r=8, $fn=80);
}

module y_motor_holes(){
 translate(v = [29,-21+50,0]){
  // Screw head holes
  translate(v = [-15.5,-15.5,-1]) cylinder(h = 10, r=1.8, $fn=20);
  translate(v = [-15.5,+15.5,-1]) cylinder(h = 10, r=1.8, $fn=20);
  // Screw holes
  translate(v = [-15.5,-15.5,7]) cylinder(h = 7, r=3.5, $fn=30);
  translate(v = [-15.5,+15.5,7]) cylinder(h = 25, r=3.5, $fn=30);
 }
 translate(v = [0,10,-1]) cylinder(h = 12, r=4.1, $fn=50);	
 translate(v = [0,30,-1]) cylinder(h = 12, r=4.1, $fn=50);
 
 //endstop
    translate([25,29,0])  cylinder(h = 29, r=8, $fn=20); 
   
    #translate([18,45,15]) rotate([90,0,0]) cylinder(h = 10, r=0.8, $fn=20);
    translate([18,42.2,15]) rotate([90,0,0]) cylinder(h = 2, r1=1.2, r2=0.8, $fn=20);
 
    #translate([18,45,24.5]) rotate([90,0,0]) cylinder(h = 10, r=0.8, $fn=20);
    translate([18,42.2,24.5]) rotate([90,0,0]) cylinder(h = 2, r1=1.2, r2=0.8, $fn=20);
   
    // endstop corner cutout
    translate([-5-2,30,28]) rotate([0,45,0]) cube([15, 19, 15]);	
    translate([-1,41,10])  cube([15, 5, 19]);	
    translate([27,33,0]) rotate([0,0,45]) cube([5, 5, 28]);	
    translate([12-2,28,10.01]) rotate([0,0,45]) cube([5, 5, 28]);
    
    translate([19,32,0]) rotate([0,30,0]) cube([8, 20, 18]);	
    translate([24.5-2,32,17]) rotate([0,45,0]) cube([2, 20, 2]);	
    
    translate([23-2,32,29]) rotate([0,45,0]) cube([5, 20, 5]);	
}




//#translate([18,40,10]) cube([8, 5, 5]);	

// Final part
module y_motor(){
 difference(){
  y_motor_base();
  y_motor_holes();
 }
}

y_motor();
