// PRUSA iteration3
// lcd-support-B
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org

include<lcd-support-A.scad>;

//SD card cover
rotate([0,0,45]) difference(){
translate( [ -3 , 3 , 10 ] )  cube( [ 2 , 55 , 10 ] ); 
translate( [ -4 , 3 , 20 ] ) rotate([0,90,0]) cylinder( h = 4, r = 7, $fn=30); 
translate( [ -4 , 58 , 20 ] ) rotate([0,90,0]) cylinder( h = 4, r = 7, $fn=30); 
}
