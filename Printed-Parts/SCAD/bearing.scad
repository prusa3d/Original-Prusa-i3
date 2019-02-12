// PRUSA iteration3
// Bearing holders
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org

use <polyholes.scad>

bearing_diameter = 14.95;

module horizontal_bearing_base(bearings=1){
 translate(v=[0,0,6]) cube(size = [24,8+bearings*25,12], center = true);	
}

module horizontal_bearing_holes(bearings=1){
 cutter_lenght = 10+bearings*25;
 one_holder_lenght = 8+25;
 holder_lenght = 8+bearings*25;
 
 // Main bearing cut
 difference(){
  translate(v=[0,0,12]) rotate(a=[90,0,0]) translate(v=[0,0,-cutter_lenght/2]) cylinder(h = cutter_lenght, r=(bearing_diameter/2)+0.2, $fn=50);
  // Bearing retainers
  translate(v=[0,1-holder_lenght/2,3]) cube(size = [24,6,8], center = true);
  translate(v=[0,-1+holder_lenght/2,3]) cube(size = [24,6,8], center = true);
 }
 
 // Ziptie cutouts
 ziptie_cut_ofset = 0;
 for ( i = [0 : bearings-1] ){
  // For easier positioning I move them by half of one 
  // bearing holder then add each bearign lenght and then center again
  translate(v=[0,-holder_lenght/2,0]) translate(v=[0,one_holder_lenght/2+i*25,0]) difference(){
   union(){
    translate(v=[0,2-8.5,12]) rotate(a=[90,0,0]) translate(v=[0,0,0]) cylinder(h = 4, r=11.5, $fn=50);
    translate(v=[0,2+8.5,12]) rotate(a=[90,0,0]) translate(v=[0,0,0]) cylinder(h = 4, r=11.5, $fn=50);
   }
   translate(v=[0,12,12]) rotate(a=[90,0,0]) translate(v=[0,0,0]) cylinder(h = 24, r=9, $fn=50);
  }
 }
 
}
 
module horizontal_bearing_holes_nozip(bearings=1){
 cutter_lenght = 10+bearings*25;
 one_holder_lenght = 8+25;
 holder_lenght = 8+bearings*25;
 
 // Main bearing cut
 difference(){
  translate(v=[0,0,12]) rotate(a=[90,0,0]) translate(v=[0,0,-cutter_lenght/2]) cylinder(h = cutter_lenght, r=(bearing_diameter/2)+0.2, $fn=50);
  // Bearing retainers
  translate(v=[0,1-holder_lenght/2,3]) cube(size = [24,6,8], center = true);
  translate(v=[0,-1+holder_lenght/2,3]) cube(size = [24,6,8], center = true);
 }
 
}


thinwall = 3;
bearing_size = bearing_diameter + 2 * thinwall;

module vertical_bearing_base(){
 translate(v=[-2-bearing_size/4,0,29]) cube(size = [4+bearing_size/2,bearing_size,58], center = true);
 cylinder(h = 58, r=bearing_size/2, $fn = 90);
}

module vertical_bearing_holes(){
  translate(v=[0,0,-1]) poly_cylinder(h = 62, r=(14.80/2));
  translate(v=[0,0,-0.1]) cylinder(r1=(bearing_diameter/2)+0.7,r2=(bearing_diameter/2), h=0.5);
  rotate(a=[0,0,-40]) translate(v=[bearing_diameter/2-2.9,-0.5,0.5]) cube(size = [thinwall*2,1,62]);

}

//difference(){
//vertical_bearing_base();
vertical_bearing_holes();
//}
//horizontal_bearing_test();
//horizontal_bearing_base(1);
//horizontal_bearing_holes(1);
//horizontal_bearing_holes_nozip(1);