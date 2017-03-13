// PRUSA iteration3
// Extruder cover
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org

use <extruder-main.scad>

module ext_cover(){
    difference(){
    extruder_cover();
    extruder_mount_holes();


    // Easy assembly trim
    translate([5,56,29.3])rotate([0,0,0])cylinder(r1=1.5, r2=1.9, h=1, $fn=20);
    cube([50,50,15.2]);
    translate([-1,-10+0.2,0])cube([50,10,40]);
}
}

ext_cover();