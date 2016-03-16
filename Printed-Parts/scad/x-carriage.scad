// PRUSA iteration3
// X carriage
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org

use <bearing.scad>

module x_carriage_base(){
 // Small bearing holder
 translate([-33/2,0,0]) rotate([0,0,90]) horizontal_bearing_base(1);
 // Long bearing holder
 translate([-33/2,45,0]) rotate([0,0,90]) horizontal_bearing_base(2);
 // Base plate
 translate([-33,-12.5,0]) cube([33,69,7]);

 // Belt holder base
 translate([-42.5,20,0]) cube([52,16,7]);
 translate([-16.5-12,24.5,0])cylinder(r=4.5, h=15, $fn=25);
 translate([-16.5+12,24.5,0])cylinder(r=4.5, h=15, $fn=25); 
 
  // Endstop trigger nipple
  scale([1.6,1.1,1])translate([1.5,-11.5,0])rotate([0,0,90])cylinder(r=5, h=12, $fn=6);  
    
    // Belt Insert R
    difference(){
    union(){
    translate([2,27,0]) cube([10,6,15]);
 translate([2,27-2.3-4.5,0]) cube([10,4.5,15]);
 translate([-0.5,27,0]) cube([8,7,2]);
    }
    translate([-3,25,5.5]) rotate([0,0,-40]) cube([5,5.5,10]);
}
    
 // Belt Insert L
difference(){
    union(){
 translate([-33,3,00]){scale([-1,1,1]){
 translate([0,27,0]) cube([12.5,3,15]);
 translate([2,27-7.5-2.3,0]) cube([12.5,7.5,15]);
 translate([-0.5,27,0]) cube([8,7,2]);
 }}
 
 }
 
 translate([-36.5,27.7,5.5]) rotate([0,0,-55]) cube([5,5.5,10]);
 
 }
    
}

module x_carriage_beltcut(){


}

module x_carriage_holes(){
 // Small bearing holder holes cutter
 translate([-33/2,0,0]) rotate([0,0,90]) horizontal_bearing_holes(1);
 // Long bearing holder holes cutter
 translate([-33/2,45,0]) rotate([0,0,90]) horizontal_bearing_holes(2);
  // Extruder mounting holes
  translate([-16.5+12,24.5,-1])cylinder(r=1.7, h=20, $fn=25);
  translate([-16.5+12,24.5,12])cylinder(r=5.8/2, h=20, $fn=25); 
  translate([-16.5-12,24.5,-1])cylinder(r=1.7, h=20, $fn=25);
  translate([-16.5-12,24.5,12])cylinder(r=5.8/2, h=20, $fn=25); 
   
  // Carriage alignment
  // translate([-33,24.5-6-0.25,-0.01])cube([33,3.5,1.25]); 
   
  // Cables keepout
  translate([-12,-18.1,-1])cube([10,6,30]);  
  translate([-27,-12.5,0])cube([25,0.5,12]);
   
    
  // Carriage slimer
    translate([-55.5+3,19,-1])cube([10,40,30]);
    translate([+12.5-3,19,-1])cube([10,40,30]);
    
    translate([+12.5-3.5-2,19,-1])rotate([0,90-65,0])cube([10,40,30]);
    translate([-55.5+6.7+2,19,-10])rotate([0,-90+65,0])cube([10,40,30]);
  // Filament hole
   translate([-33/2,-10,1])rotate([0,0,90])cylinder(r=1.52, h=20, $fn=10); 
   
}

module x_carriage_fancy(){
 // Top right corner
 translate([13.5,-5,0]) translate([0,45+11.5,-1]) rotate([0,0,45]) translate([0,-15,0]) cube([30,30,20]);
 // Belt Smooth insert
 translate([0,36.5,23.5]) rotate([45,0,0]) translate([0,-15,0]) cube([20,10,10]);
 translate([-52.9,36.5+3,23.5]) rotate([45,0,0]) translate([0,-15,0]) cube([20,10,10]);   
    
 // Bottom ĺeft corner
 translate([-33,5,0]) translate([0,-11.5,-1]) rotate([0,0,-135]) translate([0,-15,0]) cube([30,30,20]);
 // Top left corner
 translate([-33-13.5,-5,0]) translate([0,45+11.5,-1]) rotate([0,0,135]) translate([0,-15,0]) cube([30,30,20]);	
}

// Final part
module x_carriage(){
 difference(){
   
  x_carriage_base();
 
  x_carriage_beltcut();
  x_carriage_holes();
  x_carriage_fancy();
     
 }
}


x_carriage();

