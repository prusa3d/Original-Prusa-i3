//cylinder(h=20,r=1.0,$fn = 60);

import("extruder-body.stl");
translate([0,-52,11]) rotate([180,0,0]) import("extruder-motor-plate.stl");
translate([-17,-72.5,-17]) rotate([0,180,0]) import("x-carriage.stl");

/*
#translate([0,8.5,0]) rotate([0,90,0]) rotate([0,90,90]) import("fs-cover-mmu.stl");
translate([0,20,13]) rotate([0,-90,0])rotate([0,90,90]) import("ir-sensor-holder-mmu.stl");
*/

use<fs-cover.scad>;


//#translate([0,0,0]) rotate([0,90,0]) rotate([0,90,90]) fs_cover();