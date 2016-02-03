// PRUSA iteration3
// X end prototype
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org

use <bearing.scad>
use <polyholes.scad>
rod_distance = 45;

module x_end_base(){
// Main block
height = 58;
translate(v=[-15,-9,height/2]) cube(size = [17,39,height], center = true);
// Bearing holder
 vertical_bearing_base();	
//Nut trap
 // Cube
 translate(v=[-2,-18,6]) cube(size = [15,16,12], center = true);
 // Hexagon
 //translate(v=[0,-17,0]) rotate([0,0,30]) cylinder(h = 8, r=8, $fn = 6);
}

module x_end_holes(){
 vertical_bearing_holes();
// Belt hole
translate(v=[-1,0,0]){
// Stress relief
translate(v=[-5.5-10+1.5,-10-1,30]) cube(size = [18,1,28], center = true);
difference(){
	translate(v=[-5.5-10+1.5,-10,30]) cube(size = [10,46,28], center = true);

	

	// Nice edges
	translate(v=[-5.5-10+1.5-5,-10,30+23]) rotate([0,20,0]) cube(size = [10,46,28], center = true);
	translate(v=[-5.5-10+1.5+5,-10,30+23]) rotate([0,-20,0]) cube(size = [10,46,28], center = true);
	translate(v=[-5.5-10+1.5,-10,30-23]) rotate([0,45,0]) cube(size = [10,46,28], center = true);
	translate(v=[-5.5-10+1.5,-10,30-23]) rotate([0,-45,0]) cube(size = [10,46,28], center = true);

}
}

// Bottom pushfit rod
translate(v=[-15,-41.5,6]) rotate(a=[-90,0,0]) pushfit_rod(7.8,50);
// Top pushfit rod
translate(v=[-15,-41.5,rod_distance+6]) rotate(a=[-90,0,0]) pushfit_rod(7.8,50);
// Nut trap
 translate(v=[0,-17,-0.5]) poly_cylinder(h = 6, r=2.6, $fn=25);
    translate(v=[0,-17,8.5]) poly_cylinder(h = 4, r=2.6, $fn=25);
 translate(v=[2,-17,5.8]) cube([5+8.15,8.15,4.5], center=true);
translate(v=[5.6,-27,5.8]) rotate([0,0,45]) cube([5,5,13], center=true);
}


// Final prototype
module x_end_plain(){
 difference(){
  x_end_base();
  x_end_holes();
 }
}

x_end_plain();


module pushfit_rod(diameter,length){
 poly_cylinder(h = length, r=diameter/2);
 difference(){
 	translate(v=[0,-diameter/2.85,length/2]) rotate([0,0,45]) cube(size = [diameter/2,diameter/2,length], center = true);
 	translate(v=[0,-diameter/4-diameter/2-0.4,length/2]) rotate([0,0,0]) cube(size = [diameter,diameter/2,length], center = true);
 }
 //translate(v=[0,-diameter/2-2,length/2]) cube(size = [diameter,1,length], center = true);
}

