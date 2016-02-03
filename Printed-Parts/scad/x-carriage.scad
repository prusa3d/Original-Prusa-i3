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
 translate([-33,-11.5,0]) cube([33,68,7]);
 // Belt holder base
 translate([-33,20,0]) cube([33,16,17]);
 // Belt diverter R
 translate([7.5,27,0]) cube([5,7,17]);
 translate([-0.5,27,0]) cube([8,7,2]);
 translate([4,33,0]) rotate([0,0,-45]) cube([5,5,10]);
    
 // Belt diverter L
 translate([-33,3,00]){scale([-1,1,1]){
 translate([7.5,27,0]) cube([5,4,17]);
 translate([-0.5,27,0]) cube([8,7,2]);
 translate([4,33,0]) rotate([0,0,-45]) cube([5,5,10]);
 }}
    
}

module x_carriage_beltcut(){
 // Cut in the middle for belt
 translate([-2.5-16.5+1,19,7]) cube([4.5,13,15]);
 // Cut clearing space for the belt
 translate([-38,5,7]) cube([40,13,15]);
 // Belt slit
 translate([-37,21.5+10,6]) cube([41,0.6,15]);
 // Smooth entrance
 translate([-40,21.5+10,14]) rotate([45,0,0]) cube([42,15,15]);
 // Teeth cuts
 for ( i = [0 : 17] ){
  translate([0-i*2,21.5+8.5,6]) cube([1.1,2,15]);
 }
}

module x_carriage_holes(){
 // Small bearing holder holes cutter
 translate([-33/2,0,0]) rotate([0,0,90]) horizontal_bearing_holes(1);
 // Long bearing holder holes cutter
 translate([-33/2,45,0]) rotate([0,0,90]) horizontal_bearing_holes(2);
  // Extruder mounting holes
  translate([-16.5+12,24.5,-1])cylinder(r=1.7, h=20, $fn=25);
  translate([-16.5+12,24.5,10])cylinder(r=3.2, h=20, $fn=6); 
  translate([-16.5-12,24.5,-1])cylinder(r=1.7, h=20, $fn=25);
  translate([-16.5-12,24.5,10])cylinder(r=3.2, h=20, $fn=6); 
   
  // Carriage alignment
  // translate([-33,24.5-6-0.25,-0.01])cube([33,3.5,1.25]); 
}

module x_carriage_fancy(){
 // Top right corner
 translate([13.5,-5,0]) translate([0,45+11.5,-1]) rotate([0,0,45]) translate([0,-15,0]) cube([30,30,20]);
 // Bottom right corner
 translate([0,5,0]) translate([0,-11.5,-1]) rotate([0,0,-45]) translate([0,-15,0]) cube([30,30,20]);
 // Bottom ĺeft corner
 //translate([-33,5,0]) translate([0,-11.5,-1]) rotate([0,0,-135]) translate([0,-15,0]) cube([30,30,20]);
 // Top left corner
 translate([-33-13.5,-5,0]) translate([0,45+11.5,-1]) rotate([0,0,135]) translate([0,-15,0]) cube([30,30,20]);	
}

// Final part
module x_carriage(){
 difference(){
     union(){
  x_carriage_base();
     translate([-34+4,-11,0])rotate([0,0,90])cylinder(r=5, h=12, $fn=6); 
         
          translate([-34+4,-12-3.5,0])rotate([0,0,90])cylinder(r=5, h=12, $fn=6);
         
         //translate([-36,-15.5,0])cube([12,4.5,12]);
     }
  x_carriage_beltcut();
  x_carriage_holes();
  x_carriage_fancy();
     
     
     translate([-34+4,-12-3.5,-1])rotate([0,0,0])cylinder(r=1.6, h=15, $fn=15); 
   
  translate([-34+4,-12-3.5,-1])rotate([0,0,90])cylinder(r=3.25, h=7, $fn=6);  
     
     
 }
}

difference(){
union(){
difference(){
x_carriage();
    
    translate([-35,14,13.5])cube([40,15,20]);
    
}

translate([-11.5-3,20,7])cube([4.7,9,15]);

}


//translate([-15.5-2,25,21-3])rotate([0,90,0])cylinder(r=3.25, h=5, $fn=6); 
translate([-40,21.5+10,18]) rotate([45,0,0]) cube([42,15,15]);
translate([-40,21.5-4,18]) rotate([45,0,0]) cube([42,15,15]);
translate([-15.5,25,21-3])rotate([0,90,0])cylinder(r=1.6, h=15, $fn=15); 

}
