// PRUSA iteration3
// X end idler
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org

use <x-end.scad>

module x_end_idler_base(){
 x_end_base();
}

module x_end_idler_holes(){
 x_end_holes();
 translate([0,3.5,0]){
 translate(v=[0,-22,30.25]) rotate(a=[0,-90,0]) cylinder(h = 80, r=1.8, $fn=30);
 translate(v=[1.5,-22,30.25]) rotate(a=[0,-90,0]) cylinder(h = 10, r=3.1, $fn=30);
 translate(v=[-21.5,-22,30.25]) rotate(a=[0,-90,0]) rotate(a=[0,0,30]) cylinder(h = 80, r=3.2, $fn=6);
 }
}
 
// Final part
module x_end_idler(){
 mirror([0,1,0]) difference(){
  x_end_idler_base();
  x_end_idler_holes();
 }
}

x_end_idler();

//
//height = 53.5;
//distance = 36.5;
//#difference(){
//translate(v=[-15,9+1,height/2+2]) cube(size = [17,39,height], center = true);
//translate(v=[-15,9+1,distance/2+2+8.5]) cube(size = [18,40,distance], center = true);
//}