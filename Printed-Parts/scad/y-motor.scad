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
  translate(v = [-15.5,+15.5,7]) cylinder(h = 7, r=3.5, $fn=30);
 }
 translate(v = [0,10,-1]) cylinder(h = 12, r=4.1, $fn=50);	
 translate(v = [0,30,-1]) cylinder(h = 12, r=4.1, $fn=50);
}

// Final part
module y_motor(){
 difference(){
  y_motor_base();
  y_motor_holes();
 }
}

y_motor();
